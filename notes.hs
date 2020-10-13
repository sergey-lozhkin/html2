data Learn = [Lots of advanced stuff on this site and IN its HTML/CSS/JS/SVG code]
  https://css-tricks.com/
  http://www.jsfuck.com/
  https://www.google.com/search?client=firefox-b-1-d&q=html+window+clientWidth
  https://www.google.com/search?client=firefox-b-1-d&q=html+event+cancelable
  https://www.google.com/search?client=firefox-b-1-d&q=html+onload+function
  https://www.google.com/search?client=firefox-b-1-d&q=html+bubbles
  https://www.google.com/search?client=firefox-b-1-d&q=html+objec+navigator
  https://www.google.com/search?client=firefox-b-1-d&q=javascript+eval+function
  https://www.google.com/search?client=firefox-b-1-d&q=javascript+use+strict
  https://www.google.com/search?client=firefox-b-1-d&q=html+can+i+set+abritrary+property+on+document+object
  https://javascript.info/dom-attributes-and-properties
  http://www.javascriptkit.com/dhtmltutors/customattributes.shtml
  https://www.google.com/search?client=firefox-b-1-d&q=%3C%3Fphp
  https://javascript.info/
  https://www.google.com/search?client=firefox-b-1-d&q=htyml+textcontent
  https://www.google.com/search?client=firefox-b-1-d&q=html+how+script+executed

data TODO =
  WebSockets
  PHP

style_ =
    "white-space: nowrap;"
<>  "display: inline-block;"

data Margin === USE WITH CARE
  Use extra div if needed
  width/height is without margin, relative to current box-sizing

"*{box-sizing:border-box;}"

data Note "inline-block puts a gap between its kind of two elements which is non-calculable and floats not"

data ClearFix Hack
-- <!DOCTYPE html>
-- <html>
--   <head>
--     <style>
--       div.container {
--         width: 100%;
--         border: 2px solid black;
--       }
--       div.box {
--         box-sizing: border-box;
--         width: 40%;
--         border: 5px solid red;
--         float: left;
--       }
--       </style>
--   </head>
--   <body>
--     <div class="container">
--       <div>Text text text</div>
--       <div class="box">This div occupies the left half</div>
--       <div class="box" style="height:100px">This div occupies the right half</div>
--       <div style="clear:both;border:5px solid lightblue"></div>
--     </div>
--   </body>
-- </html>
