module WorkshopActdirsSpirit where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",           False)
  , ("actors",             "WorkshopActors.html",          False)
  , ("directors",          "WorkshopDirectors.html",       False)
  , ("actors & directors", "WorkshopActdirs.html", True)
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
      fittedImage p1w p1h "assets/ws-home-actors-directors.jpg",
      spaceY (3*u `div` 2),
      sideMenu config
        [ ("предлагаемые обстоятельства",                                            "WorkshopActdirsConditions.html", False)
        , ("пространство&thinsp;&mdash;&thinsp;тело&thinsp;&mdash;&thinsp;действие", "WorkshopActdirsSpace.html",      False)
        , ("психологический жест",                                                   "WorkshopActdirsPsycho.html",     False)
        , ("атмосфера",                                                              "WorkshopActdirsSpirit.html",     True)
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       False)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Атмосфера",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Замечали&nbsp;ли вы, как&nbsp;непроизвольно меняете вы ваши движения, речь, манеру держаться, ваши мысли, чувства, настроения, попадая в&nbsp;сильную, захватившую вас атмосферу? И&nbsp;если вы не&nbsp;сопротивляетесь ей, влияние её на&nbsp;вас возрастает. Так&nbsp;в&nbsp;жизни, так&nbsp;и&nbsp;на&nbsp;сцене. Каждый спектакль отдаваясь атмосфере, вы можете наслаждаться новыми деталями в&nbsp;вашей игре. Вам не&nbsp;нужно боязливо держаться за&nbsp;приёмы прошлых спектаклей или прибегать к&nbsp;клише. Пространство, воздух вокруг вас, исполненные атмосферой, поддерживают в&nbsp;вас живую творческую активность. Вы легко убедитесь в&nbsp;этом, проделав в&nbsp;вашем воображении простой опыт. Представьте себе сцену, известную вам из&nbsp;литературы или из&nbsp;истории. Пусть это будет, например, сцена взятия Бастилии. Вообразите себе момент, когда толпа врывается в&nbsp;одну из&nbsp;тюремных камер и&nbsp;освобождает заключённого. Всмотритесь в&nbsp;характеры и&nbsp;типы мужчин и&nbsp;женщин. Пусть эта созданная вашим воображением сцена предстанет перед вами с&nbsp;возможной яркостью. Затем скажем себе: толпа действует под&nbsp;влиянием атмосферы крайнего возбуждения, опьянения силой и&nbsp;властью. Все вместе и&nbsp;каждый в&nbsp;отдельности охвачен этой атмосферой. Вглядитесь в&nbsp;лица, движения, в&nbsp;группировки фигур, в&nbsp;темп происходящего, вслушайтесь в&nbsp;крики, в&nbsp;тембры голосов, всмотритесь в&nbsp;детали сцены, и&nbsp;вы увидите, как всё происходящее будет носить на&nbsp;себе отпечаток атмосферы, как она будет диктовать толпе её действия. Измените несколько атмосферу и&nbsp;просмотрите ваш «спектакль» ещё раз. Пусть прежняя возбуждённая атмосфера примет характер злобной и&nbsp;мстительной, и&nbsp;вы увидите, как она отразится в&nbsp;движении, действиях, взглядах и&nbsp;криках толпы. Снова измените её. Пусть гордость, достоинство, торжественность момента охватят участников сцены, и&nbsp;вы снова увидите, как сами собой изменятся фигуры, позы, группировки, голоса и&nbsp;выражения лиц в&nbsp;толпе.",
      spaceY u,
      width d1w <| leftAligned <| quoteText "То,&nbsp;что вы проделали в&nbsp;вашем воображении, вы как актёр можете делать и&nbsp;на&nbsp;сцене, пользуясь атмосферой как источником вдохновения.»",
      spaceY u,
      width d1w <| rightAligned <| quoteText "М.&nbsp;Чехов",
      spaceY u,
      width d1w <| leftAligned <| normalText "Ещё один из&nbsp;вариантов репетирования&thinsp;&mdash;&thinsp;с&nbsp;помощью атмосферы&thinsp;&mdash;&thinsp;нам кажется очень интересным, поскольку является необходимым качеством для&nbsp;работы над&nbsp;постановками, а&nbsp;так&nbsp;же&nbsp;с&nbsp;артистами. Ибо&nbsp;порой репетиции превращаются в&nbsp;некое бесконечное повторение одного и&nbsp;того&nbsp;же, не&nbsp;приносящего ни&nbsp;актёрам, ни&nbsp;постановке ничего нового и&nbsp;плодотворного. Для&nbsp;изменений в&nbsp;процессе репетиций, мы и&nbsp;обращаемся к&nbsp;наследию М.&nbsp;Чехова и&nbsp;к&nbsp;его способy репетирования. Наша задача применить это на&nbsp;практике и&nbsp;научиться этим пользоваться в&nbsp;нашей работе.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
