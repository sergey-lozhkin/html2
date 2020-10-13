module SupportUsDonations where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Paypal (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopSupportUs

  [ ("make donations", "SupportUsDonations.html", True),
    -- ("sponsors",       "SupportUsSponsors.html",  False),
    ("volunteer",      "SupportUsVolunteer.html", False) ]

  <| \config ->
  let
    s2s = 2* config.step
    s1s = config.step
    d1w = config.contentWidth - config.thumbWidth - 2*s2s
    barH = spacer config.contentWidth s2s
    barV = spacer s2s s2s
    ppw = 171
    pph = 47

    contentBox =
      flow down [
        barH,
        flow right [
          barV,
          flow down [
            width d1w <| leftAligned <| donationsNormalText "Support the non–profit Creative Association ARK fastest-growing company.",
            spacer s1s s1s,
            width d1w <| leftAligned <| donationsNormalText "As ticket sales only cover part of our expense. The remaining must be raised through contributions,\nthe majority of which comes in the form of gifts from individuals like you. We need your support to:",
            flow right [
              width s2s <| leftAligned <| donationsTitleText "&middot;",
              width (d1w - s2s) <| leftAligned <| donationsNormalText "continue to produce bold and challenging international theatre;" ],
            flow right [
              width s2s <| leftAligned <| donationsTitleText "&middot;",
              width (d1w - s2s) <| leftAligned <| donationsNormalText "grow our new play development program." ],
            spacer s1s s1s,
            width d1w <| leftAligned <| donationsNormalText "There are a number of ways you can give and help support Creative Association ARK productions,\neducation, and outreach programs.",
            spacer s2s s2s,
            width d1w <| leftAligned <| donationsTitleText "Paypal",
            flow right [ spacer s2s 1, paypalButton_Donate ],
            spacer s2s s2s,
            width d1w <| leftAligned <| donationsTitleText "Check",
            width d1w <| leftAligned <| donationsNormalText "Please make checks payable to",
            flow right [
              spacer s2s s2s,
              width (d1w - s2s) <| leftAligned <| donationsNormalText "Creative Association ARK\n69 Dorado Terrace\nSan Francisco, CA 94112" ],
            spacer s1s s1s,
            width d1w <| leftAligned <| donationsNormalText "Donations play a major part in the ongoing success.",
            empty ],
          barV ],
        barH ]
  in
    color donationsBackColor <| contentBox
