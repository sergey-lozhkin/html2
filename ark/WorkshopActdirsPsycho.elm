module WorkshopActdirsPsycho where

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
        , ("психологический жест",                                                   "WorkshopActdirsPsycho.html",     True)
        , ("атмосфера",                                                              "WorkshopActdirsSpirit.html",     False)
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       False)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| titleText "Психологический жест",
      spaceY u,
      width d1w <| leftAligned <| normalText "Нам интересно наследие Михаила Чехова и&nbsp;его способ репетирования с&nbsp;использованием ПЖ. Ниже приведён отрывок из&nbsp;его замечательной книги «О&nbsp;технике&nbsp;актёра»:",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Психологический жест дает возможность актёру, работающему над&nbsp;ролью, сделать первый, свободный «набросок углём» на&nbsp;большом полотне. Ваш&nbsp;первый творческий импульс вы выливаете в&nbsp;форму психологического жеста. Вы создаете как&nbsp;бы&nbsp;план, по&nbsp;которому шаг за&nbsp;шагом будете осуществлять ваш художественный замысел.",
      spaceY u,
      width d1w <| leftAligned <| quoteText "Невидимый психологический жест вы можете сделать видимо, физически. Вы можете соединить его с&nbsp;определенной окраской и&nbsp;пользоваться им для&nbsp;пробуждения ваших чувств и&nbsp;воли. Как жест, имеющий общий характер, он, естественно, проникает глубже в&nbsp;вашу душу и&nbsp;воздействует на&nbsp;неё с&nbsp;большей силой, чем жест частный, случайный, натуралистический. Ясной, чёткой формы и&nbsp;большой внутренней силы потребует такой жест, чтобы воспламенить вашу творческую волю и&nbsp;пробудить чувства. Путем упражнений вы научитесь делать его правильным образом.",
      spaceY u,
      width d1w <| leftAligned <| quoteText "Существует род движений, жестов, отличных от&nbsp;натуралистических и&nbsp;относящихся к&nbsp;ним, как ОБЩЕЕ к&nbsp;ЧАСТНОМУ. Из&nbsp;них, как&nbsp;из&nbsp;источника, вытекают все натуралистические, характерные, частные жесты. Существуют, например, жесты отталкивания, притяжения, раскрытия, закрытия вообще. Из&nbsp;них возникают все индивидуальные жесты отталкивания, притяжения, раскрытия и&nbsp;т.д., которые вы будете делать по-своему, я&thinsp;&mdash;&thinsp;по-своему. Общие жесты мы, не&nbsp;замечая этого, всегда производим в&nbsp;нашей душе. Вдумайтесь, например, в&nbsp;человеческую речь: что происходит в&nbsp;нас, когда мы говорим или слышим такие выражения, как",
      spaceY u,
      width d1w <| leftAligned <| quoteText "ПРИЙТИ к&nbsp;заключению",
      width d1w <| leftAligned <| quoteText "КОСНУТЬСЯ проблемы",
      width d1w <| leftAligned <| quoteText "ПОРВАТЬ отношения",
      width d1w <| leftAligned <| quoteText "СХВАТИТЬ идею",
      width d1w <| leftAligned <| quoteText "УСКОЛЬЗНУТЬ от&nbsp;ответственности",
      width d1w <| leftAligned <| quoteText "ВПАСТЬ в&nbsp;отчаяние",
      width d1w <| leftAligned <| quoteText "ПОСТАВИТЬ вопрос и&nbsp;т.п.",
      spaceY u,
      width d1w <| leftAligned <| quoteText "О&nbsp;чём говорят все эти глаголы? О&nbsp;жестах, определенных и&nbsp;ясных. И&nbsp;мы совершаем в&nbsp;душе эти жесты, скрытые в&nbsp;словесных выражениях. Когда мы, например, касаемся проблемы, мы касаемся её не&nbsp;физически, но&nbsp;душевно. Природа душевного жеста касания та&nbsp;же, что&nbsp;и&nbsp;физического, с&nbsp;той только разницей, что один жест имеет общий характер и&nbsp;совершается невидимо в&nbsp;душевной сфере, другой, физический, имеет частный характер и&nbsp;выполняется, видимо, в&nbsp;физической сфере. В&nbsp;повседневной жизни мы не&nbsp;пользуемся общими жестами, разве только в&nbsp;случаях, когда мы чрезмерно возбуждены или когда хотим говорить с&nbsp;пафосом.",
      spaceY u,
      width d1w <| leftAligned <| quoteText "Жесты эти всё&nbsp;же живут в&nbsp;каждом из&nbsp;нас как прообразы наших физических, бытовых жестов. Они стоят за&nbsp;ними (как&nbsp;и&nbsp;за&nbsp;словами нашей речи), давая им&nbsp;смысл, силу и&nbsp;выразительность. В&nbsp;них, невидимо, жестикулирует наша душа. Это&thinsp;&mdash;&thinsp;ПСИХОЛОГИЧЕСКИЕ ЖЕСТЫ.»",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
