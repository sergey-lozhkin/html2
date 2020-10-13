module TeamStaff where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopTeam

  [ ("board & staff", "TeamStaff.html",  True),
    ("actors",        "TeamActors.html", False),
    ("mission",       "Mission.html",    False) ]

  <| \config ->
  let
    u = config.thumbWidth2
    u2 = 2*u
    s2 = 2*config.step
    blank1x2 = spacer u2 u
    blank2x2 = spacer u2 u2

    fittage url avatar    = link url <| fittedImage u2 u2 ("assets/"++avatar++".png")
    avatarAlexLiznenkov   = fittage "StaffAlexLiznenkov.html" "staff-alex-liznenkov-avatar"
    avatarAlexLitovchenko = fittage "StaffAlexLitovchenko.html" "staff-alex-litovchenko-avatar"
    avatarIrinaVolkova    = fittage "StaffIrinaVolkova.html" "staff-irina-volkova-avatar"
    avatarLauraMukhina    = fittage "StaffLauraMukhina.html" "staff-laura-mukhina-avatar"
    avatarMariaSmirnova   = fittage "StaffMariaSmirnova.html" "female-5"
    avatarDmitryKoltsov   = fittage "StaffDmitryKoltsov.html" "male-1"

    textAvatar            = layers [ color staffListBackColor <| blank2x2 ]
  in
    flow right [
      flow down [ avatarAlexLiznenkov, blank1x2, avatarAlexLitovchenko ],
      flow down [ blank1x2, avatarIrinaVolkova, avatarDmitryKoltsov ],
      flow down [ avatarMariaSmirnova, avatarLauraMukhina, blank1x2 ],
      flow down [ textAvatar, blank1x2, color staffListColor3 <| blank2x2 ]]
