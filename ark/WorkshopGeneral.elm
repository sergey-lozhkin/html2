module WorkshopGeneral where

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
  , ("decorations",        "WorkshopDecorations.html",     False)
  , ("general info",       "WorkshopGeneral.html",         True)
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
        fittedImage p1w p1h "assets/ws-home-general.jpg"
      ]

    description = flow down [
      width d1w <| leftAligned <| quoteText "«Из&nbsp;всех приключений, уготованных нам жизнью, самое важное и&nbsp;интересное&thinsp;&mdash;&thinsp;путешествие внутрь&nbsp;самого себя.»",
      width d1w <| rightAligned <| quoteText "Федерико Феллини",
      spaceY u,
      width d1w <| leftAligned <| normalText "Желание размышлять о&nbsp;драматическом искусстве и&nbsp;привело к&nbsp;необходимости перехода от&nbsp;разветвлённых теоретических разговоров к&nbsp;непосредственной практике, с&nbsp;помощью которой можно на&nbsp;себе проверить и&nbsp;на&nbsp;собственном опыте понять, что&nbsp;значит «любить театр в&nbsp;себе». Познать самого себя и, по&nbsp;возможности, поделиться этим опытом с&nbsp;другими, ни&nbsp;в&nbsp;коем случае не&nbsp;поучая, а&nbsp;пробуждая желание своей увлечённостью и&nbsp;любовью к&nbsp;тайне творческого самочувствия, к&nbsp;таинственной встрече с&nbsp;собой, к&nbsp;актёрскому мастерству и&nbsp;его&nbsp;истокам.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Наша организация (Creative&nbsp;Association&nbsp;ARK) не&nbsp;ставит перед собой цель совершить новаторское движение и&nbsp;придумать нечто новое, фантазируя на&nbsp;тему драматического исскуства, отнюдь нет. Наша цель&thinsp;&mdash;&thinsp;это&nbsp;изучение театрального наследия, попытка не&nbsp;научить, а&nbsp;научиться вместе со&nbsp;всеми, кому интересен этот процесс: искать живое вокруг себя, искать живое в&nbsp;самом себе, искать себя.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Наши мастерские&thinsp;&mdash;&thinsp;это осмысление&thinsp;&mdash;&thinsp;через практику и&nbsp;постановку спектакля&thinsp;&mdash;&thinsp;миссии, возложенной на&nbsp;нас профессией. Это&nbsp;осмысление самой профессии. И&nbsp;тогда, возможно, возникнет школа, появится общее понимание того, что&nbsp;делаем, а&nbsp;значит, есть надежда, что&nbsp;будет и&nbsp;театр, который принесёт в&nbsp;многообразие американской жизни ещё одну возможность иначе посмотреть на&nbsp;мир и&nbsp;на&nbsp;себя в&nbsp;нём.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Ведь метод&thinsp;&mdash;&thinsp;это непрерывный, бесконечный путь. Это&nbsp;дорога, которую может «осилить идущий». «Чтобы добиться чего-нибудь подлинного и&nbsp;достойного названия художественного произведения, большею частью нужны месяцы и&nbsp;месяцы. А&nbsp;чтобы сделать хороший театр, нужны целые годы. В&nbsp;неделю, в&nbsp;месяц людей не&nbsp;перевоспитаешь и&nbsp;таланта не&nbsp;разовьёшь. А&nbsp;тут&thinsp;&mdash;&thinsp;давай поскорее спектакль! И&nbsp;вот все благие намерения откладываются до&nbsp;какого-то предполагаемого «дальнейшего», а&nbsp;пока, скрепя сердце, приходится действовать всякими более упрощёнными способами, лишь&nbsp;бы не&nbsp;задержать выпуск спектакля.»",
      spaceY u,
      width d1w <| leftAligned <| normalText "Работая над&nbsp;методикой понимаешь, что&nbsp;она предназначена для&nbsp;человека в&nbsp;большей степени, чем&nbsp;для&nbsp;актёра. Важно понять именно человеческое начало в&nbsp;любой методикe. Ведь актёром можешь ты не&nbsp;стать, а&nbsp;человеком?..",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
