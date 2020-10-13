module WorkshopActorsTriple where

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
        , ("триада",                          "WorkshopActorsTriple.html",       True)
        , ("свобода и&nbsp;непринуждённость", "WorkshopActorsEasiness.html",     False)
        , ("творческое самочувствие",         "WorkshopActorsFeeling.html",      False)
        , ("восприятие",                      "WorkshopActorsPerception.html",   False)
        , ("яркость",                         "WorkshopActorsExpressiveness.html",   False)
        , ("работа над&nbsp;образом",         "WorkshopActorsCharacter.html",        False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Триада: творческая воля, внимание, воображение",
      spaceY u,
      width d1w <| leftAligned <| normalText "Творческое самочувствие может возникнуть лишь в&nbsp;результате непрерывного процесса взаимной работы творческой воли, внимания, воображения.",
      spaceY u2,
      width d1w <| leftAligned <| titleText "Творческая воля",
      spaceY u,
      width d1w <| leftAligned <| normalText "Это исходная точка для&nbsp;начала пути. Нужно понимать, что ни&nbsp;одно изменение (ни&nbsp;в&nbsp;привычках, ни&nbsp;в&nbsp;знаниях) не&nbsp;может осуществиться без&nbsp;волевого усилия. Однако, само волевое усилие должно быть направлено на&nbsp;поиск мотивации и&nbsp;интереса. Воля и&nbsp;интерес в&nbsp;связке работают гораздо продуктивнее, нежели голая воля, когда человек добивается чего-либо, что называется, «сжав зубы».",
      spaceY u2,
      width d1w <| leftAligned <| titleText "Внимание",
      spaceY u,
      width d1w <| leftAligned <| normalText "Это то, что необходимо развить в&nbsp;себе любому человеку, который желает управлять своей психофизикой. Внимание, опять-таки, необходимо развивать с&nbsp;помощью специальных упражнений, которые создают у&nbsp;человека привычку к&nbsp;повышенной концентрации, вовлечённости в&nbsp;психофизические процессы. Однако, нужно понимать, что внимание нужно развивать вкупе с&nbsp;воображением, чтобы достичь усиления творческой воли.",
      spaceY u2,
      width d1w <| leftAligned <| titleText "Воображение",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«ВООБРАЖЕНИЕ&thinsp;&mdash;&thinsp;это могущественная помощь во&nbsp;всяком событии в&nbsp;нашей жизни. Воображение действует на&nbsp;веру, и&nbsp;обе они являются чертёжниками, которые приготовляют наброски для&nbsp;воли, чтобы запечатлеть их, более или менее глубоко, на&nbsp;скалах трудностей и&nbsp;препятствий, которыми усыпан жизненный путь. Парацельс говорит: «Вера должна поддерживать воображение, ибо&nbsp;вера создаёт волю... Решительная воля&thinsp;&mdash;&thinsp;это начало всех магических действий... И&nbsp;потому, что человек недостаточно совершенно представляет результат и&nbsp;слабо верит в&nbsp;него, это искусство (магия) является ненадёжным, в&nbsp;то время как оно могло&nbsp;бы быть абсолютно надёжным». В&nbsp;этом весь секрет».",
      width d1w <| rightAligned <| quoteText "Е. П. Блаватская, «Заметки непопулярного философа»",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
