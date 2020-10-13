module Home where

import Ark.Carousel (..)
import Ark.Colour (..)
import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopHome [] <| \config ->
  let
    thumbTour2     = fittedImage config.thumbWidth  config.thumbWidth  "assets/home-tour.jpg"
    thumbDecorator = fittedImage config.thumbWidth  config.thumbWidth  "assets/home-decorator-3.jpg"
    thumbMission   = fittedImage config.thumbWidth  config.thumbWidth  "assets/home-mission.jpg"
    thumbActivitiesWorkshop = fittedImage config.thumbWidth  config.thumbWidth  "assets/home-workshops.jpg"
    thumbTeam = fittedImage config.thumbWidth  config.thumbWidth  "assets/home-team.jpg"

    boxUF url th = link url <| container config.thumbWidth config.thumbWidth topLeft <| th
    boxU2 col = color col <| spacer config.thumbWidth config.thumbWidth

    box1  = boxUF "EventDecorator.html" thumbDecorator
    box2  = boxUF "ActivitiesWorkshop.html" thumbActivitiesWorkshop
    box3  = color brown1 <| smallSpacer

    box4  = color cyan1 <| smallSpacer
    box5  = boxUF "Mission.html" thumbMission
    box6  = color blue1 <| smallSpacer

    box10 = boxUF "EventsList.html" thumbTour2
    box11 = color orange1 <| smallSpacer
    box12 = boxUF "TeamStaff.html" thumbTeam

    box7  = boxU2 orange1
    -- box8  = color velvet1 <| smallSpacer
    box9  = boxU2 blue1

    smallSpacer = spacer config.thumbWidth (config.thumbWidth - config.thumbHeight2)

    boxes = flow right [
      flow down [box1, box2, box3],
      flow down [smallSpacer, box4, box5, box6],
      flow down [box10, box11, box12 ],
      flow down [box7, smallSpacer, box9]
      ]
  in
    flow down [ carousel config, boxes ]
