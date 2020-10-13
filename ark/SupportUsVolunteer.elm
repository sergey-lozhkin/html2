module SupportUsVolunteer where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopSupportUs

  [ ("make donations", "SupportUsDonations.html", False),
    -- ("sponsors",       "SupportUsSponsors.html",  False),
    ("volunteer",      "SupportUsVolunteer.html", True) ]

  <| \config ->
  let
    s2s = 2* config.step
    s1s = config.step
    d1w = config.contentWidth - config.thumbWidth - 2*s2s
    mailBox m = flow right [ spacer s2s 1, width (d1w - s2s) <| leftAligned <| ulink ("mailto:"++m) <| volunteerNormalText m]
    textBox t = width d1w <| leftAligned <| volunteerNormalText t
  in
    color volunteerBackColor <| flow down [
      spacer config.contentWidth s2s,
      flow right [
        spacer s2s s2s,
        flow down [
          textBox "There’s no better way to be part of the action than working behind the scenes for Creative Association ARK.",
          spacer s1s s1s,
          textBox "We accept talented volunteers to assist in productions — giving you a firsthand look at how a play comes together from start to finish. If you love theatre and believe in the importance of the arts, consider helping us put on memorable theatre performances for audiences of all ages. If you would like to volunteer as a stage hand, please call Alex Liznenkov at 650.353.6576 or by email at",
          mailBox "aliznenkov@ark-ca.org",
          textBox "or Alex Litovchenko at 415.606.4074 or by email at ",
          mailBox "alitovchenko@ark-ca.org",
          spacer s1s s1s,
          textBox "If you are interested in ushering, please contact the Usher Coordinator, at",
          mailBox "info@ark-ca.org" ],
        spacer s2s s2s ],
      spacer config.contentWidth s2s ]
