module Ark.Utils where

import String (String)
import String as S
import Ark.Config (..)

textL   h t = Text.height h <| typeface [normalFont ++ " Light"]        <| toText t
textN   h t = Text.height h <| typeface [normalFont ++ " Regular"]      <| toText t
textM   h t = Text.height h <| typeface [normalFont ++ " Medium"]       <| toText t
textLI  h t = Text.height h <| typeface [normalFont ++ " Light Italic"] <| toText t

spaceX x = spacer x 1
spaceY y = spacer 1 y

padL    l e     = flow right [ spaceX l, e ]
padR    r e     = flow right [ e, spaceX r ]
padLR   l r e   = flow right [ spaceX l, e, spaceX r ]
padT    t e     = flow down  [ spaceY t, e ]
padB    b e     = flow down  [ e, spaceY b ]
padTB   t b e   = flow down  [ spaceY t, e, spaceY b ]
padX    x       = padLR x x
padY    y       = padTB y y
padXY   x y     = padY y . padX x
pad     p       = padY p . padX p
padLRTB l r t b = padTB t b . padLR l r

centerX  x   e = container x           (heightOf e) middle e
centerY    y e = container (widthOf e) y            middle e
centerXY x y e = container x           y            middle e

bool f t b = if b then t else f

nbsp : String -> String
nbsp = S.foldr (\c cs -> bool (S.cons c cs) ("&nbsp;"++cs) (c == ' ')) ""

ulink url = Text.link url . line Under

fromJust (Just x) = x

listDef : a -> ([b] -> a) -> [b] -> a
listDef def f xs = case xs of
  [] -> def
  xs -> f xs
