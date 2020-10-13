module ActorIrinaBrodskaya where

import Ark.People (..)
import Ark.Site (..)
import Ark.Skeleton (..)

main = skeleton TopTeam

  [ ("board & staff", "TeamStaff.html",        False),
    ("actors",        "TeamActors.html",       True),
    ("mission",       "Mission.html",          False) ]

  <| actorPerson actorIrinaBrodskaya
