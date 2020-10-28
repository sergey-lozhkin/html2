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
  writeFile "bookmarks.html" $ renderText $ do
    doctype_
    html_ [lang_ "en"] $ do
      head_ $ do
        meta_ [charset_ "utf-8"]
        meta_ [name_ "viewport", content_ "width=device-width, initial-scale=1, shrink-to-fit=no"]
        title_ "Links"
        link_ [rel_ "icon", type_ "image/svg+xml", href_ "bookmark.svg"]
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
        (`with` [open_ ""]) $ section [ "Height"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+height+property"
          , "https://www.google.com/search?q=html+max-height"
          , "https://stackoverflow.com/questions/38903331/how-to-get-inner-html-content-height/38903375"
          , "https://www.google.com/search?client=firefox-b-1-d&q=javascript+how+to+calculate+height+of+element+based+on+content"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+scrollheight"
          ]
        -- "Height" ]
        (`with` [open_ ""]) $ section [ "Current"
          , "https://css-tricks.com/almanac/properties/p/position/"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+body+position+fixed"
          , "https://css-tricks.com/snippets/css/a-guide-to-flexbox/"
          , "https://stackoverflow.com/questions/48687129/padding-bottom-not-working-in-firefox-ie11"
          , "https://html.spec.whatwg.org/multipage/introduction.html#structure-of-this-specification"
          ]
        -- "Current" ]
        (`with` [open_ ""]) $ section [ "Now"
          , "https://html.spec.whatwg.org/multipage"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/align-items"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/align-self"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/align-content"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Aligning_Items_in_a_Flex_Container"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout"
          , "https://css-tricks.com/using-flexbox/"
          , "https://www.otsukare.info/2016/04/19/summary-details"
          , "https://html.spec.whatwg.org/#the-details-element"
          , "https://html5doctor.com/the-details-and-summary-elements/"
          ]
        -- "Now" ]
        section [ "Layout"
          , "https://www.w3schools.com/css/css3_multiple_columns.asp"
          , "https://css-tricks.com/couple-takes-sticky-footer/"
          , "https://css-tricks.com/absolute-relative-fixed-positioining-how-do-they-differ/"
          , "https://css-tricks.com/absolute-positioning-inside-relative-positioning/"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/overflow-wrap"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Sizing_items_in_CSS"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks"
          , "https://www.google.com/search?q=html+position+relative+and+absolute"
          , "https://www.cssstickyfooter.com/"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/left"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/float"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/z-index"
          , "https://codepen.io/cbracco/pen/zekgx"
          , "https://www.internetingishard.com/html-and-css/advanced-positioning/"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/position"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/Containing_Block"
          , "https://www.google.com/search?q=html+position+property"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+multi+column+document"
          , "https://css-tricks.com/all-about-floats/"
          , "https://css-tricks.com/examples/OverflowExample/"
          , "https://css-tricks.com/almanac/properties/s/scrollbar-color/"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+scrollbar-color"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+scrollbar-width"
          ]
        -- "Layout" ]
        section [ "Queue"
          , "https://spec.whatwg.org/"
          , "https://github.com/Modernizr/Modernizr/wiki/HTML5-Cross-browser-Polyfills"
          , "https://css-tricks.com/guides/"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning/Understanding_z_index/The_stacking_context"
          , "https://www.google.com/search?q=html+position+property"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/display#Description"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/display"
          , "https://www.google.com/search?q=html+anonymous+box"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Mastering_margin_collapsing"
          , "https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Advanced_text_formatting"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model/Introduction_to_the_CSS_box_model"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/Layout_mode"
          , "https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Content_categories"
          , "https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Using_HTML_sections_and_outlines"
          , "http://book.webtypography.net/"
          ]
        -- "Queue" ]
        section [ "Viewport"
          , "https://developer.mozilla.org/en-US/docs/Glossary/viewport"
          , "https://www.quirksmode.org/mobile/viewports2.html"
          , "https://www.google.com/search?q=html+meta+viewport"
          , "https://css-tricks.com/the-trick-to-viewport-units-on-mobile/"
          , "https://www.google.com/search?q=html+mobile+browsers+don%27t+call+on+resize"
          ]
        -- "Viewport" ]
        section [ "Flex"
          , "https://jurosh.com/blog/css-float-table-flex-grid"
          , "https://www.google.com/search?q=html+display+flex"
          , "https://www.google.com/search?q=html+flexbox"
          , "https://www.w3schools.com/css/css3_flexbox.asp"
          , "https://www.google.com/search?q=html+align-items+chrome"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/align-items"
          , "https://yoksel.github.io/flex-cheatsheet/"
          , "https://css-tricks.com/almanac/properties/f/flex-wrap/"
          , "https://css-tricks.com/old-flexbox-and-new-flexbox/"
          , "https://philipwalton.com/articles/normalizing-cross-browser-flexbox-bugs/"
          , "https://philipwalton.github.io/solved-by-flexbox/"
          , "https://www.sitepoint.com/community/t/display-flex-and-flex-wrap-wrap-breaking-layout-in-safari-only/334479"
          , "https://github.com/philipwalton/flexbugs"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis"
          , "https://www.google.com/search?q=safari+fixed+flex+container"
          ]
        -- "Flex" ]
        section [ "Grid"
          , "https://css-tricks.com/snippets/css/complete-guide-grid/"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Grid_Layout/Basic_Concepts_of_Grid_Layout"
          , "https://developers.google.com/web/updates/2017/01/css-grid"
          , "https://gridbyexample.com/"
          , "https://www.google.com/search?q=css+tables+vs+css+grid"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/grid"
          , "https://www.google.com/search?q=html+grid+layout"
          ]
        -- "Grid" ]
        section [ "SVG"
          , "https://www.google.com/search?q=flexbox+svg+icon"
          , "https://hackage.haskell.org/package/lucid-svg"
          , "https://hackage.haskell.org/package/svg-builder"
          , "http://svgicons.sparkk.fr/"
          , "https://www.sitepoint.com/css-with-svg/"
          ]
        -- "SVG" ]
        section [ "Learn"
          , "https://www.google.com/search?q=html+css+function+calc"
          , "https://css-tricks.com/a-complete-guide-to-calc-in-css/"
          , "https://www.otsukare.info/2015/03/26/refresh-http-header"
          , "https://shoehornwithteeth.com/ramblings/2016/12/redirecting-github-pages-after-renaming-a-repository/"
          , "http://html5doctor.com/html-5-reset-stylesheet/"
          , "http://www.javascriptkit.com/dhtmltutors/customattributes.shtml"
          , "http://www.simplehtmlguide.com/text.php"
          , "https://css-tricks.com/autoprefixer/"
          , "https://css-tricks.com/breaking-css-box-shadow-vs-drop-shadow/"
          , "https://css-tricks.com/dont-overthink-it-grids/"
          , "https://css-tricks.com/inheriting-box-sizing-probably-slightly-better-best-practice/"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Floats"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Normal_Flow"
          , "https://developer.mozilla.org/en-US/docs/Web/API/Element/createShadowRoot"
          , "https://developer.mozilla.org/en-US/docs/Web/API/Window/devicePixelRatio"
          , "https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers/onunload"
          , "https://developer.mozilla.org/en-US/docs/Web/Accessibility/Understanding_WCAG/Perceivable#Guideline_1.4_Make_it_easier_for_users_to_see_and_hear_content_including_separating_foreground_from_background"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Box_Model"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Columns"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout/Intro_to_formatting_contexts"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Lists_and_Counters"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Ruby"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Table"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/Media_Queries"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/Replaced_element"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/Specificity"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/filter"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/object-fit"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/overflow"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/white-space"
          , "https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Block_formatting_context"
          , "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/content"
          , "https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nobr"
          , "https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM"
          , "https://getbootstrap.com/docs/4.5/content/reboot/"
          , "https://javascript.info/dom-attributes-and-properties"
          , "https://medium.com/myplanet-musings/what-is-a-json-web-token-2193f383e963"
          , "https://purecss.io/grids/"
          , "https://rfornal.hashnode.dev/hyper-lightweight-website-designs-ckg6lgeg600dz9cs1bfwphy4d"
          , "https://specifishity.com/"
          , "https://stackoverflow.com/questions/131653/inline-style-to-act-as-hover-in-css"
          , "https://stackoverflow.com/questions/23352182/responsive-thumbnail-grid-equal-spacing/23352245#23352245"
          , "https://stackoverflow.com/questions/2359443/making-a-piece-of-text-non-breaking"
          , "https://stackoverflow.com/questions/5293280/css-pseudo-classes-with-inline-styles"
          , "https://www.aurigait.com/blog/Displaying-Uneven-Height-Elements-in-Grids"
          , "https://www.google.com/search?q=%3C%3Fphp"
          , "https://www.google.com/search?q=How+to+open+a+link+in+new+tab"
          , "https://www.google.com/search?q=How+to+put+an+html+page+into+email"
          , "https://www.google.com/search?q=how+does+html+flow+work"
          , "https://www.google.com/search?q=how+html+%3A%3Aafter+work"
          , "https://www.google.com/search?q=how+to+put+hover+into+element%27s+style+attribute"
          , "https://www.google.com/search?q=html+%40media+query"
          , "https://www.google.com/search?q=html+Syntax+highlighting"
          , "https://www.google.com/search?q=html+animation+types"
          , "https://www.google.com/search?q=html+box-shadow"
          , "https://www.google.com/search?q=html+box-shadow+vs+filter+drop-shadow"
          , "https://www.google.com/search?q=html+bubbles"
          , "https://www.google.com/search?q=html+can+i+set+abritrary+property+on+document+object"
          , "https://www.google.com/search?q=html+clearfix+hack"
          , "https://www.google.com/search?q=html+content+tag"
          , "https://www.google.com/search?q=html+css+animatable"
          , "https://www.google.com/search?q=html+display+property"
          , "https://www.google.com/search?q=html+drop-shadow"
          , "https://www.google.com/search?q=html+event+cancelable"
          , "https://www.google.com/search?q=html+float"
          , "https://www.google.com/search?q=html+float+vs+inline-block"
          , "https://www.google.com/search?q=html+float+vs+table"
          , "https://www.google.com/search?q=html+fluid+layout"
          , "https://www.google.com/search?q=html+how+script+executed"
          , "https://www.google.com/search?q=html+how+to+get+physical+pixel+size"
          , "https://www.google.com/search?q=html+inline+block"
          , "https://www.google.com/search?q=html+li+marker"
          , "https://www.google.com/search?q=html+margin+collapse"
          , "https://www.google.com/search?q=html+objec+navigator"
          , "https://www.google.com/search?q=html+onload+function"
          , "https://www.google.com/search?q=html+onmouseover"
          , "https://www.google.com/search?q=html+position+sticky"
          , "https://www.google.com/search?q=html+property+overflow"
          , "https://www.google.com/search?q=html+reset+styles"
          , "https://www.google.com/search?q=html+unbreakable+block"
          , "https://www.google.com/search?q=html+window+clientWidth"
          , "https://www.google.com/search?q=html+window+devicePixelRatio"
          , "https://www.google.com/search?q=htyml+textcontent"
          , "https://www.google.com/search?q=javascript+eval+function"
          , "https://www.google.com/search?q=javascript+object+window"
          , "https://www.google.com/search?q=javascript+use+strict"
          , "https://www.paulirish.com/2012/box-sizing-border-box-ftw/"
          , "https://www.pixelstech.net/article/1537002042-The-danger-of-target=_blank-and-opener"
          , "https://www.quirksmode.org/blog/archives/2010/04/a_pixel_is_not.html"
          , "https://www.reddit.com/r/programming/comments/j0n20w/the_danger_of_target_blank_and_opener/"
          , "https://www.ternstyle.us/blog/float-vs-inline-block"
          , "https://www.w3.org/TR/UNDERSTANDING-WCAG20/visual-audio-contrast-visual-presentation.html"
          , "https://www.w3.org/TR/view-mode/"
          , "https://www.w3schools.com/css/css3_box-sizing.asp"
          , "https://www.w3schools.com/css/css_float.asp"
          , "https://www.w3schools.com/css/css_float_examples.asp"
          , "https://www.w3schools.com/css/css_inline-block.asp"
          , "https://www.w3schools.com/cssref/css3_pr_box-shadow.asp"
          , "https://www.w3schools.com/cssref/css3_pr_box-sizing.asp"
          , "https://www.w3schools.com/cssref/css_animatable.asp"
          , "https://www.w3schools.com/cssref/pr_class_clear.asp"
          , "https://www.w3schools.com/cssref/pr_class_float.asp"
          , "https://www.w3schools.com/cssref/sel_after.asp"
          , "https://www.w3schools.com/howto/howto_css_clearfix.asp"
          , "https://www.w3schools.com/jsref/event_onmousedown.asp"
          , "https://www.w3schools.com/jsref/event_onmouseover.asp"
          , "https://www.w3schools.com/jsref/obj_window.asp"
          , "https://stackoverflow.com/questions/8865458/how-do-i-vertically-center-text-with-css"
          , "https://www.w3docs.com/snippets/css/how-to-vertically-center-text-with-css.html"
          , "https://www.htmlhelp.com/reference/css/text/vertical-align.html"
          , "https://www.google.com/search?q=html+text+alignment+vertical"
          , "https://www.google.com/search?q=toggle+accordion"
          , "https://www.google.com/search?q=html+element+toggle"
          , "https://www.google.com/search?q=html+details"
          , "https://www.google.com/search?q=html+how+to+style+summary+%3A%3Amarker"
          , "https://frankforce.com/dissecting-a-dweet-9-city-sunset/"
          , "https://www.google.com/search?q=javascript+floating+point+numbers"
          , "https://www.google.com/search?q=html+fullscreen"
          , "https://support.mozilla.org/en-US/kb/turn-picture-picture-mode"
          , "https://css-tricks.com/custom-scrollbars-in-webkit/"
          , "https://codepen.io/chriscoyier/pen/gzBsA"
          , "https://stackoverflow.com/questions/4967521/javascript-scrollbar-recommendations"
          , "https://robertheaton.com/2014/03/27/how-does-https-actually-work/"
          , "https://css-tricks.com/how-to-think-like-a-front-end-developer/"
          , "https://css-tricks.com/a-primer-on-the-different-types-of-browser-storage/"
          , "https://css-tricks.com/css-in-3d-learning-to-think-in-cubes-instead-of-boxes/"
          , "https://css-tricks.com/creating-css-shapes-with-emoji/"
          , "https://css-tricks.com/core-web-vital-tooling/"
          , "https://stackoverflow.com/questions/14834198/table-scroll-with-html-and-css"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+hyphen"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+hyphens"
          , "https://medium.com/clear-left-thinking/all-you-need-to-know-about-hyphenation-in-css-2baee2d89179"
          , "https://css-tricks.com/anima-4-0-go-straight-from-design-to-react-in-the-design-handoff/"
          ]
        -- "Learn" ]
        section [ "Sites"
          , "http://www.simplehtmlguide.com/"
          , "https://css-tricks.com/"
          , "https://developer.mozilla.org/en-US/"
          , "https://developer.mozilla.org/en-US/docs/Learn"
          , "https://drafts.csswg.org/"
          , "https://javascript.info/"
          , "https://popper.js.org/"
          , "https://jsbin.com/"
          , "https://html.spec.whatwg.org/"
          , "https://webcompat.com/"
          ]
        -- "Sites" ]
        section [ "Tools"
          , "https://www.reddit.com/r/webdev/comments/jc56v7/chrome_87_beta_webauthn_in_devtools_pantiltzoom/"
          , "http://hackage.haskell.org/package/libjwt-typed"
          , "http://jeffreyrosenbluth.github.io/2016/02/13/lucid.html"
          , "http://www.jsfuck.com/"
          , "https://chrisdone.com/posts/lucid2/"
          , "https://chrispenner.ca/posts/traversal-systems"
          , "https://dev.yorhel.nl/doc/funcweb"
          , "https://docs.gitlab.com/ee/user/project/pages/"
          , "https://github.com/dbaynard/lucid-from-html"
          , "https://github.com/unimonkiez/self-adjusting-interval"
          , "https://hackage.haskell.org/package/blaze-from-html"
          , "https://hackage.haskell.org/package/nice-html"
          , "https://hackage.haskell.org/package/shakespeare"
          , "https://hackage.haskell.org/package/type-of-html"
          , "https://hackage.haskell.org/package/type-of-html-static"
          , "https://haskell-explained.gitlab.io/blog/posts/2020/09/26/http-apis-with-webgear/index.html"
          , "https://jaspervdj.be/blaze/"
          , "https://jonreeve.com/2020/09/type-safe-blog/"
          , "https://jquery.com/"
          , "https://jsconsole.com/"
          , "https://jsfiddle.net/"
          , "https://mmhaskell.com/blog/2020/3/16/lucid-another-html-option"
          , "https://mmhaskell.com/real-world"
          , "https://ocsigen.org/tyxml/4.4.0/manual/intro"
          , "https://trycatchchris.co.uk/hackagecompare/comparePackage/blaze-html/hamlet/heist/lucid/mustache"
          , "https://www.google.com/search?q=haskell+obelisk"
          , "https://www.google.com/search?q=haskell+reflex"
          , "https://www.google.com/search?q=html+sass"
          , "https://www.reddit.com/r/haskell/comments/iz2o1r/explicitly_comprehensible_frp_elm_compared_to/"
          , "https://www.reddit.com/r/haskell/comments/izz4uy/im_looking_for_the_simplest_easiest_and_most/"
          , "https://www.reddit.com/r/haskell/comments/j41wrx/servant_warptls_serve_different_content_depending/"
          , "https://www.reddit.com/r/haskell/comments/j7d3ge/elm_vs_react_vs_purescript/"
          , "https://www.tweag.io/blog/2020-10-09-asterius-cloudflare-worker/"
          , "https://www.youtube.com/watch?v=LZTWYdU4nKk"
          , "https://askubuntu.com/questions/1102594/how-do-i-set-up-the-simplest-http-local-server"
          , "https://unix.stackexchange.com/questions/32182/simple-command-line-http-server"
          , "https://www.pcsuggest.com/best-lightweight-web-server-linux/"
          , "https://www.google.com/search?q=simple+static+web+server+linux"
          , "https://nginx.org/en/docs/"
          , "https://emscripten.org/"
          , "https://www.google.com/search?q=emscripten"
          , "https://highlightjs.org/"
          , "https://prismjs.com/"
          , "https://github.com/googlearchive/code-prettify"
          , "https://meta.stackexchange.com/questions/353983/goodbye-prettify-hello-highlight-js-swapping-out-our-syntax-highlighter"
          , "https://stackoverflow.com/questions/1647724/color-syntax-highlighting-within-an-html-code-tag"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+syntax+highlighting"
          , "https://www.google.com/search?client=firefox-b-1-d&q=haml"
          , "https://www.purescript.org/"
          , "https://stackoverflow.com/questions/16886258/which-javascript-library-should-i-use-for-client-side-hyphenation"
          , "https://www.google.com/search?client=firefox-b-1-d&q=Hyphenator.js"
          ]
        -- "Tools" ]
        section [ "Style"
          , "https://www.google.com/search?q=html+reset+styles"
          , "http://acko.net/blog/geeks-mops-and-lightsabers/"
          , "http://jeffreyrosenbluth.github.io/2016/02/13/lucid.html"
          , "https://artagnon.com/articles/pl"
          , "https://chrispenner.ca/posts/interview"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/position"
          , "https://free.cofree.io/2020/09/01/type-errors/"
          , "https://ihp.digitallyinduced.com/"
          , "https://quuxplusone.github.io/blog/2020/10/12/grab-bag/"
          , "https://sanj.ink/posts/2020-06-13-contravariant-functors-are-weird.html"
          , "https://stackoverflow.com/questions/19867491/double-every-other-element-of-list-from-right-in-haskell"
          , "https://stackoverflow.com/questions/64392946/type-reuse-in-haskell"
          , "https://www.cis.upenn.edu/~plclub/blog/2020-10-09-hs-to-coq/"
          , "https://www.reddit.com/r/haskell/comments/iv10oy/best_practices_to_distribute_a_package_cross/"
          , "https://www.reddit.com/r/haskell/comments/iznptr/servant_is_it_possible_to_decode_multiple_headers/"
          , "https://www.srid.ca/neuron-v1.html"
          , "https://www.ted.com/talks/john_biewen_the_lie_that_invented_racism"
          , "https://www.tweag.io/blog/2020-10-07-ghcide-fellowship-summary/"
          , "https://propensive.com/"
          , "https://en.wikipedia.org/wiki/KHTML"
          , "http://allaboutscala.com/tutorials/chapter-8-beginner-tutorial-using-scala-collection-functions/scala-drop-function/"
          , "https://yoksel.github.io/flex-cheatsheet/#section-flex-wrap"
          , "https://quuxplusone.github.io/blog/2020/10/18/scott-kim-gardner-ambigrams/"
          , "https://www.bestcasinosites.net/gambling/new/"
          , "https://meyerweb.com/"
          , "https://output.jsbin.com/egefop/8"
          , "https://jsbin.com/egefop/11/edit?html,output"
          , "https://www.brightpattern.com/"
          , "https://www.7urtle.com/javascript-applicative-functor-monads"
          , "https://folio.procreate.art/showcase"
          , "https://apps.apple.com/us/app/procreate-pocket/id916366645"
          , "https://cs.stackexchange.com/"
          , "https://webcompat.com/"
          , "http://view.emails.patelco.org/?qs=c71575fd6daf3d01782eab69657ef0953227391696ee690b66e409446b457ddc89cf3ce90b26987f0ee8ba231c8b8b73aa9f8ce1bd7ed5b38c1a47372dd90e480d3563cf9a54e5bd343560bf4cb6fbc1"
          , "https://chenhuijing.com/blog/flexbox-and-padding/"
          ]
        -- "Style" ]
        section [ "Done"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/display/two-value_syntax_of_display"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flow_Layout/Block_and_Inline_Layout_in_Normal_Flow"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/Visual_formatting_model"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/bottom"
          , "https://css-tricks.com/the-css-overflow-property/"
          , "https://chenhuijing.com/blog/flexbox-and-padding/#%F0%9F%92%BB"
          , "https://www.google.com/search?client=firefox-b-1-d&q=firefox+does+not+respect+padding-bottom"
          , "https://www.w3schools.com/css/css_overflow.asp"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Overflow_Tasks"
          , "https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Overflowing_content"
          , "https://www.google.com/search?client=firefox-b-1-d&q=html+overflow+model"
          , "https://css-tricks.com/almanac/properties/h/hyphenate/"
          , "https://developer.mozilla.org/en-US/docs/Web/CSS/hyphens"
          ]
        -- "Done" ]
