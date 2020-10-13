module WorkshopActdirs where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.SideMenu (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopActivities

  [ ("drama",              "WorkshopDrama.html",       False)
  , ("actors",             "WorkshopActors.html",      False)
  , ("directors",          "WorkshopDirectors.html",   False)
  , ("actors & directors", "WorkshopActdirs.html",     True)
  , ("music",              "WorkshopMusic.html",       False)
  , ("decorations",        "WorkshopDecorations.html", False)
  , ("general info",       "WorkshopGeneral.html",     False)
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
        , ("атмосфера",                                                              "WorkshopActdirsSpirit.html",     False)
        , ("отношение к&nbsp;тексту",                                                "WorkshopActdirsText.html",       False)
        , ("метод действенного анализа",                                             "WorkshopActdirsAnalysis.html",   False)
        ]
      ]

    description = flow down [
      width d1w <| leftAligned <| quoteText "«Изменить принцип воспитания (актёра), ввести в&nbsp;корень его СВОБОДУ, культуру «свободы», «пассивности», «отдачи своим ощущениям», «своим мало осознаваемым действиям», «веры в&nbsp;себя». Если не&nbsp;поставить главной целью: воспитание интуиции на&nbsp;основах полной за&nbsp;неё ответственности. Я&nbsp;делаю ставку на&nbsp;гениальность, сидящую в&nbsp;глубине каждого человека и&nbsp;появляющуюся только при&nbsp;абсолютной свободе и&nbsp;при чувстве абсолютной&nbsp;же ответственности».",
      width d1w <| rightAligned <| quoteText "Николай Васильевич Демидов",
      spaceY u,
      width d1w <| leftAligned <| normalText "При&nbsp;желании, от&nbsp;актёра можно добиться всего. Его можно не&nbsp;только увлечь, куда тебе нужно, но&nbsp;даже и&nbsp;совсем почти переделать. Переделать весь его творческий аппарат. Но&nbsp;для&nbsp;этого нужно сочетание трёх исключительных условий.",
      spaceY u2,
      width d1w <| leftAligned <| titleText "Первое&thinsp;&mdash;&thinsp;умение это делать",
      spaceY u,
      width d1w <| leftAligned <| normalText "А&nbsp;для&nbsp;этого, кроме такта и&nbsp;желания, нужна ещё и&nbsp;соответствующая «школа» со&nbsp;множеством выработанных приёмов. А&nbsp;где она? То, чему учился&thinsp;&mdash;&thinsp;не&nbsp;оправдало себя, или оказалось беспочвенным теоретизированием, или, наоборот&thinsp;&mdash;&thinsp;такой грубой насильнической практикой, что&nbsp;пришлось бросить. Так&nbsp;и&nbsp;остался ни&nbsp;с&nbsp;чем. На&nbsp;самодельщине же&nbsp;далеко не&nbsp;уедешь.",
      spaceY u2,
      width d1w <| leftAligned <| titleText "Второе условие&thinsp;&mdash;&thinsp;нужна энергия",
      spaceY u,
      width d1w <| leftAligned <| normalText "Энергия и&nbsp;терпение&thinsp;&mdash;&thinsp;по&nbsp;меньшей мере, фанатические. Учтите хотя&nbsp;бы то, что живописец, например, наложил краски, какие ему надо, пришел на&nbsp;другой день&thinsp;&mdash;&thinsp;они так&nbsp;и&nbsp;остались&thinsp;&mdash;&thinsp;продолжай дальше. А&nbsp;с&nbsp;живым человеком, с&nbsp;актёром, это куда посложнее: сегодня вы добились от&nbsp;него, а&nbsp;завтра уже ничего и&nbsp;не&nbsp;осталось, все «краски» полиняли, сползли, перемешались... Актёр пытается вызвать вчерашнее самочувствие, но&nbsp;его уже нет, и&nbsp;он принужден наспех повторять только грубые внешние выражения своих вчерашних чувств: вчерашние позы, жесты, улыбки, интонации... т.е.&nbsp;выхолощенную, обескровленную форму.",
      spaceY u2,
      width d1w <| leftAligned <| titleText "И&nbsp;третье необходимое условие&thinsp;&mdash;&thinsp;время",
      spaceY u,
      width d1w <| leftAligned <| normalText "Чтобы добиться чего-нибудь подлинного и&nbsp;достойного названия художественного произведения&thinsp;&mdash;&thinsp;большею частью нужны месяцы и&nbsp;месяцы. Да&nbsp;и&nbsp;то — для&nbsp;опытного, умелого режиссёра и&nbsp;педагога.",
      spaceY u,
      width d1w <| leftAligned <| normalText "А&nbsp;чтобы сделать хороший театр, нужны целые годы. В&nbsp;неделю, в&nbsp;месяц людей не&nbsp;перевоспитаешь и&nbsp;таланта не&nbsp;разовьешь. А&nbsp;тут&thinsp;&mdash;&thinsp;давай поскорее спектакль! И&nbsp;вот все благие намерения откладываются до&nbsp;какого-то предполагаемого «дальнейшего», а&nbsp;пока, скрепя сердце, приходится действовать всякими более упрощёнными способами, лишь&nbsp;бы не&nbsp;задержать выпуск спектакля.",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
