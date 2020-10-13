{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)
import Control.Monad (mapM_)

links :: [Text] -> Html ()
links = mapM_ (\url-> div_ $ a_ [href_ url] $ toHtml url)

main :: IO ()
main = do
  writeFile "bookmarks.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        title_ "Bookmarks"
      body_ $ do
        div_ $ do
          h3_ "Now"
          links [
              "https://developer.mozilla.org/en-US/docs/Web/CSS/display/two-value_syntax_of_display"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/display"
            ]
        div_ $ do
          h3_ "Learn"
          links [
              "http://www.javascriptkit.com/dhtmltutors/customattributes.shtml"
            , "http://www.jsfuck.com/"
            , "https://css-tricks.com/"
            , "https://developer.mozilla.org/en-US/docs/Web/API/Element/createShadowRoot"
            , "https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers/onunload"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout/Block_and_Inline_Layout_in_Normal_Flow"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Ruby"
            , "https://developer.mozilla.org/en-US/docs/Web/CSS/overflow"
            , "https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Block_formatting_context"
            , "https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM"
            , "https://developers.google.com/web/updates/2017/01/css-grid"
            , "https://gridbyexample.com/"
            , "https://javascript.info/"
            , "https://javascript.info/dom-attributes-and-properties"
            , "https://www.google.com/search?client=firefox-b-1-d&q=%3C%3Fphp"
            , "https://www.google.com/search?client=firefox-b-1-d&q=css+tables+vs+css+grid"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+bubbles"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+can+i+set+abritrary+property+on+document+object"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+display+property"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+event+cancelable"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+how+script+executed"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+objec+navigator"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+onload+function"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+position+property"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+property+overflow"
            , "https://www.google.com/search?client=firefox-b-1-d&q=html+window+clientWidth"
            , "https://www.google.com/search?client=firefox-b-1-d&q=htyml+textcontent"
            , "https://www.google.com/search?client=firefox-b-1-d&q=javascript+eval+function"
            , "https://www.google.com/search?client=firefox-b-1-d&q=javascript+use+strict"
            ]
        div_ $ do
          h3_ "Style"
          links [
              "https://artagnon.com/articles/pl"
            , "https://free.cofree.io/2020/09/01/type-errors/"
            , "https://sanj.ink/posts/2020-06-13-contravariant-functors-are-weird.html"
            , "https://www.ted.com/talks/john_biewen_the_lie_that_invented_racism"
            ]
        div_ $ do
          h3_ "Done"
          links [
            ]
