{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module HStyle where

import Prelude hiding (writeFile)
import Lucid
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)

linkPage :: Text -> (Text, Text) -> Text -> Html () -> IO ()
linkPage title (iconPath, iconType) fileName body = do
  writeFile (unpack fileName) $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1, shrink-to-fit=no"]
        title_ (toHtml title)
        link_ [rel_ "shortcut icon", type_ iconType, href_ iconPath]
        link_ [rel_ "stylesheet", type_ "text/css", charset_ "utf-8", href_ "hstyle.css"]
      body_ body

section :: [Text] -> Html ()
section (title:links) =
  details_ [class_ "section"] $ do
    header title
    block links

header :: Text -> Html ()
header = summary_ [class_ "header"] . toHtml

block :: [Text] -> Html ()
block = div_ [class_ "block"] . mapM_ (\u -> item u u)

item :: Text -> Text -> Html ()
item url text = a_ [class_ "item", href_ url] $ toHtml text
