module WorkshopActorsDiscipline where

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
        [ ("дисциплина",                      "WorkshopActorsDiscipline.html",   True)
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
      width d1w <| leftAligned <| titleText "Дисциплина",
      spaceY u,
      width d1w <| leftAligned <| quoteText "«Aктёр должен начать с&nbsp;того, чтобы уничтожить себя, свою личность, всю свою особенность и&nbsp;сделаться тем лицом, какое ему дал автор, он должен ходить, говорить, мыслить, чувствовать, плакать, смеяться, как хочет автор»",
      width d1w <| rightAligned <| quoteText "Михаил Семёнович Щепкин",
      spaceY u,
      width d1w <| leftAligned <| normalText "Тренинг «Дисциплина» направлен в&nbsp;первую очередь на&nbsp;возможность актёра-студента контролировать себя: например, сидеть ровно, держа спину, на&nbsp;кончике стула. Данная поза говорит о&nbsp;готовности человека к&nbsp;действию. Научиться этому в&nbsp;век «свободы» очень сложно, ибо каждый чувствует за&nbsp;этим некое вмешательство в&nbsp;его «свободу», которая на&nbsp;самом деле является лишь распущенностью и&nbsp;вялостью, из&nbsp;которых, в&nbsp;свою очередь, и&nbsp;прорастает отсутствие внимания, воли, готовности к&nbsp;действию. Начать с&nbsp;малого и&nbsp;добиться определённых результатов на&nbsp;этом пути и&nbsp;есть одна из&nbsp;главных задач данного тренинга. Это не&nbsp;может произойти сразу. Это длительный, но&nbsp;необходимый путь: поза, дыхание, контроль, готовность к&nbsp;действию, cвобода в&nbsp;данных предлагаемых обстоятельствах.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Вам необходимо спокойное отношение к&nbsp;самому себе, чтобы глубоко уяснить тот факт, что дисциплина&thinsp;&mdash;&thinsp;это просто проявление вашего глубинного добра; и&nbsp;вы должны приветствовать и&nbsp;уважать себя, освободиться от&nbsp;сомнений и&nbsp;неуверенности, чтобы реализовать своё глубинное добро и&nbsp;душевное здоровье для&nbsp;пользы других людей.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Приступая к&nbsp;работе с&nbsp;актёрами по&nbsp;тренингу «Дисциплина», мы тем&nbsp;самым одновременно добиваемся нескольких задач.",
      spaceY u,
      width d1w <| leftAligned <| normalText "Итак, обращаем внимание на&nbsp;осанку, посадку, походку на&nbsp;всем протяжении репетиции, вне&nbsp;зависимости от&nbsp;того, какой материал разрабатывается. Постоянное упоминание о&nbsp;необходимости держать спину ровно и&nbsp;сидеть на&nbsp;краешке стула вырабатывает условный рефлекс в&nbsp;человеке, и&nbsp;он начинает следить за&nbsp;выполнением этих требований. Здесь вступает в&nbsp;силу работа над&nbsp;волей, ибо&nbsp;постоянное напоминание себе и&nbsp;выполнение требований тренирует не&nbsp;только прямую спину, но&nbsp;и&nbsp;воспитывает волю. В&nbsp;процессе репетиции, когда внимание актёров сосредоточено на&nbsp;задаче, необходимо следить за&nbsp;тем, чтобы тренинг «Дисциплина» по-прежнему выполнялся, невзирая ни&nbsp;на&nbsp;что. В&nbsp;этом случае происходит постепенное расширение круга внимания, в&nbsp;который попадает актёр, внимательно наблюдающий за&nbsp;собой, а,&nbsp;также, задача, которая решается в&nbsp;процессе репетиции. И&nbsp;в&nbsp;этот момент мы начинаем понимать основное требование сцены к&nbsp;вниманию, начинаем контролировать объект внимания и&nbsp;учимся переносу внимания с&nbsp;одного объекта на&nbsp;другой, не&nbsp;теряя связи с&nbsp;первым объектом. Если сложно на&nbsp;первых порах держать спину прямо, сидеть на&nbsp;краешке стула&thinsp;&mdash;&thinsp;значит, необходимо, чтобы каждый актёр нашёл оправдание данной позы в&nbsp;данный момент времени. Для&nbsp;этого актёрам необходимо включить воображение и&nbsp;найти в&nbsp;нём оправдательную точку для отсчёта. Как&nbsp;можно заметить, начинается работа с&nbsp;воображением. Таким образом, занимаясь тренингом «Дисциплина» на&nbsp;протяжении 3-х&nbsp;месяцев (срок приблизительный), актёры соприкасаются и&nbsp;работают со&nbsp;следующими понятиями: воля, внимание, воображение, сосредоточение и&nbsp;готовность к&nbsp;действию. За&nbsp;3&nbsp;месяца привычка сидеть ровно должна стать действенной без&nbsp;упоминания со&nbsp;стороны, улучшится восприимчивость, появится определённая свобода и&nbsp;непринуждённость в&nbsp;позах. А&nbsp;значит, самое время переходить к&nbsp;следующему этапу тренинга&thinsp;&mdash;&thinsp;«Отречению».",
      empty ]

    photos = empty

  in
    color backColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBox, description, photos ],
        empty ]
