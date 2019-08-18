# icons_helper

This package's use case is to provide access to the full library of Icons and FontAwesomeIcons (currently FontAwesome 5.9) at runtime when the specific icons needed are not known at compile time. As such, all Tree Shaking is totally worked around/defeated for Icons and FontAwesomeIcons, so know that before you use the library. But since in our application, for example, the icon names come in from our backend and we don't want to have to re-release each time it specifies a new icon, we are GOOD with that. This is intentional so we can specify a new icon to be displayed just by sending that new text string in our push notification/record. This is a convenience package that provides bracket notiation access to Material Design Icons and Font Awesome Flutter icons (via @brianegan's font_awesome_flutter package). For now, I have just statically generated the Map to map string names to member names. This means any new icons won't be automatically discovered. There's a way to use codegen and mirror in a non-flutter dart app to generate this and then output/maintain them, but just using a google sheet and cut and pasting was faster for something I personally don't need to update often. That sheet is here at https://docs.google.com/spreadsheets/d/1IpWJytpkrJI9_9hwPKY5oXJLRLGjQuG3pUP7eUIqHn4/edit?usp=sharing. I started writing such a utility but gave up because it wasn't worth the time.

## Thanks & Contributions

Many thanks to Dennis Bappert (@dennisbappert) and S McDowall (@sjmcdowall) for updates to this and sourcing back their changes publicly and in the true spirit of open source. This includes their fixes.

This also includes changes by Hussein Abdallah (@HeyHeyNotYouYou) who took this library, renamed it to his own, claimed it as his own, and put his own name on it, taking the above contributor's work and my own and claiming it as his own in the process. I would like to recognize his "work" is in here, too, and call out that such behavior is anathema to progress in open source software, no matter how minor or how small the library in question or how trivial the work. He also violated the terms of the Apache 2 license. Dick move.

## Using

The methods you may want to consider using include:

getIconUsingPrefix(name: "PREFIX.ICON_NAME") - if PREFIX is "fa" or "fontawesome" the icon_name after the "." will be resolved against the font awesome icons first, if that fails, it'll go to Material Design Icons. If there is no PREFIX.ICON_NAME, it'll fail over to just trying to resolve Material First, then Font Awesome.

getIconGuessFavorFA(name:"ICON_NAME") - if there is an icon named ICON_NAME in FA, return that, otherwise, try Material

getIconGuessFavorMaterial(name:"ICON_NAME") - if there is an icon named ICON_NAME in Material Design, return that, otherwise, try FA

All methods will return null if icon doesn't exist.

Yes, this is a quick and dirty library that could use tons of improvement and does a lot of things poorly or doesn't do things. If you want to change/fix/help, submit a PR and I'll def accept all help that I think improves this lib. 

I basically wrote this as a hack/work around to https://github.com/flutter/flutter/issues/16189.
