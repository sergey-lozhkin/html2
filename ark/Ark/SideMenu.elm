module Ark.SideMenu where

import Ark.Parameters (..)
import Ark.Utils (..)

sideMenu config items =
  let
    item (txt, lnk, mark) = link lnk <| flow right [
      centerY u2 <| width (config.sidebarWidth - u2) <| rightAligned <| Text.link lnk <| text mark txt,
      marker mark ]

    text m t = bool sideNormalText sideActiveText m <| nbsp t
    marker m = bool (spaceX u2) (markLeft u2 u2 sideMarkerColor) m

    markLeft w h c = let
        s = toFloat h / 2
        p = toFloat w / 2
      in
        collage w h [ polygon [ (0, s), (-s, 0), (0, -s) ] |> filled c |> moveX p ]

    u2 = 2* config.step
  in
    flow down <| map item items
