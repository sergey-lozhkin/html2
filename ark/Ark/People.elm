module Ark.People where

import Dict as D
import Dict (Dict)
import Ark.Parameters (..)
import Ark.Utils (..)

-- Enumeration
staffAlexLitovchenko = 1000
staffAlexLiznenkov = 1001
staffIrinaVolkova = 1002
staffLauraMukhina = 1003
staffMariaSmirnova = 1004
staffDmitryKoltsov = 1005
actorAlexLitovchenko = 2000
actorAlexLiznenkov = 2001
actorArtemMishin = 2002
actorJuliaJarova = 2003
actorNataliaMandrychenko = 2004
actorIrinaBrodskaya = 2005
actorDmitryKoltsov = 2006

-- Structure
type PersonItem = {
    engFirstName: String, engLastName: String, engPosition: String
  , rusFirstName: String, rusLastName: String, rusPosition: String
  , image: String
  , quote: [String]
  , description: [String]
  , bio: [(String, String)]           -- (years, place)
  , shows: [String]
  , links: [(String, String, String)] -- (description-on-left, link-text, link-url)
  }

personBlank = {
    engFirstName = "", engLastName = "", engPosition = ""
  , rusFirstName = "", rusLastName = "", rusPosition = ""
  , image = ""
  , quote =  []
  , description = []
  , bio = []
  , shows = []
  , links = []
  }

-- Data
peopleMap : Dict Int PersonItem
peopleMap = D.fromList [
  ( staffAlexLiznenkov,
  { personBlank
  | engFirstName <- "Alexander", engLastName <- "LIZNENKOV", engPosition <- "President"
  , rusFirstName <- "Александр", rusLastName <- "ЛИЗНЕНКОВ", rusPosition <- "Президент"
  , image <- "staff-alex-liznenkov-photo.png"
  , description <- [
      "Окончил Горьковское театральное училище. Работал в&nbsp;театрах Минска, Калининграда, Mountain&nbsp;View&nbsp;(CA)."
    , "Один из&nbsp;создателей и&nbsp;учредителей Creative&nbsp;Association&nbsp;ARK."
    ]
  , bio <- [
      ( "2007&mdash;2012", "Инициатор и&nbsp;художественный руководитель любительского&nbsp;театра&nbsp;«Ю»" )
    , ( "1998&mdash;2007", "Основатель театра-студии «На&nbsp;Backyard'e» («На&nbsp;задворках»)" )
    ]
  } )
  ,
  ( actorAlexLiznenkov,
  { personBlank
  | engFirstName <- "Alexander", engLastName <- "LIZNENKOV", engPosition <- "Director, Actor"
  , rusFirstName <- "Александр", rusLastName <- "ЛИЗНЕНКОВ", rusPosition <- "Режиссёр, актёр"
  , image <- "actor-alex-liznenkov-photo.png"
  , description <- [
      "Окончил Горьковское театральное училище. Работал в&nbsp;театрах Минска, Калининграда, Mountain&nbsp;View&nbsp;(CA)."
    , "Поставленные спектакли:"
    , "М.&nbsp;де&nbsp;Гельдерод «Эскориал»"
    , "Н.&nbsp;С.&nbsp;Гумилев «В&nbsp;панцире&nbsp;железном»"
    , "Л.&nbsp;Андреев «Иуда&nbsp;Искариот»"
    , "М.&nbsp;Зощенко «Преступление&nbsp;и&nbsp;наказание»"
    , "Г.&nbsp;Горин «Забыть&nbsp;Герострата»"
    , "«Оливье» из&nbsp;одноактных пьес французских авторов «Чего&nbsp;не&nbsp;сделаешь&nbsp;ради&nbsp;Вас…»"
    , "Г.&nbsp;Барилли «Медовый&nbsp;месяц»"
    , "Г.&nbsp;Пинтер “The&nbsp;Lover”"
    , "А.&nbsp;С.&nbsp;Пушкин «Маленькие&nbsp;трагедии»"
    , "«С&nbsp;Днём рожденья, папочка!» по&nbsp;пьесе А.&nbsp;Строганова «Сатира»"
    , "Новогодняя сказка 2010-11&nbsp;г."
    , "Н.&nbsp;В.&nbsp;Гоголь «Женитьба»"
    , "А.&nbsp;Линдгрен «Карлсон,&nbsp;который&nbsp;живёт...»"
    , "С.&nbsp;Злотников «Пришёл&nbsp;мужчина&nbsp;к&nbsp;женщине»"
    , "Д.&nbsp;Черчилль «Декоратор»"
    ]
  } )
  ,
  ( staffIrinaVolkova,
  { personBlank
  | engFirstName <- "Irina", engLastName <- "Volkova", engPosition <- "Chief Financial Officer"
  , rusFirstName <- "Ирина", rusLastName <- "Волкова", rusPosition <- "Финансовый директор"
  , image <- "staff-irina-volkova-photo.png"
  , quote <- [
      "«Я полюбила не&nbsp;только театр, но&nbsp;и&nbsp;людей, которые беззаветно служат ему. Ради них с&nbsp;удовольствием работаю рядом.»"
    ]
  , description <- [
      "Закончила Горьковский Государственый Университет по&nbsp;специальности «Экономика». Преподавала в&nbsp;Хмельницком Технологическом Институте Бытового Обслуживания на&nbsp;кафедре Экономики и&nbsp;Бухгалтерского Учета."
    ]
  , bio <- [
      ( "С&nbsp;2013&nbsp;года", "Финансовый директор Creative&nbsp;Association&nbsp;ARK" )
    , ( "2008&mdash;2012", "Финансовый директор любительского&nbsp;театра&nbsp;«Ю»" )
    ]
  } )
  ,
  ( staffAlexLitovchenko,
  { personBlank
  | engFirstName <- "Alexander", engLastName <- "Litovchenko", engPosition <- "Vice President"
  , rusFirstName <- "Александр", rusLastName <- "Литовченко", rusPosition <- "Вице-президент"
  , image <- "staff-alex-litovchenko-photo.png"
  , description <- [
      "Окончил Киевский театральный институт им.&nbsp;Карпенко-Карого. Работал в&nbsp;театре им.&nbsp;Грибоедова в&nbsp;Тбилиси, в&nbsp;Московском театре-студии Анатолия Васильева, Киевском&nbsp;Театре&nbsp;«Гротеск». Играл в&nbsp;театре “Ross&nbsp;Valley&nbsp;Players” в&nbsp;спектакле Нила Саймона «Смех&nbsp;на&nbsp;23-м&nbsp;этаже». Работал с&nbsp;американскими профессиональными актёрами в&nbsp;голливудской студии “Green&nbsp;House&nbsp;Theatrе”, Santa&nbsp;Monica,&nbsp;CA."
    , "Один из&nbsp;создателей и&nbsp;учредителей Creative&nbsp;Association&nbsp;ARK."
    ]
  } )
  ,
  ( actorAlexLitovchenko,
  { personBlank
  | engFirstName <- "Alexander", engLastName <- "Litovchenko", engPosition <- "Director, Actor"
  , rusFirstName <- "Александр", rusLastName <- "Литовченко", rusPosition <- "Режиссёр, актёр"
  , image <- "actor-alex-litovchenko-photo.png"
  , description <- [
      "Окончил Киевский театральный институт им.&nbsp;Карпенко-Карого. Работал в&nbsp;театре им.&nbsp;Грибоедова в&nbsp;Тбилиси, в&nbsp;Московском театре-студии Анатолия Васильева, Киевском&nbsp;Театре&nbsp;«Гротеск». Играл в&nbsp;театре “Ross&nbsp;Valley&nbsp;Players” в&nbsp;спектакле Нила Саймона «Смех&nbsp;на&nbsp;23-м&nbsp;этаже». Работал с&nbsp;американскими профессиональными актёрами в&nbsp;голливудской студии “Green&nbsp;House&nbsp;Theatrе”, Santa&nbsp;Monica,&nbsp;CA."
    , "С&nbsp;1999&nbsp;г. ставил спектакли в&nbsp;Доминиканском Университете штата Калифорния, принимал участие в&nbsp;ежегодных фестивалях “Fringe&nbsp;of&nbsp;Marin”. Обладатель первых мест за&nbsp;лучшую режиссуру."
    , "Поставил для&nbsp;американского зрителя следующие спектакли:"
    , "Ж.&nbsp;Б.&nbsp;Мольер «Лекарь&nbsp;поневоле»"
    , "А.&nbsp;П.&nbsp;Чехов «Платонов», Чеховские&nbsp;одноактные&nbsp;пьесы"
    , "А.&nbsp;де&nbsp;Сент-Экзюпери «Маленький&nbsp;принц»"
    , "Э.&nbsp;Ионеско «Этюд&nbsp;на&nbsp;четверых»"
    , "Пьесы современных американских авторов в&nbsp;театре&nbsp;“Exit” в&nbsp;Сан-Франциско"
    , "Спектакль по&nbsp;пьесе Н.&nbsp;Эрдмана «Самоубийца» для&nbsp;русской публики"
    ]
  } )
  ,
  ( actorJuliaJarova,
  { personBlank
  | engFirstName <- "Julia", engLastName <- "Jarova", engPosition <- "Actress"
  , rusFirstName <- "Юлия", rusLastName <- "Жарова", rusPosition <- "Актриса"
  , image <- "actor-julia-jarova-photo.png"
  } )
  ,
  ( actorArtemMishin,
  { personBlank
  | engFirstName <- "Artem", engLastName <- "Mishin", engPosition <- "Actor"
  , rusFirstName <- "Артём", rusLastName <- "Мишин", rusPosition <- "Актёр"
  , image <- "actor-artem-mishin-photo.png"
  , quote <- [
      "«Искусство&thinsp;&mdash;&thinsp;отражение и&nbsp;познание жизни; не зная жизни, творить нельзя»"
    , "Константин Сергеевич Станиславский"
    ]
  , description <- [
      "Окончил Санкт-Петербургский Балтийский Государственный Технический Университет им.&nbsp;Д.&nbsp;Ф.&nbsp;Устинова, по&nbsp;специальности инженер-конструктор."
    , "Вырос на&nbsp;подмостках Драматического Театра ДК&nbsp;Культуры&nbsp;им.&nbsp;Ф.&nbsp;Э.&nbsp;Дзержинского в&nbsp;Петербурге, там&nbsp;же окончил музыкальную школу, часто принимал участие в&nbsp;проектах киностудии «Ленфильм»."
    , "В&nbsp;первый раз вышел на профессиональную сцену в&nbsp;возрасте 12&nbsp;лет, в&nbsp;спектакле «Имя твоё» П.&nbsp;Проскурина в&nbsp;постановке Тверского Академического Театра Драмы. Играл с&nbsp;такими Народными Артистами России, как Александр Чуйков, Валерий Гатаев и&nbsp;Наина Хонина."
    , "В&nbsp;Сан-Франциско окончил Театральную Мастерскую “Jean Shelton Studios” и&nbsp;принимал участие во&nbsp;многих постановках."
    , "Снимается в&nbsp;кино и&nbsp;активно участвует в&nbsp;творческой жизни Creative&nbsp;Association&nbsp;ARK."
    , "Член Гильдии Киноактёров (SAG) и&nbsp;Федерации Телевидения и&nbsp;Радио&nbsp;США&nbsp;(AFTRA)."
    ]
  , links <- [
      ( "IMDB Link: ", "http://www.imdb.com/name/nm3175916/", "http://www.imdb.com/name/nm3175916/" )
    , ( "Personal Website: ", "www.artemmishin.com", "http://www.artemmishin.com" )
    ]
  } )
  ,
  ( actorNataliaMandrychenko,
  { personBlank
  | engFirstName <- "Natalia", engLastName <- "Mandrychenko", engPosition <- "Actress"
  , rusFirstName <- "Hаталия", rusLastName <- "Mандрыченко", rusPosition <- "Актриса"
  , image <- "actor-natalia-mandrychenko-photo.png"
  , description <- [
      "Окончила Актерский Факультет Харьковского Института Искусств. Принимала участие во&nbsp;многих театральных постановках в&nbsp;Харькове&nbsp;(Украина) и&nbsp;Сан-Франциско&nbsp;(Калифорния)."
    , "Активно учавствует в&nbsp;творческой жизни Creative&nbsp;Association&nbsp;ARK."
    ]
  } )
  ,
  ( actorIrinaBrodskaya,
  { personBlank
  | engFirstName <- "Irina", engLastName <- "Brodskaya", engPosition <- "Actress"
  , rusFirstName <- "Ирина", rusLastName <- "Бродская", rusPosition <- "Актриса"
  , image <- "female-1.png"
  , description <- [
      "Окончила Нижегородское Театральное училище им.&nbsp;Евгения Евстигнеева (мастерская В.&nbsp;Ф.&nbsp;Богомазова). Будучи студенткой третьего курса, участвовала в&nbsp;спектаклях Нижегородского театра Драмы&nbsp;им.&nbsp;М.&nbsp;Горького, затем была принята в&nbsp;труппу, где три года играла на&nbsp;сцене театра, в&nbsp;том числе, заглавные роли."
    , "После переезда в&nbsp;Москву поступила в&nbsp;Драматический театр им.&nbsp;К.&nbsp;С.&nbsp;Станиславско. Работала с&nbsp;такими режиссёрами, как&nbsp;С.&nbsp;Я.&nbsp;Спивак, В.&nbsp;В.&nbsp;Мирзоев, Т.&nbsp;В.&nbsp;Ахрамкова, А.&nbsp;В.&nbsp;Галибин, М.&nbsp;М.&nbsp;Казаков. Снималась в&nbsp;кино, сериалах, принимала участие в&nbsp;проектах на&nbsp;радио «Культура» (Москва, Санкт-Петербург). На&nbsp;съёмочной площадке работала с&nbsp;режиссёрами: Валерием Усковым, Мурадом Ибрагимбековым, Александром Касаткиным, Леонидом Эдлиным, Владимиром Попковым и&nbsp;другими."
    , "Летом 2011&nbsp;года переехала с&nbsp;семьёй в&nbsp;калифорнийский Стэнфорд. После знакомства с&nbsp;режиссёром Александром Лизненковым начала активно репетировать и&nbsp;вскоре сыграла в&nbsp;двух постановках театра&nbsp;«Ю» в&nbsp;Mountain&nbsp;View,&nbsp;CA&thinsp;&ndash;&thinsp;у&nbsp;Александра Лизненкова и&nbsp;Даниель Хейфец."
    , "В&nbsp;Creative&nbsp;Association&nbsp;ARK работает вместе с&nbsp;режиссёрами и&nbsp;артистами Александром Лизненковым и&nbsp;Александром Литовченко, а&nbsp;так&nbsp;же Артёмом Мишиным, Натальей Мандрыченко и&nbsp;другими членами труппы. Активно участвует в&nbsp;проводимых читках пьес. Занята сразу в&nbsp;нескольких театральных проектах CA&nbsp;ARK."
    , "В&nbsp;свободное время профессионально занимается танцами и&nbsp;вокалом."
    , "Сыгранные роли:"
    , "Дина Фёдоровна в&nbsp;спектакле «Пришёл мужчина к&nbsp;женщине», постановка Александра Лизненкова."
    ]
  } )
  ,
  ( staffLauraMukhina,
  { personBlank
  | engFirstName <- "Laura", engLastName <- "Mukhina", engPosition <- "Box Office Manager"
  , rusFirstName <- "Лора", rusLastName <- "Мухина", rusPosition <- "Директор по продаже билетов"
  , image <- "staff-laura-mukhina-photo.png"
  , description <- [
      "Родилась в&nbsp;Киеве, там&nbsp;же&nbsp;закончила среднюю школу и&nbsp;университет."
    , "В&nbsp;1991&nbsp;году со&nbsp;всей семьей приехала в&nbsp;Сан-Франциско. Теперь это мой родной город. Люблю его и&nbsp;счастлива,&nbsp;что живу здесь."
    , "Два года назад встретила замечательных людей: Александра Лизненкова и&nbsp;Ирину Волкову. Они&nbsp;с&nbsp;Александром Литовченко и&nbsp;группой профессиональных актёров организовали Творческое&nbsp;Объединение&nbsp;КОВЧЕГ."
    , "Я очень рада, что могу оказывать им посильную помощь и&nbsp;поддержку в&nbsp;становлении театра." ]
  } )
  ,
  ( staffMariaSmirnova,
  { personBlank
  | engFirstName <- "Maria", engLastName <- "Smirnova", engPosition <- "Sound Director, Light Board Operator"
  , rusFirstName <- "Мария", rusLastName <- "Смирнова", rusPosition <- "Звукорежиссёр, светооператор"
  , image <- "staff-maria-smirnova-photo.png"
  } )
  ,
  ( staffDmitryKoltsov,
  { personBlank
  | engFirstName <- "Dmitry", engLastName <- "Koltsov", engPosition <- "Technical&nbsp;Director"
  , rusFirstName <- "Дмитрий", rusLastName <- "Кольцов", rusPosition <- "Технический&nbsp;директор"
  , image <- "staff-dmitry-koltsov-photo.png"
  } )
  ,
  ( actorDmitryKoltsov,
  { personBlank
  | engFirstName <- "Dmitry", engLastName <- "Koltsov", engPosition <- "Director, Actor"
  , rusFirstName <- "Дмитрий", rusLastName <- "Кольцов", rusPosition <- "Режиссёр, актёр"
  , image <- "male-1.png"
  } )
  -- ,
  -- ( staffAlexLitovchenko,
  -- { personBlank
  -- | engFirstName <- "", engLastName <- "", engPosition <- ""
  -- , rusFirstName <- "", rusLastName <- "", rusPosition <- ""
  -- , image <- ""
  -- , quote <- []
  -- , description <- []
  -- , bio <- []
  -- , shows <- []
  -- } )
  ]

-- Utilities
peopleInfo = fromJust . flip D.lookup peopleMap

-- Visual representation
staffPerson = person
actorPerson = person

person pid config =
  let
    u = config.step
    uh = config.step `div` 2
    u2 = 2*config.step
    ps = config.thumbWidth
    tw = config.contentWidth - ps - config.thumbWidth - 3*u2
    info = peopleInfo pid

    descriptionPar = width tw . leftAligned . personNormalText
    descriptionList = flow down . (::) (spaceY u) . intersperse (spaceY uh) . map descriptionPar
    description = listDef empty descriptionList info.description

    quotePar = width tw . leftAligned . personQuoteText
    quoteAuthor = width tw . rightAligned . personQuoteAuthorText
    quote = case info.quote of
      []        -> empty
      [txt]     -> flow down [ spaceY u, quotePar txt ]
      [txt, au] -> flow down [ spaceY u, quotePar txt, quoteAuthor au ]

    bioBox (year, txt) = [
      width tw <| leftAligned <| personYearText year,
      padL u2 <| width (tw - u2) <| leftAligned <| personBioText txt ]
    bioList = flow down . (::) (spaceY u) . concat . intersperse ([spaceY uh]) . map bioBox
    bio = listDef empty bioList info.bio

    linksPar (desc, txt, url) = flow right [
      leftAligned <| personNormalText desc,
      leftAligned <| Text.link url <| line Under <| personNormalText txt ]
    linksList = flow down . (::) (spaceY u) . intersperse (spaceY uh) . map linksPar
    links = listDef empty linksList info.links

  in
    color personBackColor <| padLRTB u2 (config.thumbWidth + u2) u2 u2 <| flow right [
      fittedImage ps ps ("assets/" ++ info.image),
      spaceX u2,
      width tw <| flow down [
        width tw <| leftAligned <| personTitleText <| info.engFirstName ++ " " ++ info.engLastName ++ " | " ++ info.engPosition
      , width tw <| leftAligned <| personTitleText <| info.rusFirstName ++ " " ++ info.rusLastName ++ " | " ++ info.rusPosition
      , quote
      , description
      , bio
      , links
      ]]
