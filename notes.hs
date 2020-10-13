data Property
  display
  position
  float
  overflow

data Layout
  flow
  table
  flex
  grid
  ruby

data TODO =
  WebSockets
  PHP

data Margin =
  Margin collapse == "margin-trim" property, draft, not implemented

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
