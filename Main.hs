{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Data.Text.Lazy.IO

-- --
hp :: Html () -> IO ()
hp h = print h

-- --
main :: IO ()
main = do
  writeFile "ActivitiesHistory.html" $ renderText activitiesHistory
  writeFile "index.html" $ renderText index
  print index

-- --
activitiesHistory :: Html ()
activitiesHistory = do
  doctype_
  html_ [lang_ "en"] $ do
    head_ $ do
      title_ "Ark | Activities | History"
      meta_ [charset_ "UTF-8"]
      meta_ [httpEquiv_ "X-UA-Compatible", content_ "IE=edge"]
      link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "css/fonts.css"]
      link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "css/bootstrap.min.css"]
      script_ [type_ "text/javascript", src_ "js/elm-runtime.min.js"] ""
      script_ [type_ "text/javascript", src_ "js/ActivitiesHistory.min.js"] ""
      style_ $
        "a:link{color:inherit;text-decoration:inherit;}" <>
        "a:visited{color:inherit;text-decoration:inherit;}" <>
        "a:hover{color:inherit;text-decoration:inherit;}" <>
        "a:active{color:inherit;text-decoration:inherit;}" <>
        "a{outline-style:none;outline-width:0px;}" <>
        ".zero-border{padding:0px;border-width:0px;margin:0px;}"
    body_ $ do
      noscript_ "Please, enable JavaScript"
      script_ [type_ "text/javascript"] "Elm.fullscreen(Elm.ActivitiesHistory);"

-- --
index :: Html ()
index = do
  doctype_
  html_ [lang_ "en"] $ do
    head_ $ do
      title_ "Ark"
    body_ $ do
      noscript_ "Please, enable JavaScript"
      script_ [type_ "text/javascript"] "Elm.fullscreen(Elm.Home);"
      script_ [type_ "text/javascript", src_ "js/jquery.min.js"] ""
      script_ [type_ "text/javascript", src_ "js/bootstrap.min.js"] ""

  -- <meta charset="UTF-8">
  -- <meta http-equiv="X-UA-Compatible" content="IE=edge">
  -- <link rel="stylesheet" href="css/fonts.css" type="text/css" charset="utf-8">
  -- <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" charset="utf-8">
  -- <script type="text/javascript" src="js/elm-runtime.min.js"></script>
  -- <script type="text/javascript" src="js/Home.min.js"></script>
  -- <style>
  --   a:link{color:inherit;text-decoration:inherit;}
  --   a:visited{color:inherit;text-decoration:inherit;}
  --   a:hover{color:inherit;text-decoration:inherit;}
  --   a:active{color:inherit;text-decoration:inherit;}
  --   a{outline-style:none;outline-width:0px;}
  --   .zero-border{padding:0px;border-width:0px;margin:0px;}
  --   .carousel{width:100%;height:100%;}
  --   .carousel-inner{width:100%;height:100%;}
  --   .carousel .item{width:100%;height:100%;}
  --   .carousel-inner>.item{width:100%;height:100%;}
  --   .carousel-inner>.item>img{width:100%;height:100%;}
  -- </style>
