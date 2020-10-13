module Mission where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopTeam

  [ ("board & staff", "TeamStaff.html",  False),
    ("actors",        "TeamActors.html", False),
    ("mission",       "Mission.html",    True) ]

  <| \config ->
  let
    mission = [
      "Theatre is a&nbsp;dynamic and collaborative art which draws its strength from both rich traditions and inspirational innovations."
    , "Our Mission is to&nbsp;establish a&nbsp;theatrical school, modeled after the&nbsp;longstanding Russian tradition of theatre arts, that will help to&nbsp;guide the&nbsp;new artistic innovators and leaders to the&nbsp;discovery and fulfillment of their greatest potential."
    , "Our purpose is to&nbsp;re-ignite that spark of inner joy and triumph that theater can bring to a&nbsp;human being’s soul&thinsp;&mdash;&thinsp;to&nbsp;inspire, educate, and empower the&nbsp;community and artists of all ages to&nbsp;achieve the&nbsp;highest level of cultural excellence through collaboration, productions and educational programs that promote lifelong learning and provide excellent and professional entertainment."
    , "We believe that theatre is not just recreation but is a&nbsp;way of life."
    , "We hope that Creative&nbsp;Association&nbsp;ARK will make a&nbsp;difference in people’s lives and touch their hearts."
    ]
    legal = "Creative Association Ark was formed for exclusively charitable and educational purposes, registered 501(c)3 nonprofit organization."

    u = config.step
    u2 = 2* config.step
    tw = 3* config.thumbWidth - 2*u2

    missionBox =
      padLRTB u2 (config.thumbWidth +u2) u2 u2 <|
      flow down <|
      (intersperse (spaceY u) <| map (width tw . leftAligned . missionNormalText) mission) ++
      [spaceY u2, width tw <| leftAligned <| missionQuoteText legal]

  in
    color missionBackColor <| width config.contentWidth <| missionBox
