module Ark.Topbar where

import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Utils (..)

topbar config tmi =
  let
    lefts = [
      ( TopEvents, "Events", "EventsList.html" )
      ,
      ( TopActivities, "Workshops", "ActivitiesWorkshop.html" )
      ]

    rights = [
      ( TopBoxOffice, "Box Office", "BoxOfficeInfo.html" ),
      ( TopTeam, "About Us", "TeamStaff.html" ),
      ( TopSupportUs, "Support & Volunteer", "SupportUsDonations.html" )
      ]

    topStrip = flow right [ leftBox, spaceX spring, rightBox ]
    spring = config.topbarWidth - (widthOf leftBox) - (widthOf rightBox)

    leftBox  = padL u <| flow right <| map item lefts
    rightBox = padR u <| flow right <| map item rights

    item (it, txt, url) =
      let tbox = centerY (3*u) <| padX u <| centered <| Text.link url <| bool topNormalText topActiveText (it == tmi) <| nbsp txt
          markerPad = widthOf tbox `div` 2 - u
      in  link url <| flow down [ tbox, padL markerPad <| marker it ]

    marker it = bool (spaceY u) (markUp <| toFloat u) (it == tmi)
    markUp s = collage (2*u) u [ polygon [ (-s, 0), (0, s), (s, 0) ] |> filled topMarkerColor |> move (0, -s/2) ]

    u = config.step
    u2 = 2*u

  in
    flow down [ spaceY u2, topStrip ]
