module BoxOfficeTickets where

import Ark.Shows (..)
import Ark.Site (..)
import Ark.Skeleton (..)

main = skeleton TopBoxOffice

  [ ("general info", "BoxOfficeInfo.html",    False),
    ("buy tickets",  "BoxOfficeTickets.html", True) ]

  listOfPaidShows
