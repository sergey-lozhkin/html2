data Overflow
  overflow = hidden | visible | scroll | auto
  Set overflow on fixed panes, not on content

data Fixed
  When dealing with position:fixed elements all children of body should be fixed.
  This way they are controllable, scrollable, and completely normal.
  The body should not contain any other children.
  window.innerHeight giveth INTEGERS not FLOATS! WTF!

font-variant: small-caps;

data Flex
  item.width with % is treated much better

data Simple Static Server
  python3 -m http.server 3333 --bind localhost

data Shadow
  filter: drop-shadow(8px 12px 30px gray);
  .shadow { box-shadow: 4px 8px 1rem #aaa; }

data Firefox
  Loses bottom padding in fixed scrollable bottom element

data Safari
  Safari flex implementation is buggy: flex in fixed element is clipped, scroll not working

<link rel="icon" type="image/png" href="html/assets/avatar-500x500.png">
<link rel="shortcut icon" type="image/png" href="html/assets/avatar-500x500.png">

data Normal Line Height == 1.4285714285714286 em == 10/7

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
