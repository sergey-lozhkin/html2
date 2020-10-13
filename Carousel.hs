{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)

nil :: Html ()
nil = ""

dataRide_ :: Text -> Attribute
dataRide_ = makeAttribute "data-ride"

dataInterval_ :: Text -> Attribute
dataInterval_ = makeAttribute "data-interval"

dataSlide_ :: Text -> Attribute
dataSlide_ = makeAttribute "data-slide"

main :: IO ()
main = do
  writeFile "html/Carousel.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        title_ "Carousel"
        meta_ [charset_ "UTF-8"]
        meta_ [httpEquiv_ "X-UA-Compatible", content_ "IE=edge"]
        link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "css/fonts.css"]
        link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "css/bootstrap.min.css"]
        style_ $
          "a:link{color:inherit;text-decoration:inherit;}" <>
          "a:visited{color:inherit;text-decoration:inherit;}" <>
          "a:hover{color:inherit;text-decoration:inherit;}" <>
          "a:active{color:inherit;text-decoration:inherit;}" <>
          "a{outline-style:none;outline-width:0px;}" <>
          ".zero-border{padding:0px;border-width:0px;margin:0px;}" <>
          -- "#all-caps{letter-spacing:0.5pt;}" <>
          ".carousel{width:100%;height:100%;}" <>
          ".carousel-inner{width:100%;height:100%;}" <>
          ".carousel .item{width:100%;height:100%;}" <>
          ".carousel-inner>.item{width:100%;height:100%;}" <>
          ".carousel-inner>.item>img{width:100%;height:100%;}"
      body_ [class_ "zero-border"] $ do
        noscript_ "Please, enable JavaScript"
        script_ [type_ "text/javascript", src_ "js/jquery.min.js"] nil
        script_ [type_ "text/javascript", src_ "js/bootstrap.min.js"] nil

        div_ [id_ "homeCarousel", class_ "carousel slide zero-border", dataRide_ "carousel", dataInterval_ "3000"] $ do
          div_ [class_ "carousel-inner zero-border"] $ do
            div_ [class_ "item active zero-border"] $ do
              a_ [href_ "EventsList.html", class_ "zero-border"] $ do
                img_ [src_ "assets/banner-list.png", class_ "zero-border"]
            div_ [class_ "item zero-border"] $ do
              a_ [href_ "EventDecorator.html", class_ "zero-border"] $ do
                img_ [src_ "assets/banner-decorator-3.png", class_ "zero-border"]
            div_ [class_ "item zero-border"] $ do
              a_ [href_ "EventDecorator.html", class_ "zero-border"] $ do
                img_ [src_ "assets/banner-decorator-ph1.jpg", class_ "zero-border"]
            div_ [class_ "item zero-border"] $ do
              a_ [href_ "EventDecorator.html", class_ "zero-border"] $ do
                img_ [src_ "assets/banner-decorator-ph2.jpg", class_ "zero-border"]
            div_ [class_ "item zero-border"] $ do
              a_ [href_ "EventDecorator.html", class_ "zero-border"] $ do
                img_ [src_ "assets/banner-decorator-ph3.jpg", class_ "zero-border"]
          a_ [class_ "left carousel-control zero-border", href_ "#homeCarousel", dataSlide_ "prev"] nil
          a_ [class_ "right carousel-control zero-border", href_ "#homeCarousel", dataSlide_ "next"] nil
