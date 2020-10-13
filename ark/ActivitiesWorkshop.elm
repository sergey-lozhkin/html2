module ActivitiesWorkshop where

import Ark.Carousel (..)
import Ark.Colour (..)
import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",       False)
  , ("actors",             "WorkshopActors.html",      False)
  , ("directors",          "WorkshopDirectors.html",   False)
  , ("actors & directors", "WorkshopActdirs.html",     False)
  , ("music",              "WorkshopMusic.html",       False)
  , ("decorations",        "WorkshopDecorations.html", False)
  , ("general info",       "WorkshopGeneral.html",     False)
  ]

  <| \config ->
  let
    actorsTH      = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-actors.jpg"
    actdirsTH     = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-actors-directors.jpg"
    decorationsTH = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-decorations.jpg"
    directorsTH   = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-directors.jpg"
    dramaTH       = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-drama.jpg"
    generalTH     = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-general.jpg"
    musicTH       = fittedImage config.thumbWidth config.thumbWidth "assets/ws-home-music.jpg"

    boxUF url th = link url <| container config.thumbWidth config.thumbWidth topLeft <| th
    boxU2 col url txt =
      link url <| color col <| container config.thumbWidth config.thumbWidth middle <|
      centered <| Text.link url <| Text.color white <| textM normalFontSize <| txt

    general     = boxUF "WorkshopGeneral.html"     generalTH
    directors   = boxUF "WorkshopDirectors.html"   directorsTH
    actdirs     = boxUF "WorkshopActdirs.html"     actdirsTH
    actors      = boxUF "WorkshopActors.html"      actorsTH
    music       = boxUF "WorkshopMusic.html"       musicTH
    drama       = boxUF "WorkshopDrama.html"       dramaTH
    decorations = boxUF "WorkshopDecorations.html" decorationsTH

    bigSpacer = spacer config.thumbWidth config.thumbWidth
    smallSpacer = spacer config.thumbWidth (config.thumbWidth - config.thumbHeight2)

    boxes = flow right
      [ flow down [directors, bigSpacer, smallSpacer]
      , flow down [general, actdirs, smallSpacer]
      , flow down [actors, smallSpacer, music]
      , flow down [smallSpacer, drama, decorations]
      ]
  in
    flow down [ carousel config, boxes ]
