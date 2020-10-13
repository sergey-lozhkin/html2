module Ark.Footer where

import Ark.Parameters (..)
import Ark.Utils (..)

footer config =
  let
    u2 = 2* config.step
    blankY = spaceY config.step
    blankX = spaceX u2

    textBox     t = leftAligned <| footerNormalText t
    linkBox url t = leftAligned <| Text.link url <| footerNormalText t
    copyright   t = width config.thumbWidth <| leftAligned <| footerCopyrightText t

    leftFoot = padX u2 <| flow down <| intersperse blankY <|
      map (width (config.contentWidth - config.thumbWidth - 2*u2) . flow right . intersperse blankX) [
        [ linkBox "EventsList.html" "Events"
        , linkBox "ActivitiesWorkshop.html" "Workshops"
        ]
        ,
        [ linkBox "Mission.html" "Mission",
          linkBox "TeamStaff.html" "About Us",
          linkBox "BoxOfficeInfo.html"      <| nbsp "Box Office",
          linkBox "SupportUsDonations.html" <| nbsp "Support & Volunteer" ]
        ,
        [ linkBox "WorkshopDrama.html"           <| nbsp "Drama",
          linkBox "WorkshopActors.html"          <| nbsp "Actors",
          linkBox "WorkshopDirectors.html"       <| nbsp "Directors",
          linkBox "WorkshopActdirs.html" <| nbsp "Actors & Directors",
          linkBox "WorkshopMusic.html"           <| nbsp "Music",
          linkBox "WorkshopDecorations.html"     <| nbsp "Decorations" ]
        ]

    rightFoot = width config.thumbWidth <| padR u2 <| flow down [
      flow right <| intersperse blankX [
        fittedImage 27 19 "assets/mailbox-1.png",
        fittedImage 24 20 "assets/tweeter-1.png",
        link "https://www.facebook.com/groups/435706523149192/" <| fittedImage 20 20 "assets/facebook-1.png" ],
      spaceY u2,
      flow down [
        copyright <| nbsp "Creative Association ARK&#174;",
        copyright <| nbsp "&#169; All rights reserved" ]]

  in
    color footerBackColor <| padY u2 <| flow right [ leftFoot, rightFoot ]
