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
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        title_ "Background"
        meta_ [charset_ "utf-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1, shrink-to-fit=no"]
        link_ [rel_ "icon", type_ "image/png", href_ "avatar-500x500.png"]
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
