{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Prelude hiding (writeFile)
import Lucid
import Lucid.Base
import Data.List (sort)
import Data.Text (Text, unpack)
import Data.Text.Lazy.IO (writeFile)
import Control.Monad (mapM_)

e_ = "" :: Text

link :: Text -> Text -> Html ()
link url text = div_ [class_ "item"] $ a_ [href_ url] $ toHtml text

queuedLinks :: [Text] -> Html ()
queuedLinks = mapM_ (\url -> link url url)

orderedLinks :: [Text] -> Html ()
orderedLinks = mapM_ (\url -> link url url) . sort

notes :: [Text] -> Html ()
notes = mapM_ (div_ [class_ "item"] . toHtml)

main :: IO ()
main = do
  writeFile "bookmarks.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        title_ "Links"
        link_ [rel_ "icon", type_ "image/svg+xml", href_ "bookmark.svg"]
        style_ $
          "html, body { " <>
            "font-size: 12pt;" <>
            "font-family: Helvetica, Arial;" <>
            "font-weight: 300;" <>
            "line-height: 1.4285714285714286;" <>
          "}" <>
          "*, *:before, *:after {" <>
            "font-size: inherit;" <>
            "font-family: inherit;" <>
            "font-weight: inherit;" <>
            "line-height: inherit;" <>
          "}" <>
          ".item { margin-left: 2em; }" <>
          "h4 { margin-bottom: 0; font-weight: 400; }"
      body_ $ do
        div_ $ do
          h4_ "Now"
          queuedLinks [
            "https://developer.mozilla.org/en-US/docs/Web/CSS/position",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning",
            e_ ]
        div_ $ do
          h4_ "Notes"
          notes [
            "How to put an html page into email",
            "How to open a link in new tab",
            "Syntax highlighting",
            e_ ]
        div_ $ do
          h4_ "Queue"
          queuedLinks [
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning/Understanding_z_index/The_stacking_context",
            "https://www.google.com/search?q=html+position+property",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/bottom",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/display#Description",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/display",
            "https://www.google.com/search?q=html+anonymous+box",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Mastering_margin_collapsing",
            "https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Layout_mode",
            e_ ]
        div_ $ do
          h4_ "Learn"
          orderedLinks [
            "https://rfornal.hashnode.dev/hyper-lightweight-website-designs-ckg6lgeg600dz9cs1bfwphy4d",
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
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity",
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
            "https://medium.com/myplanet-musings/what-is-a-json-web-token-2193f383e963",
            "https://purecss.io/grids/",
            "https://specifishity.com/",
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
            e_ ]
        div_ $ do
          h4_ "Sites"
          orderedLinks [
            "http://www.simplehtmlguide.com/",
            "https://css-tricks.com/",
            "https://developer.mozilla.org/en-US/",
            "https://developer.mozilla.org/en-US/docs/Learn",
            "https://drafts.csswg.org/",
            "https://javascript.info/",
            "https://popper.js.org/",
            e_ ]
        div_ $ do
          h4_ "Tools"
          orderedLinks [
            "http://hackage.haskell.org/package/libjwt-typed",
            "http://jeffreyrosenbluth.github.io/2016/02/13/lucid.html",
            "http://www.jsfuck.com/",
            "https://chrisdone.com/posts/lucid2/",
            "https://dev.yorhel.nl/doc/funcweb",
            "https://github.com/dbaynard/lucid-from-html",
            "https://hackage.haskell.org/package/blaze-from-html",
            "https://hackage.haskell.org/package/lucid-svg",
            "https://hackage.haskell.org/package/nice-html",
            "https://hackage.haskell.org/package/shakespeare",
            "https://hackage.haskell.org/package/svg-builder",
            "https://hackage.haskell.org/package/type-of-html",
            "https://hackage.haskell.org/package/type-of-html-static",
            "https://jaspervdj.be/blaze/",
            "https://jonreeve.com/2020/09/type-safe-blog/",
            "https://jquery.com/",
            "https://jsconsole.com/",
            "https://jsfiddle.net/",
            "https://mmhaskell.com/blog/2020/3/16/lucid-another-html-option",
            "https://mmhaskell.com/real-world",
            "https://ocsigen.org/tyxml/4.4.0/manual/intro",
            "https://trycatchchris.co.uk/hackagecompare/comparePackage/blaze-html/hamlet/heist/lucid/mustache",
            "https://www.google.com/search?q=haskell+obelisk",
            "https://www.google.com/search?q=haskell+reflex",
            "https://www.google.com/search?q=html+sass",
            "https://www.reddit.com/r/haskell/comments/iz2o1r/explicitly_comprehensible_frp_elm_compared_to/",
            "https://www.tweag.io/blog/2020-10-09-asterius-cloudflare-worker/",
            "https://www.reddit.com/r/haskell/comments/izz4uy/im_looking_for_the_simplest_easiest_and_most/",
            "https://haskell-explained.gitlab.io/blog/posts/2020/09/26/http-apis-with-webgear/index.html",
            "https://github.com/unimonkiez/self-adjusting-interval",
            "https://chrispenner.ca/posts/traversal-systems",
            "https://www.youtube.com/watch?v=LZTWYdU4nKk",
            "https://docs.gitlab.com/ee/user/project/pages/",
            "https://www.reddit.com/r/haskell/comments/j41wrx/servant_warptls_serve_different_content_depending/",
            e_ ]
        div_ $ do
          h4_ "Style"
          orderedLinks [
            "http://jeffreyrosenbluth.github.io/2016/02/13/lucid.html",
            "https://artagnon.com/articles/pl",
            "https://free.cofree.io/2020/09/01/type-errors/",
            "https://sanj.ink/posts/2020-06-13-contravariant-functors-are-weird.html",
            "https://stackoverflow.com/questions/19867491/double-every-other-element-of-list-from-right-in-haskell",
            "https://www.reddit.com/r/haskell/comments/iv10oy/best_practices_to_distribute_a_package_cross/",
            "https://www.reddit.com/r/haskell/comments/iznptr/servant_is_it_possible_to_decode_multiple_headers/",
            "https://www.ted.com/talks/john_biewen_the_lie_that_invented_racism",
            "https://ihp.digitallyinduced.com/",
            "https://quuxplusone.github.io/blog/2020/10/12/grab-bag/",
            e_ ]
        div_ $ do
          h4_ "Done"
          orderedLinks [
            "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout/Block_and_Inline_Layout_in_Normal_Flow",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Visual_formatting_model",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/display/two-value_syntax_of_display",
            "https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_Block",
            e_ ]
