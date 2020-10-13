module WorkshopDirectors where

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
        [ ("создание мира",                                   "WorkshopDirectorsCreation.html",      False)
        , ("замысел&thinsp;&mdash;&thinsp;воплощение",        "WorkshopDirectorsExecution.html",     False)
        , ("мизансцена&thinsp;&mdash;&thinsp;язык режиссёра", "WorkshopDirectorsContext.html",       False)
        , ("время, пространство",                             "WorkshopDirectorsTimespace.html",     False)
        , ("ритм и&nbsp;музыкальность",                       "WorkshopDirectorsRhythm.html",        False)
        , ("пластическое решение",                            "WorkshopDirectorsPlasticity.html",    False)
        , ("работа с&nbsp;актёром",                           "WorkshopDirectorsCollaboration.html", False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| normalText "Режиссёрские мастерские ни&nbsp;в&nbsp;коем случае не&nbsp;предполагают создания сухой схемы работы режиссёра с&nbsp;материалом, где&nbsp;материалом определяется как&nbsp;пьеса&thinsp;&mdash;&thinsp;исходные данные для&nbsp;работы, так&nbsp;и&nbsp;актёры&thinsp;&mdash;&thinsp;соавторы будущей постановки. Мастерская направлена на&nbsp;изучение проблем и&nbsp;способов их&nbsp;решения в&nbsp;процессе создания спектаклей, работы с&nbsp;актёрами, с&nbsp;художником, композитором и&nbsp;другими необходимыми при&nbsp;постановке цехами. У&nbsp;каждого режиссёра есть свои опробованные, проверенные постановками и&nbsp;временем методы работы как&nbsp;с&nbsp;актёрами, так&nbsp;и&nbsp;с&nbsp;пьесами. Обобщить и&nbsp;собрать воедино теoретические осмысления режиссёрского труда и&nbsp;на&nbsp;практике применить их&thinsp;&mdash;&thinsp;одна из&nbsp;основных целей этой мастерской. Результатом исследования будут постановки спектаклей, в&nbsp;работе над&nbsp;которыми и&nbsp;будут проверяться теоретические исследования.",
      spaceY u,
      width d1w <| leftAligned <| normalText "«Режиссура&thinsp;&mdash;&thinsp;искусство практическое. Лучше всего пости­гать его&nbsp;на&nbsp;собственном опыте. Это&nbsp;нелегко, потому что&nbsp;худож­ник не&nbsp;может быть объективным по&nbsp;отношению к&nbsp;тому, что&nbsp;он&nbsp;создал. Порой, он в&nbsp;своём произведении видит больше того, что&nbsp;в&nbsp;нём содержится, порой&thinsp;&mdash;&thinsp;меньше. Для&nbsp;требовательного к&nbsp;себе режиссёра смотреть свой спектакль&thinsp;&mdash;&thinsp;мука. Ему&nbsp;кажется, что&nbsp;замеченная им неточность бросается в&nbsp;глаза всему зрительному залу. И&nbsp;наоборот. Ему обидно, когда зрители равнодушно про­ходят мимо великолепной, с&nbsp;его&nbsp;точки зрения, детали…»",
      spaceY u,
      width d1w <| leftAligned <| normalText "Константин Сергеевич Станиславский говорил, что&nbsp;научить творчеству нельзя. Можно только подготовить человека к&nbsp;твор­честву, создать наиболее благоприятные условия для&nbsp;того, чтобы как&nbsp;можно чаще просыпалось вдохновение и&nbsp;возникало живое чувство.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
