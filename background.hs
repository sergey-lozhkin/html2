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
        meta_ [charset_ "utf-8"]
        -- meta_ [httpEquiv_ "Content-Type", content_ "text/html; charset=UTF-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1, shrink-to-fit=no"]
        title_ "Background"
        -- link_ [rel_ "icon", type_ "image/png", href_ "assets/avatar-500x500.png"]
        link_ [rel_ "icon", type_ "image/png", href_ "assets/icons-10.png"]
        style_
          $   "a:link{color:inherit;text-decoration:inherit;}"
          <>  "a:visited{color:inherit;text-decoration:inherit;}"
          <>  "a:hover{color:inherit;text-decoration:inherit;}"
          <>  "a:active{color:inherit;text-decoration:inherit;}"
          <>  "a{outline-style:none;outline-width:0px;}"
          <>  ".nil{padding:0px;border-width:0px;margin:0px;}"
          <>  "*{box-sizing:border-box;}"
      body_ [class_ "nil", style_ "width:100vw;height:100vh;"] $ do
        div_ [class_ "nil", style_ "width:100%;height:100%;padding:2em;background:lightyellow"] $ do
          div_ [class_ "nil", style_
            $   "border:2em solid lightblue;"
            <>  "border-radius: 2em;"
            <>  "padding:2em;"
            <>  "background:pink;"
            <>  "background-clip:padding-box;"
            <>  "max-width:1000px;"
            <>  "min-width:500px;"
            <>  "height:100%;"
            <>  "margin:auto auto;"
            ] $ do
            "Hola, Mundo!"
        -- div_ [class_ "nil", style_ "position: relative; overflow: hidden; width: 180px; height: 45px;"] $ do
        --   div_ [class_ "nil", style_ "margin: auto; width: 180px; height: 23px; position: absolute; left: 50%; top: 50%; transform: translateX(-90px) translateY(-11px);"] $ do
        --     div_ [class_ "nil", style_ "width: 15px; height: 1px; float: left;"] ""
        --     div_ [class_ "nil", style_ "visibility: visible; text-align: center; width: 150px; height: 23px; float: left;"] $ do
        --       span_ [class_ "nil", style_ "color:rgb(48, 48, 48);font-size:17px;font-family:'Roboto Light';"] $ do
        --         a_ [class_ "nil", href_ "SupportUsDonations.html"] "Support & Volunteer"
        --     div_ [class_ "nil", style_ "width: 15px; height: 1px; float: left;"] ""
