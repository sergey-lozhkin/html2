module WorkshopDecorations where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       False)
  , ("actors & directors", "WorkshopActdirs.html", False)
  , ("music",              "WorkshopMusic.html",           False)
  , ("decorations",        "WorkshopDecorations.html",     True)
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
        fittedImage p1w p1h "assets/ws-home-decorations.jpg"
      ]

    description = flow down [
      width d1w <| leftAligned <| quoteText "«Правда&nbsp;ли, что&nbsp;всякое трагическое действие требует для&nbsp;своего изображения пышности и&nbsp;сложных аксессуаров? Не&nbsp;следует&nbsp;ли и&nbsp;поэту, напротив, строить свою пьесу так, чтобы она производила сильное впечатление и&nbsp;без&nbsp;этих вспомогательных средств? Пьесы Шекспира дали на&nbsp;опыте любопытное доказательство того, насколько вообще можно обойтись без&nbsp;декораций при&nbsp;представлении пьес. Казалось&nbsp;бы, какие пьесы, вследствие постоянных перерывов и&nbsp;перемены места, требовали в&nbsp;большей степени содействия обстановки и&nbsp;искусства декоратора, если не&nbsp;эти? Однако, было время, когда театральные сцены, на&nbsp;которых они давались, были снабжены только занавесом из&nbsp;простой грубой материи, а&nbsp;когда его поднимали, то&nbsp;зрители видели голые стены, в&nbsp;лучшем случае увешанные циновками или&nbsp;коврами. Только воображение могло помочь пониманию зрителя и&nbsp;игре актёра. И,&nbsp;несмотря на&nbsp;это, говорят, пьесы Шекспира без&nbsp;всяких декораций были понятнее, чем&nbsp;впоследствии с&nbsp;декорациями»",
      width d1w <| rightAligned <| quoteText "Г. Лессинг",
      spaceY u,
      width d1w <| leftAligned <| normalText "Сценографическое решение декораций, то,&nbsp;как&nbsp;и&nbsp;каким образом выбранный изобразительный ход помогает актёрам и&nbsp;режиссёру в&nbsp;создании нового мира автора, к&nbsp;которому они обращаются, из&nbsp;каких деталей состоит создаваемая сценография и&nbsp;как&nbsp;минимальными средствами передать возможности театра, умея жить в&nbsp;пространстве воображения и&nbsp;вымысла, как в&nbsp;наиболее реальном&thinsp;&mdash;&thinsp;вот задачи этой мастерской. Хотелось&nbsp;бы на&nbsp;практике постигать, как&nbsp;существует актёр и&nbsp;работает мысль режиссёра при&nbsp;рождении нового пространства. Как,&nbsp;начиная с&nbsp;малого&thinsp;&mdash;&thinsp;например, с&nbsp;комнаты, изменить привычное представление о&nbsp;мире вещей и&nbsp;что для&nbsp;этого необходимо сделать? Пишите нам, если&nbsp;вам интересно&thinsp;&mdash;&thinsp;и&nbsp;мы вместе приступим к&nbsp;созданию такой мастерской.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
