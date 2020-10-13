module WorkshopActors where

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
  , ("actors & directors", "WorkshopActdirs.html",         False)
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
        , ("творческое самочувствие",         "WorkshopActorsFeeling.html",      False)
        , ("восприятие",                      "WorkshopActorsPerception.html",   False)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| quoteText "«Убеждённость должна явиться следствием опыта и&nbsp;не&nbsp;может быть продуктом абстракции.»",
      width d1w <| rightAligned <| quoteText "Дайсэцу Судзуки, «Основы Дзен-Буддизма»",
      spaceY u,
      width d1w <| leftAligned <| normalText "Актёрская мастерская предполагает исследование как&nbsp;самого себя в&nbsp;качестве инструмента, который будет участвовать в&nbsp;постановках, так&nbsp;и&nbsp;понимания того, какие обязательства и&nbsp;перед кем накладывает эта профессия на&nbsp;человека, выбравшего для&nbsp;себя такой нелёгкий, но&nbsp;один из&nbsp;самых увлекательных путей в&nbsp;жизни. Мы неустанно продолжаем повторять, что&nbsp;театр&thinsp;&mdash;&thinsp;это не&nbsp;только развлечение, но&thinsp;&mdash;&thinsp;oбраз жизни, способный изменить малую толику в&nbsp;одном человеке. Служенье театру требует от&nbsp;человека огромной напряжённой работы, невзирая&nbsp;на&nbsp;насмешки и&nbsp;взгляды окружающих людей. Но&nbsp;результат превосходит ожидания, ибо&nbsp;жизнь данного человека наполнена необычайными приключениями и&nbsp;познаниями самого необъятного мира&thinsp;&mdash;&thinsp;себя.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Все начинается с&nbsp;тренинга, дисциплины и&nbsp;готовности понять себя, а&nbsp;значит, попробoвать себя изменить. Первые 4&nbsp;актёрские мастерские&thinsp;&mdash;&thinsp;это&nbsp;тренинг, который актёр в&nbsp;дальнейшем может использовать как при&nbsp;подготовке к&nbsp;работе над&nbsp;ролью в&nbsp;спектакле, так&nbsp;и&nbsp;в&nbsp;самой жизни, если результаты тренинга будут ему нравиться.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Также, вы&nbsp;легко и&nbsp;просто можете начать с&nbsp;первого тренинга&thinsp;&mdash;&thinsp;«Дисциплина»&thinsp;&mdash;&thinsp; без&nbsp;посторонней помощи: просто последите за&nbsp;собой в&nbsp;моменты встреч с&nbsp;друзьями, посещения каких-либо выставок и&nbsp;музеев. Если у&nbsp;вас будет два, а, возможно, и&nbsp;более кругов внимания, попробуйте контролировать себя: держите спину, садитесь на&nbsp;кончик стула и&nbsp;чувствуйте себя при&nbsp;этом свободно и&nbsp;непринуждённо. Возможно, для&nbsp;начала, если у&nbsp;вас плохая осанка, лучше тренироваться дома. Это работа не&nbsp;5-ти минут, ей необходимо уделять как минимум 2&nbsp;часа. Одновременно вы можете заниматься и&nbsp;остальными домашними делами. Когда вы сможете контролировать себя автоматически, вы почувствуете разницу между собой прежним и&nbsp;нынешним. Удачи и&nbsp;радости от&nbsp;встречи с&nbsp;собой! А&nbsp;также&thinsp;&mdash;&thinsp;терпения и&nbsp;понимания, что можно двигаться медленно, но&nbsp;постоянно и&nbsp;в&nbsp;одном и&nbsp;том&nbsp;же направлении. Удачи!",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
