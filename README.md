# The Hamurabi Collection

- https://github.com/tajmone/hamurabi-collection

[David H. Ahl]‘s _[Hamurabi]_ video game (1978) ported to various other languages.

Project created and maintained by [Tristano Ajmone], Nov. 2020.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Project Contents](#project-contents)
- [About This Project](#about-this-project)
- [About the Hamurabi Game](#about-the-hamurabi-game)
- [License](#license)
- [Credits](#credits)
- [Acknowledgments](#acknowledgments)
- [External Links](#external-links)

<!-- /MarkdownTOC -->

-----

# Project Contents

- [`1978/`][1978/]
    + [`PureBasic/`][PureBasic/] — PureBASIC implementation.
    + [`hamurabi.bas`][hamurabi.bas] — original listing from 1978.


# About This Project

The goal of this repository is to collect re-adaptations in modern programming languages of the original [`hamurabi.bas` game listing][hamurabi 1978], written by [David H. Ahl] in [Microsoft BASIC] and published  in his book _[BASIC Computer Games]_ (1978).
The original source listing has been reproduced in this repository with its author's permission:

- [`1978/hamurabi.bas`][hamurabi.bas]

There is a plethora of implementations of the _Hamurabi_ game to be found on the Internet and on GitHub, and I'd like to gather under this project those which were released under open source licenses, along with my own ports of the game to languages that I master or which I'm learning.

If you've never played _Hamurabi_ before, you might do so at the following link:

- [Internet Archive » Hamurabi] — playable in the browser via [DOSBox].


# About the Hamurabi Game

Here's a quick timeline of the history behind the _Hamurabi_ game:

- __1964__: _[The Sumerian Game]_ by Mabel Addis and William McKay —
Written in [Fortran] on the [IBM 7090] mainframe, as an educational tool for sixth-grade students, in a joint effort project between [BOCES] and IBM in the state of New York.
No known copies of this original version are known to survive.
- __1968__: _King of Sumeria_ by Doug Dyment —
Written in [FOCAL] on the [DEC PDP-8] minicomputer, as a demo game for the newly developed language by [Digital Equipment Corporation] (DEC), for which Dyment worked.
Although heavily inspired by the original _[The Sumerian Game]_, this was a total rewrite of the game, and a trimmed down version due to the 4K memory constraints of the [DEC PDP-8].
It was Doug Dyment that introduced [king Hammurabi] into the game, misspelled as "Hamurabi", and despite the fact that he had been a Babylonian sovereign rather than Sumerian.
- __1973__: _Hamurabi_ by [David H. Ahl] —
This first version of _Hamurabi_ was written in the BASIC language available on [DEC]'s minicomputers and included in the _[101 Basic Computer Games]_ book, published by [DEC].
The code was ported to BASIC from the FOCAL version by Doug Dyment, but Ahl also improved the game by enriching its text, adding the end-game assessment, and some other personal touches.
- __1978__: _Hamurabi_ by [David H. Ahl] —
In 1974 Ahl had left [DEC] and founded _[Creative Computing]_ magazine.
Having acquired the rights to the 1973 book, he went on to create a new edition targeting microcomputers, and ported all the games listing to [Microsoft BASIC].
The 1978 edition of _[BASIC Computer Games]_ was the first computer book that sold over a million copies, which is what made the 1978 _Hamurabi_ listing the most popular and far-reaching version of _The Sumerian Game_ variants, for it could be run on a vast number of computers, either out of the box or with minor code adaptations.

The above timeline is somewhat reductive, omitting a number of intermediate re-adaptations and publications; but it does cover the milestones that lead from Addis' and McKay's _[The Sumerian Game]_ to the famous 1978 _Hamurabi_ version in [Microsoft BASIC], by [David H. Ahl], which has undoubtedly been the most famous variant of the game, still being played to this very day, and which has been ported to many other programming languages, as well as translated to countless foreign languages, and re-adapted in many creative ways.

For more details on the history behind the _Hamurabi_ game, please refer to the following articles:

- _[The Sumerian Game: The Most Important Video Game You've Never Heard Of]_ — by Kate Willaert.
- [Wikipedia » The Sumerian Game][The Sumerian Game]
- [Wikipedia » Hamurabi (video game)][Hamurabi]

# License

Each re-implementation of the _Hamurabi_ game in this project comes with its own license, as specified in its containing folder documentation and license file.

The original [`hamurabi.bas`][hamurabi.bas] source file was reproduced with the explicit permission of [David H. Ahl], and it can't be used in any commercial project.

If in doubt, contact directly the author of the implementation you'd like to reuse.

# Credits

I would like to thank [David H. Ahl] for granting me permission to reproduce the original [`hamurabi.bas`][hamurabi.bas] listing from his _[BASIC Computer Games]_ (1978) book.

The [`hamurabi.bas`][hamurabi.bas] file in this repository is based on the version taken from the [Vintage BASIC] website, which I slightly tweaked to ensure it fully mirrored the original listing:

- http://vintage-basic.net/bcg/hammurabi.bas

For comparisons of the original listing and other references, I've relied on the digital scans of the 1978 edition of _[BASIC Computer Games]_ provided by:

- [The ATARI Archives][BCC-78 ATARI Arc]
- [The Internet Archive][BCC-78 Web Arc]


# Acknowledgments

I'm greatly indebted with [David H. Ahl] for having written the _Hamurabi_ game and published it in his _[BASIC Computer Games]_ book.

As far as I can recall, _Hamurabi_ was the first video game that I played on my first home computer, a Texas Instruments [TI-99/4A], back in 1981.
I was 11 years old then, and I was completely captured by the game, it was sheer magic, and I would play it over an over again, never getting tired of it — and of course, I also kept studying its source code to learn where the magic came from.

Beside the countless hours of fun I enjoyed playing it — which is a reason for gratitude in itself — there's also another, more profound, reason why I feel that owe so much to _Hamurabi_.

This game affect me so profoundly that I decided to embark on learning programming, there and then — it definitely marked the beginning of a life-long passion that has never left me since.

David Ahl was a visionary of his time in many respects.
First of all, he foresaw the impact that the BASIC language was soon going to have on the computer world; so much so that he decided to quit his career at [DEC] in order to pursue this belief.
Furthermore, he had the courage to write a programming book that was intended for a broader audience than it was customary at that time, not targeting just the professionals and the IT experts, but also the common people and, most important of all, the younger ones.

The course of time has proven that David Ahl was right, and the fact that his original book from 1974 has seen a [newly revised Small Basic edition in 2020][BCC-2020] is a definite proof that the fire of his ideas is still kindling today.

It's hard to estimate how many of today's programmers were inspired by the games presented in his _BASIC Computer Games_ series, but it's a well known fact that almost every computer user from my generation has played _Hamurabi_ at least once — be it in the original form or translated to a foreign language.

I surely was inspired by this game; and am still able to play it today and feel again that overwhelming wonder from four decades ago.


# External Links

- https://www.swapmeetdave.com — David Ahl's website.

<!-- MarkdownTOC:excluded -->
## Hamurabi Game

- [Internet Archive » Hamurabi] — play _Hamurabi_ in your browser.
- [Original Hamurabi listing][hamurabi 1978] — links to the scanned book at The ATARI Archives.
- [Wikipedia » Hamurabi (video game)]

For an historical account on the _Hamurabi_ game predecessors:

- _[The Sumerian Game: The Most Important Video Game You've Never Heard Of]_ — by Kate Willaert.
- [Wikipedia » The Sumerian Game][The Sumerian Game]


<!-- MarkdownTOC:excluded -->
## BASIC Computer Games

- [Wikipedia » BASIC Computer Games]

You can read online scanned copies of the 1978 edition of the _BASIC Computer Games_ book at the following websites:

- [The ATARI Archives][BCC-78 ATARI Arc]
- [The Internet Archive][BCC-78 Web Arc]

There's also the new _BASIC Computer Games_ edition for Microsoft [Small Basic], published in 2020 for the book's 40th anniversary, purchasable in eBook format:

- https://www.kidwaresoftware.com/SmallBasicComputerGames

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[king Hammurabi]: https://en.wikipedia.org/wiki/Hammurabi "WikiPedia page on the Babylonian king Hammurabi"

[Wikipedia » Hamurabi (video game)]: https://en.wikipedia.org/wiki/Hamurabi_(video_game) "Wikipedia page on the Hamurabi video game"
[Hamurabi]: https://en.wikipedia.org/wiki/Hamurabi_(video_game) "Wikipedia page on the Hamurabi video game"
[The Sumerian Game]: https://en.wikipedia.org/wiki/The_Sumerian_Game "Wikipedia page on 'The Sumerian Game'"


[Vintage BASIC]: http://vintage-basic.net "Visit the Vintage BASIC website"

<!-- BASIC Computer Games -->

[BASIC Computer Games]: https://www.atariarchives.org/basicgames/index.php "Read 'BASIC Computer Games' (1978) at ATARI Archives"
[101 Basic Computer Games]: https://en.wikipedia.org/wiki/BASIC_Computer_Games "Wikipedia page on the 'Basic Computer Games" books series"
[Wikipedia » BASIC Computer Games]: https://en.wikipedia.org/wiki/BASIC_Computer_Games "Wikipedia page on the 'Basic Computer Games" books series"

[BCC-78 ATARI Arc]: https://www.atariarchives.org/basicgames/index.php "Read the 1978 edition of 'BASIC Computer Games' at The ATARI Archives"
[BCC-78 Web Arc]: https://archive.org/details/Basic_Computer_Games_Microcomputer_Edition_1978_Creative_Computing "Read the 1978 edition of 'BASIC Computer Games' at The Internet Archive"

[BCC-2020]: https://www.kidwaresoftware.com/SmallBasicComputerGames "Visit the 'BASIC Computer Games' 40th anniversary edition"

<!-- Hamurabi game and listing -->

[hamurabi 1978]: https://www.atariarchives.org/basicgames/showpage.php?page=78 "View 'hamurabi.bas' listing at ATARI Archives"
[Internet Archive » Hamurabi]: https://archive.org/details/msdos_Hamurabi_1996 "Play Hamurabi in your browser at the Internet Archive"

<!-- organizations, firms and institutes -->

[BOCES]: https://en.wikipedia.org/wiki/Boards_of_Cooperative_Educational_Services  "Wikipedia page on the Boards of Cooperative Educational Services (BOCES)"
[Creative Computing]: https://en.wikipedia.org/wiki/Creative_Computing_(magazine) "Wikipedia page on Creative Computing magazine"
[DEC]: https://en.wikipedia.org/wiki/Digital_Equipment_Corporation "Wikipedia page on Digital Equipment Corporation (DEC)"
[Digital Equipment Corporation]: https://en.wikipedia.org/wiki/Digital_Equipment_Corporation "Wikipedia page on Digital Equipment Corporation (DEC)"

<!-- files and folders -->

[1978/]: ./1978/ "Navigate to folder"
[PureBasic/]: ./PureBasic/ "Navigate to folder"

[hamurabi.bas]: ./1978/hamurabi.bas "View source file of original Hamurabi game"

<!-- articles and reviews -->

[The Sumerian Game: The Most Important Video Game You've Never Heard Of]: https://www.acriticalhit.com/sumerian-game-most-important-video-game-youve-never-heard/ "Read the full article at acriticalhit.com"

<!-- langs -->

[Microsoft BASIC]: https://en.wikipedia.org/wiki/Microsoft_BASIC "Wikipedia page on Microsoft BASIC"
[Fortran]: https://en.wikipedia.org/wiki/Fortran "Wikipedia page on the Fortran programming language"
[FOCAL]: https://en.wikipedia.org/wiki/FOCAL_(programming_language) "Wikipedia page on the FOCAL programming language"
[Small Basic]: https://smallbasic-publicwebsite.azurewebsites.net "Visit Microsoft Small Basic website"

<!-- platforms -->

[DEC PDP-8]: https://en.wikipedia.org/wiki/PDP-8 "Wikipedia page on the DEC PDP-8"
[IBM 7090]: https://en.wikipedia.org/wiki/IBM_7090 "Wikipedia page on the IBM 7090"
[TI-99/4A]: https://en.wikipedia.org/wiki/Texas_Instruments_TI-99/4A "Wikipedia page on TI-99/4A"

<!-- 3rd party apps and tools -->

[DOSBox]: https://www.dosbox.com "Visit DOS Box website"

<!-- people -->

[David H. Ahl]: https://www.swapmeetdave.com "Visit David Ahl's website"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
