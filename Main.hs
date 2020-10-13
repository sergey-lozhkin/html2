{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)

main :: IO ()
main = do
  generate2 "index"              "Home"                           ""
  generate2 "ActivitiesWorkshop" "ActivitiesWorkshop"             "Workshops"
  generate                       "ActivitiesHistory"              "Activities | History"
  generate                       "WorkshopGeneral"                "Workshops | General Info"
  generate                       "WorkshopActors"                 "Workshops | Actors"
  generate                       "WorkshopActorsDiscipline"       "Workshops | Actors | Дисциплина"
  generate                       "WorkshopActorsRenunciation"     "Workshops | Actors | Отречение"
  generate                       "WorkshopActorsTriple"           "Workshops | Actors | Триада"
  generate                       "WorkshopActorsEasiness"         "Workshops | Actors | Свобода и непринуждённость"
  generate                       "WorkshopActorsFeeling"          "Workshops | Actors | Творческое самочувствие"
  generate                       "WorkshopActorsPerception"       "Workshops | Actors | Восприятие"
  generate                       "WorkshopActorsExpressiveness"   "Workshops | Actors | Яркость"
  generate                       "WorkshopActorsCharacter"        "Workshops | Actors | Работа над образом"
  generate                       "WorkshopActdirs"                "Workshops | Actors & Directors"
  generate                       "WorkshopActdirsConditions"      "Workshops | Actors & Directors | Предлагаемые обстоятельства"
  generate                       "WorkshopActdirsSpace"           "Workshops | Actors & Directors | Пространство - тело - действие"
  generate                       "WorkshopActdirsPsycho"          "Workshops | Actors & Directors | Психологический жест"
  generate                       "WorkshopActdirsSpirit"          "Workshops | Actors & Directors | Атмосфера"
  generate                       "WorkshopActdirsText"            "Workshops | Actors & Directors | Отношение к техтовому материалу"
  generate                       "WorkshopActdirsAnalysis"        "Workshops | Actors & Directors | Метод действенного анализа"
  generate                       "WorkshopDirectors"              "Workshops | Directors"
  generate                       "WorkshopDirectorsCreation"      "Workshops | Directors | Создание мира"
  generate                       "WorkshopDirectorsExecution"     "Workshops | Directors | Замысел - Воплощение"
  generate                       "WorkshopDirectorsContext"       "Workshops | Directors | Мизансцена - язык режиссёра"
  generate                       "WorkshopDirectorsTimespace"     "Workshops | Directors | Время, пространство"
  generate                       "WorkshopDirectorsRhythm"        "Workshops | Directors | Ритм и музыкальность"
  generate                       "WorkshopDirectorsPlasticity"    "Workshops | Directors | Пластическое решение"
  generate                       "WorkshopDirectorsCollaboration" "Workshops | Directors | Работа с актёром"
  generate                       "WorkshopMusic"                  "Workshops | Music"
  generate                       "WorkshopDrama"                  "Workshops | Drama"
  generate                       "WorkshopDecorations"            "Workshops | Decorations"
  generate                       "ActorAlexLitovchenko"           "Team | Actors | Александр Литовченко"
  generate                       "ActorAlexLiznenkov"             "Team | Actors | Александр Лизненков"
  generate                       "ActorArtemMishin"               "Team | Actors | Артём Мишин"
  generate                       "ActorDmitryKoltsov"             "Team | Actors | Дмитрий Кольцов"
  generate                       "ActorIrinaBrodskaya"            "Team | Actors | Ирина Бродская"
  generate                       "ActorNataliaMandrychenko"       "Team | Actors | Hаталия Mандрыченко"
  generate                       "BoxOfficeInfo"                  "Box Office | General Info"
  generate                       "BoxOfficeTickets"               "Box Office | Buy Tickets"
  generate                       "EventDecorator"                 "Events | Декоратор"
  generate                       "EventJurden"                    "Events | Полоумный Журден"
  generate                       "EventMan"                       "Events | Пришёл мужчина к женщине"
  generate                       "EventMunchausen"                "Events | Тот самый Мюнхгаузен"
  generate                       "EventNight"                     "Events | Последняя ночь последнего царя"
  generate                       "EventsCalendar"                 "Events | Calendar"
  generate                       "EventsList"                     "Events"
  generate                       "EventSummerDay"                 "Events | Летний день"
  generate                       "Mission"                        "Team | Mission"
  generate                       "StaffAlexLitovchenko"           "Team | Board & Staff | Александр Литовченко"
  generate                       "StaffAlexLiznenkov"             "Team | Board & Staff | Александр Лизненков"
  generate                       "StaffDmitryKoltsov"             "Team | Board & Staff | Дмитрий Кольцов"
  generate                       "StaffIrinaVolkova"              "Team | Board & Staff | Ирина Волкова"
  generate                       "StaffLauraMukhina"              "Team | Board & Staff | Лора Мухина"
  generate                       "StaffMariaSmirnova"             "Team | Board & Staff | Мария Смирнова"
  generate                       "SupportUsDonations"             "Support & Volunteer | Donations"
  generate                       "SupportUsSponsors"              "Support & Volunteer | Sponsors"
  generate                       "SupportUsVolunteer"             "Support & Volunteer | Volunteer"
  generate                       "TeamActors"                     "Team | Actors"
  generate                       "TeamStaff"                      "Team | Board & Staff"

generate :: Text -> Text -> IO ()
generate elmModule title = writeFile (unpack $ "html/" <> elmModule <> ".html") $ renderText $ ark (arkTitle title) elmModule

generate2 :: FilePath -> Text -> Text -> IO ()
generate2 file elmModule title = writeFile ("html/" <> file <> ".html") $ renderText $ ark2 (arkTitle title) elmModule

arkHead :: Html () -> Text -> Html ()
arkHead title elmModule = do
    title_ title
    meta_ [charset_ "UTF-8"]
    meta_ [httpEquiv_ "X-UA-Compatible", content_ "IE=edge"]
    link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "css/fonts.css"]
    link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "css/bootstrap.min.css"]
    script_ [type_ "text/javascript", src_ "js/elm-runtime.min.js"] ""
    script_ [type_ "text/javascript", src_ $ "js/" <> elmModule <> ".min.js"] ""

arkStyle :: Text
arkStyle =
  "a:link{color:inherit;text-decoration:inherit;}" <>
  "a:visited{color:inherit;text-decoration:inherit;}" <>
  "a:hover{color:inherit;text-decoration:inherit;}" <>
  "a:active{color:inherit;text-decoration:inherit;}" <>
  "a{outline-style:none;outline-width:0px;}" <>
  ".zero-border{padding:0px;border-width:0px;margin:0px;}"
  -- "#all-caps{letter-spacing:0.5pt;}"

arkBody :: Text -> Html ()
arkBody elmModule = do
    noscript_ "Please, enable JavaScript"
    script_ [type_ "text/javascript"] $ "Elm.fullscreen(Elm." <> elmModule <> ");"

caArk :: Text
caArk = "Ark"

arkTitle :: Text -> Html ()
arkTitle "" = toHtml caArk
arkTitle t  = toHtml $ caArk <> " | " <> t

ark :: Html () -> Text -> Html ()
ark title elmModule = do
  doctype_
  html_ [lang_ "en"] $ do
    head_ $ arkHead title elmModule >> style_ arkStyle
    body_ $ arkBody elmModule

ark2 :: Html () -> Text -> Html ()
ark2 title elmModule = do
  doctype_
  html_ [lang_ "en"] $ do
    head_ $ do
      arkHead title elmModule
      style_ $
        arkStyle <>
        ".carousel{width:100%;height:100%;}" <>
        ".carousel-inner{width:100%;height:100%;}" <>
        ".carousel .item{width:100%;height:100%;}" <>
        ".carousel-inner>.item{width:100%;height:100%;}" <>
        ".carousel-inner>.item>img{width:100%;height:100%;}"
    body_ $ do
      arkBody elmModule
      script_ [type_ "text/javascript", src_ "js/jquery.min.js"] ""
      script_ [type_ "text/javascript", src_ "js/bootstrap.min.js"] ""
