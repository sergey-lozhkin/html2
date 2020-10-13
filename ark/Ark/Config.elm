module Ark.Config where

-- global static parameters
normalFont = "Roboto"
normalFontSize = 17
smallFontSize = 15
tinyFontSize = 12
hugeFontSize = 30
-- normalTextColor = rgb 88 89 91 -- серый цвет буковок 58595B
normalTextColor = rgb 48 48 48
-- backColor = rgb 201 201 203 -- серый цвет подложки в странице с календарем спектаклей C9C9CB
backColor = grey
inversedTextColor = lightGrey
inversedBackColor = black

-- global parameters, a function of window size
makeConfig viewWidth =
  let
    -- windowWidth     = clamp 640 1280 viewWidth
    windowWidth     = viewWidth
    unit            = ((windowWidth - 1) `div` 10) + 1
    step            = unit `div` 9
    thumbWidth      = 2* unit
    thumbHeight     = unit * 13 `div` 9
    thumbWidth2     = unit
    thumbHeight2    = thumbWidth2
    contentWidth    = 4* thumbWidth
    sidebarWidth    = windowWidth - contentWidth
    logoWidth       = sidebarWidth
    logoHeight      = logoWidth * 364 `div` 556
    topbarWidth     = contentWidth
    topbarHeight    = unit
    footerWidth     = contentWidth
    footerHeight    = unit * 11 `div` 9
    bannerWidth     = contentWidth
    bannerHeight    = bannerWidth * 375 `div` 1422
    spacerHeight    = unit
  in {
    bannerHeight    = bannerHeight
  , bannerWidth     = bannerWidth
  , contentWidth    = contentWidth
  , footerHeight    = footerHeight
  , footerWidth     = footerWidth
  , logoHeight      = logoHeight
  , logoWidth       = logoWidth
  , sidebarWidth    = sidebarWidth
  , thumbHeight     = thumbHeight
  , thumbHeight2    = thumbHeight2
  , thumbWidth      = thumbWidth
  , thumbWidth2     = thumbWidth2
  , topbarHeight    = topbarHeight
  , topbarWidth     = topbarWidth
  , unit            = unit
  , windowWidth     = windowWidth
  , step            = step
  }
