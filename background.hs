{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)

main :: IO ()
main = do
  writeFile "html/background.html" $ renderText $ do
    doctypehtml_ $ do
      head_ $ do
        title_ "Background"
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
          ".nil{padding:0px;border-width:0px;margin:0px;}"
      body_ [class_ "nil"] $ do
        div_ [style_
            $   "margin:2em;"
            <>  "border:2em solid lightblue;"
            <>  "padding:2em;"
            <>  "background:pink;"
            <>  "background-clip:padding-box;"] $ do
          "Hola, Mundo!"
