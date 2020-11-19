;{ "hamurabi.pb" v1.0.0 | 2020/11/21 | PureBASIC 5.72 |       by Tristano Ajmone
; ******************************************************************************
; *                                                                            *
; *                      HAMURABI, by David H. Ahl (1978)                      *
; *                                                                            *
; *             Ported to PureBASIC by Tristano Ajmone, Nov. 2020              *
; *                                                                            *
; *                       Released under the MIT License                       *
; *                                                                            *
; ******************************************************************************

; This is the PureBASIC port of the "HAMURABI.BAS" game, written by David H. Ahl
; in Microsoft BASIC and published in his book "BASIC Computer Games" (1978).

; This version takes advantage of PureBASIC's power to re-implement the original
; game in a modern fashion, but all text and game mechanics are faithful to the
; original, including typos which I choose to preserve as they were.

;}------------------------------------------------------------------------------

Declare AskPlayer(qText.s, max_val, *invalid_answer_proc)
Declare GameOver(exit_code = 0)
Declare Impeachment()
Declare StarvationImpeachment()
Declare StewardResigns()
Declare WarnAcresLimit()
Declare WarnBushelsLimit()
Declare WarnPeopleLimit()

OpenConsole("HAMURABI", #PB_Ascii)

;- Game Banner
PrintN(Space(32) + ~"HAMURABI\n" +
       Space(15) + ~"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY\n\n\n" +
       ~"TRY YOUR HAND AT GOVERNING ANCIENT SUMERIA\n" +
       ~"FOR A TEN-YEAR TERM OF OFFICE.\n")


;- /// INITIALIZE
#Harv0 = 3000  ; Year 0 harvest (game-start balancing factor, change to tune).

plague = #False            ; No plague during year 1.
deaths   =    0            ; Total deaths by starvation during whole game.
starved  =    0            ; People starved during year 0.
starvedP =    0            ; Starved percentage (cumulative average).
people   =   95            ; Current population.
births   =    5            ; People born during year 0.
harvestF =    3            ; Harvesting factor (bushels x acre) of year 0.
bushels  = 2800            ; Total bushes in store.
ratsE = #Harv0 - bushels   ; Bushels eaten by rats during year 0.
acres = #Harv0 / harvestF  ; Owned land (3000/3 = 1000).


For year = 1 To 10 ;- /// YEAR LOOP

  ;- News Report
  people +births
  PrintN(~"\n\nHAMURABI:  I BEG TO REPORT TO YOU,\n" +
         ~"IN YEAR " + Str(year) + ", " +
         Str(starved) + " PEOPLE STARVED, " +
         Str(births) + " CAME TO THE CITY,")

  If plague ;- Plague Event
    people = Int(people / 2)
    PrintN("A HORRIBLE PLAGUE STRUCK!  HALF THE PEOPLE DIED.")
  EndIf

  ;- Stats Report
  PrintN("POPULATION IS NOW " + Str(people) +
         ~"\nTHE CITY NOW OWNS " + Str(acres) + ~" ACRES.\n" +
         "YOU HARVESTED " + Str(harvestF) + ~" BUSHELS PER ACRE.\n" +
         "THE RATS ATE " + Str(ratsE) + ~" BUSHELS\n" +
         "YOU NOW HAVE " + Str(bushels) + ~" BUSHELS IN STORE.\n")

  ;- Ask: Buy Land?
  land_value = Random(26, 17)
  PrintN("LAND IS TRADING AT " + Str(land_value) + " BUSHELS PER ACRE.")
  #Buy$ = "HOW MANY ACRES DO YOU WISH TO BUY?"
  bought = AskPlayer(#Buy$, Int(bushels/land_value), @WarnBushelsLimit())
  If bought
    acres + bought
    bushels - land_value * bought
  Else ; Can't both buy and sell in a same turn!

    ;- Ask: Sell Land?
    #Sell$ = "HOW MANY ACRES DO YOU WISH TO SELL?"
    acres_sold = AskPlayer(#Sell$, acres - 1, @WarnAcresLimit())
    acres - acres_sold
    bushels + acres_sold * land_value
  EndIf
  PrintN(#Empty$)

  ;- Ask: Feed People?
  #Feed$ = "HOW MANY BUSHELS DO YOU WISH TO FEED YOUR PEOPLE?"
  bsh_fed = AskPlayer(#Feed$, bushels, @WarnBushelsLimit())
  bushels - bsh_fed
  PrintN(#Empty$)

  ;- Ask: Plant Land?
  #Plant$ = "HOW MANY ACRES DO YOU WISH TO PLANT WITH SEED?"
  Repeat
    planted = AskPlayer(#Plant$, acres, @WarnAcresLimit())
    If planted > bushels * 2      ; Req. half bushel per acre.
      WarnBushelsLimit()
    ElseIf planted > people * 10  ; Req. labor 10 people per acre.
      WarnPeopleLimit()
    Else
      Break
    EndIf
  ForEver
  bushels - Int(planted/2)

  ;- Harvest Factor
  harvestF = Random(5, 1)

  ;- Rats Factor
  ratsF = Random(5, 1)
  If Not (ratsF % 2) ; 40% chance!
    ratsE = Int(bushels/ratsF) ; May eat either 1/2 or 1/4.
  Else
    ratsE = 0
  EndIf

  bushels - ratsE + planted * harvestF

  ;- Birth Factor
  birthF = Random(5, 1)
  births = Int(birthF * (20 * acres + bushels) / people / 100 + 1)

  ;- People Fed
  people_fed = Int(bsh_fed/20) ; Each person needs 20 bushels/year.

  ;- Plague Factor
  If Random(20, 1) <= 3 ; 15% chance!
    plague = #True
  Else
    plague = #False
  EndIf

  ;- Starvation
  If people <= people_fed
    starved  = 0
  Else
    starved = people - people_fed
    If starved > 0.45 * people
      StarvationImpeachment()
    EndIf
    starvedP = ((year - 1) * starvedP + starved * 100 / people) / year
    people = people_fed
    deaths + starved
  EndIf

Next

;- /// FINAL ASSESSMENT
acresPP = acres / people ; acres per person
PrintN(~"\nIN YOUR 10-YEAR TERM OF OFFICE, " + Str(starvedP) + ~" PERCENT OF THE\n" +
       ~"POPULATION STARVED PER YEAR ON THE AVERAGE, I.E. A TOTAL OF\n" +
       Str(deaths) + ~" PEOPLE DIED!!\n" +
       ~"YOU STARTED WITH 10 ACRES PER PERSON AND ENDED WITH\n" +
       Str(acresPP) + ~" ACRES PER PERSON.\n")

If starvedP > 33 Or acresPP < 7
  ;- Outcome Impeachment
  Impeachment()
ElseIf starvedP > 10 Or acresPP < 9
  ;- Outcome Heavy-Handed
  PrintN(~"YOUR HEAVY-HANDED PERFORMANCE SMACKS OF NERO AND IVAN IV.\n" +
         ~"THE PEOPLE (REMIANING) FIND YOU AN UNPLEASANT RULER, AND,\n" +
         "FRANKLY, HATE YOUR GUTS!!")
  GameOver()
ElseIf starvedP > 3 Or acresPP < 10
  ;- Outcome Not Bad
  haters = Int(people * 0.8 * Random(1))
  PrintN(~"YOUR PERFORMANCE COULD HAVE BEEN SOMEWHAT BETTER, BUT\n" +
         "REALLY WASN'T TOO BAD AT ALL. " + Str(haters) + ~" PEOPLE\n" +
         ~"WOULD DEARLY LIKE TO SEE YOU ASSASSINATED BUT WE ALL HAVE OUR\n" +
         "TRIVIAL PROBLEMS.")
  GameOver()
Else
  ;- Outcome Fantastic
  PrintN(~"A FANTASTIC PERFORMANCE!!!  CHARLEMANGE, DISRAELI, AND\n" +
         "JEFFERSON COMBINED COULD NOT HAVE DONE BETTER!")
  GameOver()
EndIf

; ------------------------------------------------------------------------------

;- /// PROCEDURES DEFINITIONS

Procedure AskPlayer(qText.s, max_val, *invalid_answer_proc)
  Repeat
    Print(qText + " ")
    answer = Val(Input())
    If answer < 0
      StewardResigns()
    ElseIf answer <= max_val
      ProcedureReturn answer
    EndIf
    CallCFunctionFast(*invalid_answer_proc)
  ForEver
EndProcedure

Procedure GameOver(exit_code = 0)
  PrintN(Chr(7)) ; Sound bell!
  PrintN("SO LONG FOR NOW.")
  Input()
  End exit_code
EndProcedure

Procedure Impeachment()
  PrintN(~"DUE TO THIS EXTREME MISMANAGEMENT YOU HAVE NOT ONLY\n" +
         ~"BEEN IMPEACHED AND THROWN OUT OF OFFICE BUT YOU HAVE\n" +
         "ALSO BEEN DECLARED NATIONAL FINK!!!!")
  GameOver(1)
EndProcedure

Procedure StarvationImpeachment()
  Shared starved
  PrintN("YOU STARVED " + Str(starved) + " PEOPLE IN ONE YEAR!!!")
  Impeachment()
EndProcedure

Procedure StewardResigns()
  PrintN(~"\nHAMURABI:  I CANNOT DO WHAT YOU WISH.\n" +
         "GET YOURSELF ANOTHER STEWARD!!!!!")
  GameOver(1)
EndProcedure

Procedure WarnAcresLimit()
  Shared acres
  PrintN("HAMURABI:  THINK AGAIN.  YOU OWN ONLY " + Str(acres) +
         " ACRES.  NOW THEN,")
EndProcedure

Procedure WarnBushelsLimit()
  Shared bushels
  PrintN(~"HAMURABI:  THINK AGAIN.  YOU HAVE ONLY\n" +
         Str(bushels) + " BUSHELS OF GRAIN.  NOW THEN,")
EndProcedure

Procedure WarnPeopleLimit()
  Shared people
  PrintN("BUT YOU HAVE ONLY " + Str(people) +
         " PEOPLE TO TEND THE FIELDS!  NOW THEN,")
EndProcedure
