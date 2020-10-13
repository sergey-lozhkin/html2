module StaffIrinaVolkova where

import Ark.People (..)
import Ark.Site (..)
import Ark.Skeleton (..)

main = skeleton TopTeam

  [ ("board & staff", "TeamStaff.html",         True),
    ("actors",        "TeamActors.html",        False),
    ("mission",       "Mission.html",           False) ]

  <| staffPerson staffIrinaVolkova
