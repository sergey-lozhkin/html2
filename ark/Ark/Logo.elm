module Ark.Logo where

-- the container is needed to get the link work properly, but it's not necessary otherwise
logo config =
  link "index.html" <|
  container config.logoWidth config.logoHeight middle <|
  fittedImage config.logoWidth config.logoHeight "assets/ark-logo-01.png"
