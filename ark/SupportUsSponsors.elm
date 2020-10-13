module SupportUsSponsors where

import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.UnderConstruction (..)

main = skeleton TopSupportUs

  [ ("make donations", "SupportUsDonations.html", False),
    -- ("sponsors",       "SupportUsSponsors.html",  True),
    ("volunteer",      "SupportUsVolunteer.html", False) ]

  underConstruction
