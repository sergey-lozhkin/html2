{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)
import Control.Monad (mapM_)

zz = "" :: Text

link :: Text -> Text -> Html ()
link url text = div_ [style_ "padding: .1em"] $ a_ [href_ url] $ toHtml text

link2 :: Text -> Text -> Html ()
link2 text url = link url $ text <> url

links :: [Text] -> Html ()
links = mapM_ (\url -> link url url)

main :: IO ()
main = do
  writeFile "bookmarks.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        title_ "Bookmarks"
        style_ $
          "body {font-size: 12pt; font-family: Helvetica; }"
      body_ $ do
        div_ $ do
          h3_ "Now"
          links [
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Visual_formatting_model",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/display",
            zz ]
        div_ $ do
          h3_ "Queue"
          links [
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning",
            "https://www.google.com/search?q=html+position+property",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/bottom",
            "https://www.google.com/search?q=html+anonymous+box",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Mastering_margin_collapsing",
            "https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting",
            zz ]
        div_ $ do
          h3_ "Learn"
          links [
            "http://html5doctor.com/html-5-reset-stylesheet/",
            "http://www.javascriptkit.com/dhtmltutors/customattributes.shtml",
            "http://www.simplehtmlguide.com/text.php",
            "https://css-tricks.com/autoprefixer/",
            "https://css-tricks.com/dont-overthink-it-grids/",
            "https://css-tricks.com/inheriting-box-sizing-probably-slightly-better-best-practice/",
            "https://css-tricks.com/using-flexbox/",
            "https://developer.mozilla.org/en-US/docs/Glossary/viewport",
            "https://developer.mozilla.org/en-US/docs/Learn/CSS",
            "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout",
            "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Floats",
            "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Normal_Flow",
            "https://developer.mozilla.org/en-US/docs/Web/API/Element/createShadowRoot",
            "https://developer.mozilla.org/en-US/docs/Web/API/Window/devicePixelRatio",
            "https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers/onunload",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Columns",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout/Intro_to_formatting_contexts",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Ruby",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Table",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/overflow",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/white-space",
            "https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Block_formatting_context",
            "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/content",
            "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nobr",
            "https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM",
            "https://developers.google.com/web/updates/2017/01/css-grid",
            "https://getbootstrap.com/docs/4.5/content/reboot/",
            "https://gridbyexample.com/",
            "https://javascript.info/dom-attributes-and-properties",
            "https://jurosh.com/blog/css-float-table-flex-grid",
            "https://purecss.io/grids/",
            "https://stackoverflow.com/questions/131653/inline-style-to-act-as-hover-in-css",
            "https://stackoverflow.com/questions/23352182/responsive-thumbnail-grid-equal-spacing/23352245#23352245",
            "https://stackoverflow.com/questions/2359443/making-a-piece-of-text-non-breaking",
            "https://stackoverflow.com/questions/5293280/css-pseudo-classes-with-inline-styles",
            "https://www.aurigait.com/blog/Displaying-Uneven-Height-Elements-in-Grids",
            "https://www.google.com/search?q=%3C%3Fphp",
            "https://www.google.com/search?q=css+tables+vs+css+grid",
            "https://www.google.com/search?q=how+does+html+flow+work",
            "https://www.google.com/search?q=how+html+%3A%3Aafter+work",
            "https://www.google.com/search?q=how+to+put+hover+into+element%27s+style+attribute",
            "https://www.google.com/search?q=html+%40media+query",
            "https://www.google.com/search?q=html+box-shadow",
            "https://www.google.com/search?q=html+bubbles",
            "https://www.google.com/search?q=html+can+i+set+abritrary+property+on+document+object",
            "https://www.google.com/search?q=html+clearfix+hack",
            "https://www.google.com/search?q=html+content+tag",
            "https://www.google.com/search?q=html+css+animatable",
            "https://www.google.com/search?q=html+display+flex",
            "https://www.google.com/search?q=html+display+property",
            "https://www.google.com/search?q=html+event+cancelable",
            "https://www.google.com/search?q=html+flexbox",
            "https://www.google.com/search?q=html+float",
            "https://www.google.com/search?q=html+float+vs+inline-block",
            "https://www.google.com/search?q=html+float+vs+table",
            "https://www.google.com/search?q=html+fluid+layout",
            "https://www.google.com/search?q=html+how+script+executed",
            "https://www.google.com/search?q=html+how+to+get+physical+pixel+size",
            "https://www.google.com/search?q=html+inline+block",
            "https://www.google.com/search?q=html+li+marker",
            "https://www.google.com/search?q=html+margin+collapse",
            "https://www.google.com/search?q=html+objec+navigator",
            "https://www.google.com/search?q=html+onload+function",
            "https://www.google.com/search?q=html+onmouseover",
            "https://www.google.com/search?q=html+property+overflow",
            "https://www.google.com/search?q=html+reset+styles",
            "https://www.google.com/search?q=html+unbreakable+block",
            "https://www.google.com/search?q=html+window+clientWidth",
            "https://www.google.com/search?q=html+window+devicePixelRatio",
            "https://www.google.com/search?q=htyml+textcontent",
            "https://www.google.com/search?q=javascript+eval+function",
            "https://www.google.com/search?q=javascript+object+window",
            "https://www.google.com/search?q=javascript+use+strict",
            "https://www.paulirish.com/2012/box-sizing-border-box-ftw/",
            "https://www.pixelstech.net/article/1537002042-The-danger-of-target=_blank-and-opener",
            "https://www.quirksmode.org/blog/archives/2010/04/a_pixel_is_not.html",
            "https://www.quirksmode.org/mobile/viewports2.html",
            "https://www.reddit.com/r/programming/comments/j0n20w/the_danger_of_target_blank_and_opener/",
            "https://www.ternstyle.us/blog/float-vs-inline-block",
            "https://www.w3.org/TR/view-mode/",
            "https://www.w3schools.com/css/css3_box-sizing.asp",
            "https://www.w3schools.com/css/css3_flexbox.asp",
            "https://www.w3schools.com/css/css_float.asp",
            "https://www.w3schools.com/css/css_float_examples.asp",
            "https://www.w3schools.com/css/css_inline-block.asp",
            "https://www.w3schools.com/cssref/css3_pr_box-shadow.asp",
            "https://www.w3schools.com/cssref/css3_pr_box-sizing.asp",
            "https://www.w3schools.com/cssref/css_animatable.asp",
            "https://www.w3schools.com/cssref/pr_class_clear.asp",
            "https://www.w3schools.com/cssref/pr_class_float.asp",
            "https://www.w3schools.com/cssref/sel_after.asp",
            "https://www.w3schools.com/howto/howto_css_clearfix.asp",
            "https://www.w3schools.com/jsref/event_onmousedown.asp",
            "https://www.w3schools.com/jsref/event_onmouseover.asp",
            "https://www.w3schools.com/jsref/obj_window.asp",
            zz ]
        div_ $ do
          h3_ "Sites"
          links [
            "http://www.simplehtmlguide.com/",
            "https://css-tricks.com/",
            "https://developer.mozilla.org/en-US/",
            "https://developer.mozilla.org/en-US/docs/Learn",
            "https://javascript.info/",
            "https://popper.js.org/",
            zz ]
        div_ $ do
          h3_ "Tools"
          links [
            "http://www.jsfuck.com/",
            "https://jquery.com/",
            "https://jsconsole.com/",
            "https://jsfiddle.net/",
            zz ]
        div_ $ do
          h3_ "Style"
          links [
            "https://artagnon.com/articles/pl",
            "https://free.cofree.io/2020/09/01/type-errors/",
            "https://sanj.ink/posts/2020-06-13-contravariant-functors-are-weird.html",
            "https://www.ted.com/talks/john_biewen_the_lie_that_invented_racism",
            zz ]
        div_ $ do
          h3_ "Done"
          links [
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout/Block_and_Inline_Layout_in_Normal_Flow",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/display/two-value_syntax_of_display",
            zz ]
