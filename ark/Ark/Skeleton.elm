module Ark.Skeleton where

import Window
import Ark.Config (..)
import Ark.Footer (..)
import Ark.Logo (..)
import Ark.SideMenu (..)
import Ark.Topbar (..)
import Ark.Utils (..)

skeleton pageId sideMenuList mainContent =
  let
    page pageWidth windowWidth =
      let
        sidebar = width config.sidebarWidth <| flow down [ logo config, sideMenu config sideMenuList ]
        content = flow down [ topbar config pageId, mainContent config, footer config ]
        config  = makeConfig pageWidth
        leftPad = (windowWidth - pageWidth) `div` 2
      in
        flow right [
          spaceX leftPad,
          width pageWidth <| flow right [ sidebar, content ]
        ]
  in
    -- Statistically viable size 1366 x 768, 2013-2014 yy
    page 1366 <~ Window.width
