{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.List (sort)
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)
import Control.Monad (mapM_, join)

section :: [Text] -> Html ()
section (title:links) =
  details_ [class_ "section"] $ do
    header title
    block links

header :: Text -> Html ()
header = summary_ [class_ "header"] . toHtml

block :: [Text] -> Html ()
block = div_ [class_ "block"] . mapM_ (join item)

item :: Text -> Text -> Html ()
item url text = a_ [class_ "item", href_ url] $ toHtml text

main :: IO ()
main = do
  writeFile "containers.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1, shrink-to-fit=no"]
        title_ "Containers"
        link_ [rel_ "shortcut icon", type_ "image/png", href_ "https://kubernetes.io/images/favicon.png"]
        style_ $
          "html, body { " <>
            "font-size: 12pt;" <>
            "font-family: Avenir, Helvetica, Arial;" <>
            "font-weight: 300;" <>
            "line-height: 1.5;" <>
            "padding: 0rem;" <>
            "background: #fcfcfc;" <>
          "}" <>
          "*, *:before, *:after {" <>
            "font-size: inherit;" <>
            "font-family: inherit;" <>
            "font-weight: inherit;" <>
            "line-height: inherit;" <>
            "margin: 0px;" <>
            "padding: 0px;" <>
            "border-width: 0px;" <>
            "background: inherit;" <>
          "}" <>
          ".section {" <>
            "border-top: 0.5px solid rgb(175,175,175);" <>
          "}" <>
          ".header {" <>
            "font-size: 14pt;" <>
            "font-weight: 400;" <>
            "padding: 1em 2rem;" <>
            "cursor: pointer;" <>
          "}" <>
          ".header:hover {" <>
            "background: #f0f0f0;" <>
          "}" <>
          ".header { display: block; }" <>
          ".header::-webkit-details-marker { display: none; }" <>
          ".block {" <>
            "padding: 0 0 1rem 0;" <>
          "}" <>
          ".item {" <>
            "display: block;" <>
            "padding-left: 2rem;" <>
            "overflow: hidden;" <>
            "white-space: nowrap;" <>
          "}" <>
          ".item:hover {" <>
            "background: #f0f0f0;" <>
          "}" <>
          "a:link { text-decoration:inherit; }" <>
          "a:visited { text-decoration:inherit; }" <>
          "a:hover { text-decoration:inherit; }" <>
          "a:active { text-decoration:inherit; }" <>
          "* { outline-style:none; outline-width:0px; }"
      body_ $ do
        (`with` [open_ ""]) $ section [ "Current"
          ]
        -- "Current" ]
        (`with` [open_ ""]) $ section [ "Now"
          ]
        -- "Now" ]
        section [ "Sites"
          ]
        -- "Sites" ]
        section [ "Tools"
          ]
        -- "Tools" ]
        section [ "Done"
          ]
        -- "Done" ]
