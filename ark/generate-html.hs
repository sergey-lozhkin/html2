{-# LANGUAGE OverloadedStrings #-}

module Main where

import Text.Blaze.Html5
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5 as H
import qualified Text.Blaze.Html5.Attributes as A
import Text.Blaze.Html.Renderer.Utf8 (renderHtml)
import qualified Data.ByteString.Lazy as B

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

generate :: String -> String -> IO ()
generate elmModule title = B.writeFile (elmModule ++ ".html") $ renderHtml $ ark (arkTitle title) elmModule

generate2 :: FilePath -> String -> String -> IO ()
generate2 file elmModule title = B.writeFile (file ++ ".html") $ renderHtml $ ark2 (arkTitle title) elmModule

arkHead :: Html -> String -> Html
arkHead title elmModuleS = do
    H.title title
    H.meta ! charset "UTF-8"
    H.meta ! httpEquiv "X-UA-Compatible" ! content "IE=edge"
    H.link ! rel "stylesheet" ! href "css/fonts.css" ! type_ "text/css" ! charset "utf-8"
    H.link ! rel "stylesheet" ! href "css/bootstrap.min.css" ! type_ "text/css" ! charset "utf-8"
    H.script ! type_ "text/javascript" ! src "js/elm-runtime.min.js" $ ""
    H.script ! type_ "text/javascript" ! src (toValue $ "js/" ++ elmModuleS ++ ".min.js") $ ""

arkStyle :: Html
arkStyle = do
  "a:link{color:inherit;text-decoration:inherit;}"
  "a:visited{color:inherit;text-decoration:inherit;}"
  "a:hover{color:inherit;text-decoration:inherit;}"
  "a:active{color:inherit;text-decoration:inherit;}"
  "a{outline-style:none;outline-width:0px;}"
  ".zero-border{padding:0px;border-width:0px;margin:0px;}"
  -- "#all-caps{letter-spacing:0.5pt;}"

arkBody :: String -> Html
arkBody elmModuleS = do
    H.noscript "Please, enable JavaScript"
    H.script ! type_ "text/javascript" $ toHtml $ "Elm.fullscreen(Elm." ++ elmModuleS ++ ");"

caArk :: String
-- caArk = "Creative Association ARK"
caArk = "Ark"

arkTitle :: String -> Html
arkTitle "" = toHtml caArk
arkTitle t  = toHtml $ caArk ++ " | " ++ t

ark :: Html -> String -> Html
ark title elmModuleS =
  docTypeHtml ! lang "en" $ do
    H.head $ arkHead title elmModuleS >> H.style arkStyle
    H.body $ arkBody elmModuleS

ark2 :: Html -> String -> Html
ark2 title elmModuleS =
  docTypeHtml ! lang "en" $ do
    H.head $ do
      arkHead title elmModuleS
      H.style $ do
        arkStyle
        ".carousel{width:100%;height:100%;}"
        ".carousel-inner{width:100%;height:100%;}"
        ".carousel .item{width:100%;height:100%;}"
        ".carousel-inner>.item{width:100%;height:100%;}"
        ".carousel-inner>.item>img{width:100%;height:100%;}"
    H.body $ do
      arkBody elmModuleS
      H.script ! type_ "text/javascript" ! src "js/jquery.min.js" $ ""
      H.script ! type_ "text/javascript" ! src "js/bootstrap.min.js" $ ""
