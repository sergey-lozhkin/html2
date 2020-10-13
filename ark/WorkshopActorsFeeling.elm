module WorkshopActorsFeeling where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          True)
  , ("directors",          "WorkshopDirectors.html",       False)
  , ("actors & directors", "WorkshopActdirs.html", False)
  , ("music",              "WorkshopMusic.html",           False)
  , ("decorations",        "WorkshopDecorations.html",     False)
  , ("general info",       "WorkshopGeneral.html",         False)
  ]

  <| \config ->
  let
    p1w = config.thumbWidth
    p1h = config.thumbWidth
    d1w = config.contentWidth - p1w - 3*u2 - config.thumbWidth
    d2w = config.thumbWidth
    u2 = 2* config.step
    u = config.step

    pictureBox = flow down [
      fittedImage p1w p1h "assets/ws-home-actors.jpg",
      spaceY (3*u `div` 2),
      sideMenu config
        [ ("дисциплина",                      "WorkshopActorsDiscipline.html",   False)
        , ("отречение",                       "WorkshopActorsRenunciation.html", False)
        , ("триада",                          "WorkshopActorsTriple.html",       False)
        , ("свобода и&nbsp;непринуждённость", "WorkshopActorsEasiness.html",     False)
        , ("творческое самочувствие",         "WorkshopActorsFeeling.html",      True)
        , ("восприятие",                      "WorkshopActorsPerception.html",   False)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Техника творческого самочувствия (Новый Путь)",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Творчество… может быть, нет другого такого дела, которое&nbsp;бы при&nbsp;разговоре о&nbsp;нём так соблазняло сбиться на&nbsp;путь всяких заумных рассуждений и&nbsp;философствований. С&nbsp;другой стороны, нет другого такого дела, которое&nbsp;бы требовало при&nbsp;изучении его больше всего именно практики и&nbsp;конкретности.»",
      width d1w <| rightAligned <| quoteText "Н. В. Демидов",
      spaceY u,
      width d1w <| leftAligned <| normalText "Изучаемая техника&thinsp;&mdash;&thinsp;это метод, при&nbsp;помощи которого актёр может вызвать у&nbsp;себя рабочее творческое состояние и&nbsp;овладеть&nbsp;им.",
      spaceY u,
      width d1w <| leftAligned <| normalText "В&nbsp;мастерской рассматривается практическое применение «этюдной» техники Н.&nbsp;В.&nbsp;Демидова. Он самостоятельно и&nbsp;независимо от&nbsp;литературных влияний пришёл к&nbsp;идее построения специальных упражнений, с&nbsp;помощью которых творческое состояние зарождается, зреет и&nbsp;расцветает. Изучая наследие Н.&nbsp;В.&nbsp;Демидова и&nbsp;применяя на&nbsp;практике его советы, мы хотели&nbsp;бы попробовать работать по&nbsp;этому методу, что требует особых усилий в&nbsp;изучении и&nbsp;применении данного Нового Пути, как называл это сам Николай Васильевич Демидов.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
