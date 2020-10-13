module Ark.Shows where

import Dict as D
import Dict (Dict)
import Ark.Parameters (..)
import Ark.Paypal (..)
import Ark.Utils (..)

-- Elm: no type classes :(
-- showDaddy = 2014001
showManWoman = 2014002
showJurden = 2014003
showLastNight = 2014004
showSummerDay = 2014005
showDecorator = 2014006
-- showMunchausen = 2014007

-- Structure
type ShowItem =
  { author: String
  , title: String
  , url: String
  , image: String
  , reading: Bool
  , events: [EventItem]
  , photos: [String]
  , smallQuote: [String]
  , company: Maybe String
  }
type EventItem =
  { city: String
  , date: String
  , place: String
  , placeUrl: String
  , button: Maybe Element
  }

blankShow = { author = "", title = "", url = "", image = "", reading = False, events = [], photos = [], smallQuote = [], company = Nothing }
blankEvent = { city = "", date = "", place = "", placeUrl = "", button = Nothing }

-- Data
showMap : Dict Int ShowItem
showMap = D.fromList [
  -- ( showDaddy,
  --   { blankShow
  --   | author = "Александр СТРОГАНОВ"
  --   , title = "С Днём рожденья, папочка!"
  --   , url = "EventDaddy.html"
  --   , image = "details-satira.jpg"
  --   , reading = False
  --   , events = [
  --     { blankEvent
  --     | city = "SACRAMENTO"
  --     , date = "14 июня 8pm"
  --     , place = "The Center for spiritual awareness"
  --     , placeUrl = "http://www.csasacramento.org/"
  --     , button = (Just paypalButton_Daddy_20140614)
  --     },
  --     { blankEvent
  --     | city = "SAN FRANCISCO"
  --     , date = "6 июля 5pm"
  --     , place = "Shelton Theater"
  --     , placeUrl = "http://www.sheltontheater.org/?page_id=102"
  --     , button = (Just paypalButton_Daddy_20140706)
  --     }
  --     ]
  --   , photos = [ "satira-01.jpg", "satira-02.jpg" ]
  --   , smallQuote = [ "Каждый зритель, благодаря нашим спонсорам, получит от устроителей gift&nbsp;card $25 в популярный ресторан." ]
  --   } )
  -- ,
  ( showManWoman,
    { blankShow
    | author <- "Семён ЗЛОТНИКОВ"
    , title <- "Пришёл мужчина к женщине"
    , url <- "EventMan.html"
    , image <- "details-man-woman.jpg"
    , events <- [
      -- { blankEvent
      -- | city <- "SACRAMENTO"
      -- , date <- "19 июля 7pm"
      -- , place <- "24th Street Theatre"
      -- , placeUrl <- "http://www.sierra2.org/Sierra2Center/24thStreetTheatre/tabid/59/Default.aspx"
      -- , button <- (Just paypalButton_Man_20140719)
      -- }
      -- ,
      -- { blankEvent
      -- | city <- "SAN FRANCISCO"
      -- , date <- "17 августа 5pm"
      -- , place <- "Shelton Theater"
      -- , placeUrl <- "http://www.sheltontheater.org/?page_id=102"
      -- , button <- (Just paypalButton_Man_20140817)
      -- }
      ]
    , photos <- [ "man-woman-01.png", "man-woman-02.png", "man-woman-03.png", "man-woman-05.png" ]
    -- , smallQuote <- [ "Каждый зритель, благодаря нашим спонсорам, получит от устроителей gift&nbsp;card $25 в популярный ресторан." ]
    } )
  ,
  -- ( showJurden,
  --   { blankShow
  --   | author = "Михаил БУЛГАКОВ"
  --   , title = "Полоумный Журден"
  --   , url = "EventJurden.html"
  --   , image = "details-jurden.jpg"
  --   , reading = True
  --   , events = [
  --     { blankEvent
  --     | city = "MOUNTAIN VIEW"
  --     , date = "19 апреля 4pm"
  --     , place = "90 Sierra Vista Ave\nMountain View, CA 94043"
  --     , placeUrl = "https://maps.google.com/maps?oe=utf-8&client=firefox-a&channel=sb&q=90+Sierra+Vista+Ave,+Mountain+View,+CA&ie=UTF-8&hq=&hnear=0x808fb0afda66c137:0x5b13c3a353ddf1af,90+Sierra+Vista+Ave,+Mountain+View,+CA+94043&gl=us&ei=qgNGU4L-I-jIyAGZmoGYDA&ved=0CCgQ8gEwAA"
  --     , button = Nothing
  --     } ]
  --   , photos = []
  --   , smallQuote = []
  --   } )
  -- ,
  -- ( showLastNight,
  --   { author = "Эдвард РАДЗИНСКИЙ"
  --   , title = "Последняя ночь последнего царя"
  --   , url = "EventNight.html"
  --   , image = "details-last-night.jpg"
  --   , reading = True
  --   , events = [
  --     { city = "SAN FRANCISCO"
  --     , date = "26 апреля 7pm"
  --     , place = "Russian Center of San Francisco"
  --     , placeUrl = "http://www.russiancentersf.com/contact"
  --     , button = Nothing
  --     } ]
  --   , photos = []
  --   , smallQuote = []
  --   } )
  -- ,
  ( showDecorator,
    { blankShow
    | author <- "Дональд ЧЕРЧИЛЛЬ"
    , title <- "Декоратор"
    , url <- "EventDecorator.html"
    , image <- "details-decorator-2.jpg"
    , events <- [
      { blankEvent
      | city <- "SAN FRANCISCO"
      , date <- "2 ноября 5pm"
      , place <- "Shelton Theater"
      , placeUrl <- "http://www.sheltontheater.org/?page_id=102"
      , button <- (Just paypalButton_Decorator_20141102)
      },
      { blankEvent
      | city <- "SAN FRANCISCO"
      , date <- "16 ноября 5pm"
      , place <- "Shelton Theater"
      , placeUrl <- "http://www.sheltontheater.org/?page_id=102"
      , button <- (Just paypalButton_Decorator_20141116)
      }
      ]
    } )
  ,
  -- ( showMunchausen,
  --   { blankShow
  --   | author <- "Григорий ГОРИН"
  --   , title <- "Тот самый Мюнхгаузен"
  --   , company <- Just "«На&nbsp;БЭКЪЯРДЕ»"
  --   , url <- "EventMunchausen.html"
  --   , image <- "details-munchausen.jpg"
  --   , events <- [
  --     { blankEvent
  --     | city <- "LOS ALTOS HILLS"
  --     , date <- "28 сентября 6pm"
  --     , place <- "Congregation Beth Am"
  --     , placeUrl <- "http://www.betham.org/about/contact"
  --     , button <- (Just paypalButton_Munchausen_20140928)
  --     }
  --     ]
  --   } )
  -- ,
  ( showSummerDay,
    { blankShow
    | author <- "Славомир МРОЖЕК"
    , title <- "Летний день"
    , url <- "EventSummerDay.html"
    , image <- "details-summer-day.jpg"
    , reading <- True
    , events <- [
      { blankEvent
      | city <- "MOUNTAIN VIEW"
      , date <- "26 июля 4pm"
      , place <- "90 Sierra Vista Ave\nMountain View, CA 94043"
      , placeUrl <- "https://maps.google.com/maps?oe=utf-8&client=firefox-a&channel=sb&q=90+Sierra+Vista+Ave,+Mountain+View,+CA&ie=UTF-8&hq=&hnear=0x808fb0afda66c137:0x5b13c3a353ddf1af,90+Sierra+Vista+Ave,+Mountain+View,+CA+94043&gl=us&ei=qgNGU4L-I-jIyAGZmoGYDA&ved=0CCgQ8gEwAA"
      } ]
    } )
  ]

-- Utilities
sortedShowList = fromListToShows [ showDecorator ]
-- sortedPastList = fromListToShows [ showJurden, showLastNight ]

fromListToShows = justs . map (flip D.lookup showMap)

paidEvent = maybe False (always True) . .button
eventfulShow = not . isEmpty . .events

showInfo = fromJust . flip D.lookup showMap

-- Visual representation
listOfShows config = visualShowList config <| filter eventfulShow sortedShowList
listOfPaidShows config = visualShowList config <| filter (any paidEvent . .events) <| filter eventfulShow sortedShowList

visualShowList config ss =
  let
    u = config.step
    u2 = 2*u
    imageWidth = 11* config.step
    imageHeight = 10* config.step
    eventWidth = 16* config.step
    textWidth = config.contentWidth - imageWidth - 2* eventWidth - 5*u2

    event es = case es of
      (e::_) ->
        flow down <| intersperse (spaceY u) [
          width eventWidth <| tag "all-caps" <| centered <| showListCityText e.city,
          width eventWidth <| centered <| showListDateText e.date,
          width eventWidth <| centered <| ulink e.placeUrl <| showListPlaceText e.place,
          maybe empty (centerX eventWidth) e.button ]
      [] -> spaceX eventWidth

    item se =
      flow right <| intersperse (spaceX u2) [
        empty,
        link se.url <| fittedImage imageWidth imageHeight <| "assets/" ++ se.image,
        flow down
          [ maybe empty (\c -> width textWidth <| leftAligned <| showListTitleText ("Театр " ++ c ++ " представляет")) se.company
          , bool empty (spaceY <| u `div` 2) <| isJust se.company
          , width textWidth <| leftAligned <| showListAuthorText se.author
          , link se.url <| width textWidth <| leftAligned <| Text.link se.url <| showListTitleText se.title
          , bool empty (spaceY u) se.reading
          , bool empty (fittedImage 49 38 "assets/reading-01.png") se.reading
          ],
        event se.events,
        event <| tail se.events,
        empty ]

  in
    color showListBackColor <| padY u2 <| flow down <| intersperse (spaceY u2) <| map item ss
