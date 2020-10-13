module WorkshopDirectorsCreation where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       True)
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
      fittedImage p1w p1h "assets/ws-home-directors.jpg",
      spaceY (3*u `div` 2),
      sideMenu config
        [ ("создание мира",                                   "WorkshopDirectorsCreation.html",      True)
        , ("замысел&thinsp;&mdash;&thinsp;воплощение",        "WorkshopDirectorsExecution.html",     False)
        , ("мизансцена&thinsp;&mdash;&thinsp;язык режиссёра", "WorkshopDirectorsContext.html",       False)
        , ("время, пространство",                             "WorkshopDirectorsTimespace.html",     False)
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        False)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Создание мира",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Я&nbsp;предпочитаю, чтобы в&nbsp;театре была не&nbsp;одна истина, но&nbsp;много истин, которые сталкиваются, борются между собой, сменяют друг друга. Ведь благодаря этой постоянной борьбе различных тенденций, театр остается искусством живым и&nbsp;вечно развивающимся».",
      width d1w <| rightAligned <| quoteText "Шарль Дюллен (французский актёр и&nbsp;театральный режиссёр)",
      spaceY u,
      width d1w <| leftAligned <| normalText "Смысл режиссёрского решения состоит в&nbsp;том, чтобы найти единственную, непосредственную связь между существом «идеального» замысла и&nbsp;способом его реализации, найти путь образного выражения самого существа содержания пьесы. Важно не&nbsp;уйти в&nbsp;мир рассуждений по&nbsp;поводу пьесы, а&nbsp;увидеть её в&nbsp;пространстве, во&nbsp;времени, в&nbsp;беспрерывно развивающемся действии, в&nbsp;столкновении характеров, в&nbsp;определённых темпо-ритмах. Для любого произведения важно найти единственное решение, свойственное данному произведению, данному жанру, данному автору и&nbsp;данному времени. Как&nbsp;же&nbsp;определить для себя, найдено&nbsp;ли подлинное решение или это просто «призрак», «мираж», «комментирование по&nbsp;поводу» и,&nbsp;в&nbsp;конечном счете, «иллюстрация»?",
      spaceY u,
      width d1w <| leftAligned <| normalText "Важными критериями подлинности сценического решения являются образность и&nbsp;эмоциональность.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
