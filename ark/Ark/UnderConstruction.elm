module Ark.UnderConstruction where

import Ark.Parameters (..)
import Ark.Utils (..)

underConstruction config =
  let
    u2 = 2* config.step
    d1w = config.contentWidth - config.thumbWidth - 2*u2
  in
    layers [
      color ucBackColor <| spacer config.contentWidth (config.contentWidth `div` 2),
      flow down [
        spacer config.contentWidth u2,
        flow right [
          spacer u2 u2,
          width d1w <| leftAligned <| ucNormalText "Sorry :(\nThis page is currently under construction!" ]]]
