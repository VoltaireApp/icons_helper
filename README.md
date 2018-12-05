# icons_by_name

This package's use case is to provide access to the full library of Icons and FontAwesomeIcons at runtime when the specific icons needed are not known at compile time. As such, all Tree Shaking is totally worked around/defeated for Icons and FontAwesomeIcons, so know that before you use the library.

The methods you may want to consider using include:

getIconUsingPrefix(name: "PREFIX.ICON_NAME") - if PREFIX is "fa" or "fontawesome" the icon_name after the "." will be resolved against the font awesome icons first, if that fails, it'll go to Material Design Icons. If there is no PREFIX.ICON_NAME, it'll fail over to just trying to resolve Material First, then Font Awesome.

getIconGuessFavorFA(name:"ICON_NAME") - if there is an icon named ICON_NAME in FA, return that, otherwise, try Material

getIconGuessFavorMaterial(name:"ICON_NAME") - if there is an icon named ICON_NAME in Material Design, return that, otherwise, try FA

All methods will return null if icon doesn't exist.

I basically wrote this as a hack/work around to https://github.com/flutter/flutter/issues/16189.


## Getting Started

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

