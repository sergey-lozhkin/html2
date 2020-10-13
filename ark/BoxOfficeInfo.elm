module BoxOfficeInfo where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopBoxOffice

  [ ("general info", "BoxOfficeInfo.html",    True),
    ("buy tickets",  "BoxOfficeTickets.html", False) ]

  <| \config ->
  let
    s2s = 2* config.step
    s1s = config.step
    d1w = config.contentWidth - config.thumbWidth - 2*s2s
    barH = spacer config.contentWidth s2s
    barV = spacer s2s s2s
    contentBox = flow down [
      barH,
      flow right [
        barV,
        flow down [
          width d1w <| leftAligned <| boxOfficeTitleText "Buy Tickets Online",
          spacer s1s s1s,
          width d1w <| leftAligned <| boxOfficeNormalText "Advance tickets for Creative Association ARK events are available prior to the show for purchase online.\nThe online box office is accessible 24 hours a day.",
          spacer s1s s1s,
          width d1w <| leftAligned <| ulink "BoxOfficeTickets.html" <| boxOfficeNormalText "Click here to view all upcoming shows and purchase tickets.",
          spacer s2s s2s,
          width d1w <| leftAligned <| boxOfficeTitleText "On-Site Box Office",
          spacer s1s s1s,
          width d1w <| leftAligned <| boxOfficeNormalText "Creative Association ARK's On-Site Box Office opens one hour before each show. There you may purchase tickets by cash, check. Additional Box Office hours may be added depending upon the show. Please call 415-608-7977 for updated information.",
          empty ],
        barV ],
      barH ]
  in
    color boxOfficeBackColor <| contentBox
