Elm.EventJurden = Elm.EventJurden || {};
Elm.EventJurden.make = function (_elm) {
   "use strict";
   _elm.EventJurden = _elm.EventJurden || {};
   if (_elm.EventJurden.values)
   return _elm.EventJurden.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "EventJurden";
   var Ark = Ark || {};
   Ark.Config = Elm.Ark.Config.make(_elm);
   var Ark = Ark || {};
   Ark.Footer = Elm.Ark.Footer.make(_elm);
   var Ark = Ark || {};
   Ark.Logo = Elm.Ark.Logo.make(_elm);
   var Ark = Ark || {};
   Ark.Parameters = Elm.Ark.Parameters.make(_elm);
   var Ark = Ark || {};
   Ark.SideMenu = Elm.Ark.SideMenu.make(_elm);
   var Ark = Ark || {};
   Ark.Site = Elm.Ark.Site.make(_elm);
   var Ark = Ark || {};
   Ark.Topbar = Elm.Ark.Topbar.make(_elm);
   var Ark = Ark || {};
   Ark.Utils = Elm.Ark.Utils.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var Window = Elm.Window.make(_elm);
   var _op = {};
   var content = function (config) {
      return function () {
         var photos = Graphics.Element.empty;
         var pph = 47;
         var ppw = 171;
         var s2s = config.step;
         var s1s = 2 * config.step;
         var d2w = config.thumbWidth;
         var p1w = config.thumbWidth;
         var p1h = p1w * 10 / 11 | 0;
         var p2h = p1h * 5 / 9 | 0;
         var p2w = p1w * 5 / 9 | 0;
         var d1w = config.contentWidth - p1w - 3 * s1s - config.thumbWidth;
         var description = A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([A3(Graphics.Element.fittedImage,
                   49,
                   38,
                   "assets/reading-01.png")
                   ,A2(Graphics.Element.spacer,
                   s1s,
                   s2s)
                   ,Graphics.Element.width(d1w)(Text.leftAligned(Ark.Parameters.showNormalText("Пьеса рассказывает об одном из будничных вечеров труппы мольеровского театра, поставленного в щекотливую ситуацию: завтра театр изволит посетить его величество Людовик XIV, и&nbsp;господин Мольер, будучи больным, присылает труппе своего театра новую пьесу – о полоумном Журдене. Недовольные артисты нехотя начинают репетировать и настолько увлекаются, что теряют чувство реальности…")))
                   ,A2(Graphics.Element.spacer,
                   s1s,
                   s2s)
                   ,Text.leftAligned(Ark.Parameters.showQuoteText("Участвуют"))
                   ,A2(Graphics.Element.flow,
                   Graphics.Element.right,
                   _J.toList([A2(Graphics.Element.spacer,
                             s1s,
                             s1s)
                             ,A2(Graphics.Element.flow,
                             Graphics.Element.down,
                             _J.toList([Text.leftAligned(Ark.Parameters.showNormalText("Ирина БРОДСКАЯ"))
                                       ,Text.leftAligned(Ark.Parameters.showNormalText("Наталья МАНДРЫЧЕНКО"))
                                       ,Text.leftAligned(Ark.Parameters.showNormalText("Александр ЛИЗНЕНКОВ"))
                                       ,Text.leftAligned(Ark.Parameters.showNormalText("Александр ЛИТОВЧЕНКО"))
                                       ,Text.leftAligned(Ark.Parameters.showNormalText("Артём МИШИН"))]))]))]));
         var pictureBuy = A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([A3(Graphics.Element.fittedImage,
                   p1w,
                   p1h,
                   "assets/details-jurden.jpg")
                   ,A2(Graphics.Element.spacer,
                   s1s,
                   s1s)
                   ,Graphics.Element.width(d2w)(Text.centered(Ark.Parameters.showCityText("MOUNTAIN VIEW")))
                   ,Graphics.Element.width(d2w)(Text.centered(Ark.Parameters.showDateText("19 апреля 4pm")))
                   ,Graphics.Element.width(d2w)(Text.centered(Ark.Utils.ulink("https://maps.google.com/maps?oe=utf-8&client=firefox-a&channel=sb&q=90+Sierra+Vista+Ave,+Mountain+View,+CA&ie=UTF-8&hq=&hnear=0x808fb0afda66c137:0x5b13c3a353ddf1af,90+Sierra+Vista+Ave,+Mountain+View,+CA+94043&gl=us&ei=qgNGU4L-I-jIyAGZmoGYDA&ved=0CCgQ8gEwAA")(Ark.Parameters.showPlaceText("90 Sierra Vista Ave\nMountain View, CA 94043"))))
                   ,Graphics.Element.empty]));
         return A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([A2(Ark.Topbar.topbar,
                   config,
                   Ark.Site.TopEvents)
                   ,Graphics.Element.color(Ark.Parameters.showBackColor)(A2(Graphics.Element.flow,
                   Graphics.Element.down,
                   _J.toList([A2(Graphics.Element.spacer,
                             config.contentWidth,
                             s1s)
                             ,A2(Graphics.Element.flow,
                             Graphics.Element.right,
                             _J.toList([A2(Graphics.Element.spacer,
                                       s1s,
                                       s1s)
                                       ,pictureBuy
                                       ,A2(Graphics.Element.spacer,
                                       s1s,
                                       s1s)
                                       ,description
                                       ,A2(Graphics.Element.spacer,
                                       s1s,
                                       s1s)
                                       ,photos]))
                             ,A2(Graphics.Element.spacer,
                             config.contentWidth,
                             s1s)])))
                   ,Ark.Footer.footer(config)]));
      }();
   };
   var sidebar = function (config) {
      return Graphics.Element.width(config.sidebarWidth)(A2(Graphics.Element.flow,
      Graphics.Element.down,
      _J.toList([Ark.Logo.logo(config)
                ,Graphics.Element.empty])));
   };
   var skeleton = function (windowWidth) {
      return function () {
         var config = Ark.Config.makeConfig(windowWidth);
         return A2(Graphics.Element.flow,
         Graphics.Element.right,
         _J.toList([sidebar(config)
                   ,content(config)]));
      }();
   };
   var main = A2(Signal._op["<~"],
   skeleton,
   Window.width);
   _elm.EventJurden.values = {_op: _op
                             ,main: main
                             ,skeleton: skeleton
                             ,sidebar: sidebar
                             ,content: content};
   return _elm.EventJurden.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Topbar = Elm.Ark.Topbar || {};
Elm.Ark.Topbar.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Topbar = _elm.Ark.Topbar || {};
   if (_elm.Ark.Topbar.values)
   return _elm.Ark.Topbar.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Topbar";
   var Ark = Ark || {};
   Ark.Parameters = Elm.Ark.Parameters.make(_elm);
   var Ark = Ark || {};
   Ark.Site = Elm.Ark.Site.make(_elm);
   var Ark = Ark || {};
   Ark.Utils = Elm.Ark.Utils.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var topbar = F2(function (config,
   tmi) {
      return function () {
         var u = config.step;
         var u2 = 2 * u;
         var markUp = function (s) {
            return A3(Graphics.Collage.collage,
            2 * u,
            u,
            _J.toList([Graphics.Collage.move({ctor: "_Tuple2"
                                             ,_0: 0
                                             ,_1: (0 - s) / 2})(Graphics.Collage.filled(Ark.Parameters.topMarkerColor)(Graphics.Collage.polygon(_J.toList([{ctor: "_Tuple2"
                                                                                                                                                           ,_0: 0 - s
                                                                                                                                                           ,_1: 0}
                                                                                                                                                          ,{ctor: "_Tuple2"
                                                                                                                                                           ,_0: 0
                                                                                                                                                           ,_1: s}
                                                                                                                                                          ,{ctor: "_Tuple2"
                                                                                                                                                           ,_0: s
                                                                                                                                                           ,_1: 0}]))))]));
         };
         var marker = function (it) {
            return A3(Ark.Utils.bool,
            Ark.Utils.spaceY(u),
            markUp(Basics.toFloat(u)),
            _U.eq(it,tmi));
         };
         var item = function (_v0) {
            return function () {
               switch (_v0.ctor)
               {case "_Tuple3":
                  return function () {
                       var tbox = Ark.Utils.centerY(3 * u)(Ark.Utils.padX(u)(Text.centered(Text.link(_v0._2)(A3(Ark.Utils.bool,
                       Ark.Parameters.topNormalText,
                       Ark.Parameters.topActiveText,
                       _U.eq(_v0._0,
                       tmi))(Ark.Utils.nbsp(_v0._1))))));
                       var markerPad = (Graphics.Element.widthOf(tbox) / 2 | 0) - u;
                       return Graphics.Element.link(_v0._2)(A2(Graphics.Element.flow,
                       Graphics.Element.down,
                       _J.toList([tbox
                                 ,Ark.Utils.padL(markerPad)(marker(_v0._0))])));
                    }();}
               _E.Case($moduleName,
               "between lines 28 and 30");
            }();
         };
         var rights = _J.toList([{ctor: "_Tuple3"
                                 ,_0: Ark.Site.TopBoxOffice
                                 ,_1: "Box Office"
                                 ,_2: "BoxOfficeInfo.html"}
                                ,{ctor: "_Tuple3"
                                 ,_0: Ark.Site.TopTeam
                                 ,_1: "About Us"
                                 ,_2: "TeamStaff.html"}
                                ,{ctor: "_Tuple3"
                                 ,_0: Ark.Site.TopSupportUs
                                 ,_1: "Support & Volunteer"
                                 ,_2: "SupportUsDonations.html"}]);
         var rightBox = Ark.Utils.padR(u)(Graphics.Element.flow(Graphics.Element.right)(A2(List.map,
         item,
         rights)));
         var lefts = _J.toList([{ctor: "_Tuple3"
                                ,_0: Ark.Site.TopEvents
                                ,_1: "Events"
                                ,_2: "EventsList.html"}]);
         var leftBox = Ark.Utils.padL(u)(Graphics.Element.flow(Graphics.Element.right)(A2(List.map,
         item,
         lefts)));
         var spring = config.topbarWidth - Graphics.Element.widthOf(leftBox) - Graphics.Element.widthOf(rightBox);
         var topStrip = A2(Graphics.Element.flow,
         Graphics.Element.right,
         _J.toList([leftBox
                   ,Ark.Utils.spaceX(spring)
                   ,rightBox]));
         return A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([Ark.Utils.spaceY(u2)
                   ,topStrip]));
      }();
   });
   _elm.Ark.Topbar.values = {_op: _op
                            ,topbar: topbar};
   return _elm.Ark.Topbar.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.SideMenu = Elm.Ark.SideMenu || {};
Elm.Ark.SideMenu.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.SideMenu = _elm.Ark.SideMenu || {};
   if (_elm.Ark.SideMenu.values)
   return _elm.Ark.SideMenu.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.SideMenu";
   var Ark = Ark || {};
   Ark.Parameters = Elm.Ark.Parameters.make(_elm);
   var Ark = Ark || {};
   Ark.Utils = Elm.Ark.Utils.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var sideMenu = F2(function (config,
   items) {
      return function () {
         var u2 = 2 * config.step;
         var markLeft = F3(function (w,
         h,
         c) {
            return function () {
               var p = Basics.toFloat(w) / 2;
               var s = Basics.toFloat(h) / 2;
               return A3(Graphics.Collage.collage,
               w,
               h,
               _J.toList([Graphics.Collage.moveX(p)(Graphics.Collage.filled(c)(Graphics.Collage.polygon(_J.toList([{ctor: "_Tuple2"
                                                                                                                   ,_0: 0
                                                                                                                   ,_1: s}
                                                                                                                  ,{ctor: "_Tuple2"
                                                                                                                   ,_0: 0 - s
                                                                                                                   ,_1: 0}
                                                                                                                  ,{ctor: "_Tuple2"
                                                                                                                   ,_0: 0
                                                                                                                   ,_1: 0 - s}]))))]));
            }();
         });
         var marker = function (m) {
            return A3(Ark.Utils.bool,
            Ark.Utils.spaceX(u2),
            A3(markLeft,
            u2,
            u2,
            Ark.Parameters.sideMarkerColor),
            m);
         };
         var text = F2(function (m,t) {
            return A3(Ark.Utils.bool,
            Ark.Parameters.sideNormalText,
            Ark.Parameters.sideActiveText,
            m)(Ark.Utils.nbsp(t));
         });
         var item = function (_v0) {
            return function () {
               switch (_v0.ctor)
               {case "_Tuple3":
                  return Graphics.Element.link(_v0._1)(A2(Graphics.Element.flow,
                    Graphics.Element.right,
                    _J.toList([Ark.Utils.centerY(u2)(Graphics.Element.width(config.sidebarWidth - u2)(Text.rightAligned(Text.link(_v0._1)(A2(text,
                              _v0._2,
                              _v0._0)))))
                              ,marker(_v0._2)])));}
               _E.Case($moduleName,
               "between lines 8 and 10");
            }();
         };
         return Graphics.Element.flow(Graphics.Element.down)(A2(List.map,
         item,
         items));
      }();
   });
   _elm.Ark.SideMenu.values = {_op: _op
                              ,sideMenu: sideMenu};
   return _elm.Ark.SideMenu.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Footer = Elm.Ark.Footer || {};
Elm.Ark.Footer.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Footer = _elm.Ark.Footer || {};
   if (_elm.Ark.Footer.values)
   return _elm.Ark.Footer.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Footer";
   var Ark = Ark || {};
   Ark.Parameters = Elm.Ark.Parameters.make(_elm);
   var Ark = Ark || {};
   Ark.Utils = Elm.Ark.Utils.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var footer = function (config) {
      return function () {
         var copyright = function (t) {
            return Graphics.Element.width(config.thumbWidth)(Text.leftAligned(Ark.Parameters.footerCopyrightText(t)));
         };
         var linkBox = F2(function (url,
         t) {
            return Text.leftAligned(Text.link(url)(Ark.Parameters.footerNormalText(t)));
         });
         var textBox = function (t) {
            return Text.leftAligned(Ark.Parameters.footerNormalText(t));
         };
         var blankY = Ark.Utils.spaceY(config.step);
         var u2 = 2 * config.step;
         var blankX = Ark.Utils.spaceX(u2);
         var leftFoot = Ark.Utils.padX(u2)(Graphics.Element.flow(Graphics.Element.down)(List.intersperse(blankY)(A2(List.map,
         function ($) {
            return Graphics.Element.width(config.contentWidth - config.thumbWidth - 2 * u2)(Graphics.Element.flow(Graphics.Element.right)(List.intersperse(blankX)($)));
         },
         _J.toList([_J.toList([A2(linkBox,
                              "EventsList.html",
                              "Events")
                              ,textBox("Workshops")])
                   ,_J.toList([A2(linkBox,
                              "Mission.html",
                              "Mission")
                              ,A2(linkBox,
                              "TeamStaff.html",
                              "About Us")
                              ,linkBox("BoxOfficeInfo.html")(Ark.Utils.nbsp("Box Office"))
                              ,linkBox("SupportUsDonations.html")(Ark.Utils.nbsp("Support & Volunteer"))])
                   ,_J.toList([textBox(Ark.Utils.nbsp("Stage directors"))
                              ,textBox("Actors")
                              ,textBox("Studio")
                              ,textBox("Music")
                              ,textBox("Drama")
                              ,textBox("Art")])])))));
         var rightFoot = Graphics.Element.width(config.thumbWidth)(Ark.Utils.padR(u2)(A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([Graphics.Element.flow(Graphics.Element.right)(A2(List.intersperse,
                   blankX,
                   _J.toList([A3(Graphics.Element.fittedImage,
                             27,
                             19,
                             "assets/mailbox-1.png")
                             ,A3(Graphics.Element.fittedImage,
                             24,
                             20,
                             "assets/tweeter-1.png")
                             ,Graphics.Element.link("https://www.facebook.com/groups/435706523149192/")(A3(Graphics.Element.fittedImage,
                             20,
                             20,
                             "assets/facebook-1.png"))])))
                   ,Ark.Utils.spaceY(u2)
                   ,A2(Graphics.Element.flow,
                   Graphics.Element.down,
                   _J.toList([copyright(Ark.Utils.nbsp("Creative Association ARK&#174;"))
                             ,copyright(Ark.Utils.nbsp("&#169; All rights reserved"))]))]))));
         return Graphics.Element.color(Ark.Parameters.footerBackColor)(Ark.Utils.padY(u2)(A2(Graphics.Element.flow,
         Graphics.Element.right,
         _J.toList([leftFoot
                   ,rightFoot]))));
      }();
   };
   _elm.Ark.Footer.values = {_op: _op
                            ,footer: footer};
   return _elm.Ark.Footer.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Parameters = Elm.Ark.Parameters || {};
Elm.Ark.Parameters.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Parameters = _elm.Ark.Parameters || {};
   if (_elm.Ark.Parameters.values)
   return _elm.Ark.Parameters.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Parameters";
   var Ark = Ark || {};
   Ark.Colour = Elm.Ark.Colour.make(_elm);
   var Ark = Ark || {};
   Ark.Config = Elm.Ark.Config.make(_elm);
   var Ark = Ark || {};
   Ark.Utils = Elm.Ark.Utils.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var homeBackColor = Ark.Config.backColor;
   var homeSmallDateText = function ($) {
      return Text.color(Color.white)(Ark.Utils.textL(12)($));
   };
   var homeSmallTitleText = function ($) {
      return Text.color(Color.white)(Ark.Utils.textM(14)($));
   };
   var homeSmallAuthorText = function ($) {
      return Text.color(Color.white)(Ark.Utils.textL(12)($));
   };
   var homeInfoText = function ($) {
      return Text.color(Color.white)(Ark.Utils.textL(Ark.Config.smallFontSize)($));
   };
   var homeTitleText = function ($) {
      return Text.color(Color.white)(Ark.Utils.textM(Ark.Config.normalFontSize)($));
   };
   var personBackColor = Ark.Config.backColor;
   var staffListBackColor = Ark.Config.backColor;
   var staffListColor4 = Ark.Colour.orange1;
   var staffListColor3 = A3(Color.rgb,
   171,
   167,
   75);
   var staffListColor2 = A3(Color.rgb,
   181,
   68,
   101);
   var staffListColor1 = A3(Color.rgb,
   77,
   91,
   135);
   var actorListBackColor = Ark.Config.backColor;
   var actorListColor3 = A3(Color.rgb,
   171,
   167,
   75);
   var actorListColor2 = Ark.Colour.orange1;
   var actorListColor1 = A3(Color.rgb,
   227,
   169,
   85);
   var volunteerBackColor = Ark.Config.backColor;
   var donationsBackColor = Ark.Config.backColor;
   var missionBackColor = Ark.Config.backColor;
   var showBackColor = Ark.Config.backColor;
   var showTitleText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textM(Ark.Config.normalFontSize)($));
   };
   var showAuthorText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textN(Ark.Config.normalFontSize)($));
   };
   var showPlaceText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textLI(Ark.Config.smallFontSize)($));
   };
   var showDateText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textM(Ark.Config.normalFontSize)($));
   };
   var showCityText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textN(Ark.Config.normalFontSize)($));
   };
   var showListBackColor = Ark.Config.backColor;
   var showListTitleText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textM(Ark.Config.normalFontSize)($));
   };
   var showListAuthorText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textN(Ark.Config.normalFontSize)($));
   };
   var showListPlaceText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textLI(Ark.Config.smallFontSize)($));
   };
   var showListDateText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textM(Ark.Config.normalFontSize)($));
   };
   var showListCityText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textN(Ark.Config.normalFontSize)($));
   };
   var boxOfficeBackColor = Ark.Config.backColor;
   var ucBackColor = Ark.Config.backColor;
   var ucNormalText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textN(Ark.Config.hugeFontSize)($));
   };
   var footerBackColor = Ark.Config.inversedBackColor;
   var footerCopyrightText = function ($) {
      return Text.color(Ark.Config.inversedTextColor)(Ark.Utils.textL(Ark.Config.tinyFontSize)($));
   };
   var footerNormalText = function ($) {
      return Text.color(Ark.Config.inversedTextColor)(Ark.Utils.textL(Ark.Config.smallFontSize)($));
   };
   var sideMarkerColor = Ark.Config.backColor;
   var topMarkerColor = Ark.Config.backColor;
   var smallQuoteText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textLI(Ark.Config.smallFontSize)($));
   };
   var showSmallQuoteText = smallQuoteText;
   var missionQuoteText = smallQuoteText;
   var personQuoteAuthorText = smallQuoteText;
   var smallTitleText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textM(Ark.Config.smallFontSize)($));
   };
   var sideActiveText = smallTitleText;
   var smallNormalText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textL(Ark.Config.smallFontSize)($));
   };
   var sideNormalText = smallNormalText;
   var quoteText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textLI(Ark.Config.normalFontSize)($));
   };
   var showQuoteText = quoteText;
   var personQuoteText = quoteText;
   var personYearText = quoteText;
   var titleText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textM(Ark.Config.normalFontSize)($));
   };
   var topActiveText = titleText;
   var boxOfficeTitleText = titleText;
   var donationsTitleText = titleText;
   var personTitleText = titleText;
   var normalText = function ($) {
      return Text.color(Ark.Config.normalTextColor)(Ark.Utils.textL(Ark.Config.normalFontSize)($));
   };
   var topNormalText = normalText;
   var boxOfficeNormalText = normalText;
   var showNormalText = normalText;
   var missionNormalText = normalText;
   var donationsNormalText = normalText;
   var volunteerNormalText = normalText;
   var actorListNormalText = normalText;
   var staffListNormalText = normalText;
   var personNormalText = normalText;
   var personBioText = normalText;
   _elm.Ark.Parameters.values = {_op: _op
                                ,normalText: normalText
                                ,titleText: titleText
                                ,quoteText: quoteText
                                ,smallNormalText: smallNormalText
                                ,smallTitleText: smallTitleText
                                ,smallQuoteText: smallQuoteText
                                ,topNormalText: topNormalText
                                ,topActiveText: topActiveText
                                ,topMarkerColor: topMarkerColor
                                ,sideNormalText: sideNormalText
                                ,sideActiveText: sideActiveText
                                ,sideMarkerColor: sideMarkerColor
                                ,footerNormalText: footerNormalText
                                ,footerCopyrightText: footerCopyrightText
                                ,footerBackColor: footerBackColor
                                ,ucNormalText: ucNormalText
                                ,ucBackColor: ucBackColor
                                ,boxOfficeNormalText: boxOfficeNormalText
                                ,boxOfficeTitleText: boxOfficeTitleText
                                ,boxOfficeBackColor: boxOfficeBackColor
                                ,showListCityText: showListCityText
                                ,showListDateText: showListDateText
                                ,showListPlaceText: showListPlaceText
                                ,showListAuthorText: showListAuthorText
                                ,showListTitleText: showListTitleText
                                ,showListBackColor: showListBackColor
                                ,showNormalText: showNormalText
                                ,showQuoteText: showQuoteText
                                ,showSmallQuoteText: showSmallQuoteText
                                ,showCityText: showCityText
                                ,showDateText: showDateText
                                ,showPlaceText: showPlaceText
                                ,showAuthorText: showAuthorText
                                ,showTitleText: showTitleText
                                ,showBackColor: showBackColor
                                ,missionNormalText: missionNormalText
                                ,missionQuoteText: missionQuoteText
                                ,missionBackColor: missionBackColor
                                ,donationsNormalText: donationsNormalText
                                ,donationsTitleText: donationsTitleText
                                ,donationsBackColor: donationsBackColor
                                ,volunteerNormalText: volunteerNormalText
                                ,volunteerBackColor: volunteerBackColor
                                ,actorListNormalText: actorListNormalText
                                ,actorListColor1: actorListColor1
                                ,actorListColor2: actorListColor2
                                ,actorListColor3: actorListColor3
                                ,actorListBackColor: actorListBackColor
                                ,staffListNormalText: staffListNormalText
                                ,staffListColor1: staffListColor1
                                ,staffListColor2: staffListColor2
                                ,staffListColor3: staffListColor3
                                ,staffListColor4: staffListColor4
                                ,staffListBackColor: staffListBackColor
                                ,personNormalText: personNormalText
                                ,personTitleText: personTitleText
                                ,personQuoteText: personQuoteText
                                ,personQuoteAuthorText: personQuoteAuthorText
                                ,personYearText: personYearText
                                ,personBioText: personBioText
                                ,personBackColor: personBackColor
                                ,homeTitleText: homeTitleText
                                ,homeInfoText: homeInfoText
                                ,homeSmallAuthorText: homeSmallAuthorText
                                ,homeSmallTitleText: homeSmallTitleText
                                ,homeSmallDateText: homeSmallDateText
                                ,homeBackColor: homeBackColor};
   return _elm.Ark.Parameters.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Colour = Elm.Ark.Colour || {};
Elm.Ark.Colour.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Colour = _elm.Ark.Colour || {};
   if (_elm.Ark.Colour.values)
   return _elm.Ark.Colour.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Colour";
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var velvet1 = A3(Color.rgb,
   181,
   68,
   101);
   var velvet0 = A3(Color.rgb,
   204,
   51,
   102);
   var brown1 = A3(Color.rgb,
   100,
   100,
   92);
   var brown0 = A3(Color.rgb,
   102,
   102,
   102);
   var green1 = A3(Color.rgb,
   171,
   167,
   75);
   var green0 = A3(Color.rgb,
   153,
   153,
   51);
   var blue1 = A3(Color.rgb,
   77,
   91,
   135);
   var blue0 = A3(Color.rgb,
   102,
   102,
   153);
   var cyan1 = A3(Color.rgb,
   145,
   183,
   171);
   var cyan0 = A3(Color.rgb,
   153,
   204,
   153);
   var orange1 = A3(Color.rgb,
   227,
   169,
   85);
   var orange0 = A3(Color.rgb,
   204,
   153,
   102);
   _elm.Ark.Colour.values = {_op: _op
                            ,orange0: orange0
                            ,orange1: orange1
                            ,cyan0: cyan0
                            ,cyan1: cyan1
                            ,blue0: blue0
                            ,blue1: blue1
                            ,green0: green0
                            ,green1: green1
                            ,brown0: brown0
                            ,brown1: brown1
                            ,velvet0: velvet0
                            ,velvet1: velvet1};
   return _elm.Ark.Colour.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Utils = Elm.Ark.Utils || {};
Elm.Ark.Utils.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Utils = _elm.Ark.Utils || {};
   if (_elm.Ark.Utils.values)
   return _elm.Ark.Utils.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Utils";
   var Ark = Ark || {};
   Ark.Config = Elm.Ark.Config.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var listDef = F3(function (def,
   f,
   xs) {
      return function () {
         switch (xs.ctor)
         {case "[]": return def;}
         return f(xs);
      }();
   });
   var fromJust = function (_v1) {
      return function () {
         switch (_v1.ctor)
         {case "Just": return _v1._0;}
         _E.Case($moduleName,
         "on line 38, column 21 to 22");
      }();
   };
   var ulink = function (url) {
      return function ($) {
         return Text.link(url)(Text.line(Text.Under)($));
      };
   };
   var bool = F3(function (f,t,b) {
      return b ? t : f;
   });
   var nbsp = A2(String.foldr,
   F2(function (c,cs) {
      return A3(bool,
      A2(String.cons,c,cs),
      _L.append("&nbsp;",cs),
      _U.eq(c,_U.chr(" ")));
   }),
   "");
   var centerXY = F3(function (x,
   y,
   e) {
      return A4(Graphics.Element.container,
      x,
      y,
      Graphics.Element.middle,
      e);
   });
   var centerY = F2(function (y,
   e) {
      return A4(Graphics.Element.container,
      Graphics.Element.widthOf(e),
      y,
      Graphics.Element.middle,
      e);
   });
   var centerX = F2(function (x,
   e) {
      return A4(Graphics.Element.container,
      x,
      Graphics.Element.heightOf(e),
      Graphics.Element.middle,
      e);
   });
   var spaceY = function (y) {
      return A2(Graphics.Element.spacer,
      1,
      y);
   };
   var padT = F2(function (t,e) {
      return A2(Graphics.Element.flow,
      Graphics.Element.down,
      _J.toList([spaceY(t),e]));
   });
   var padB = F2(function (b,e) {
      return A2(Graphics.Element.flow,
      Graphics.Element.down,
      _J.toList([e,spaceY(b)]));
   });
   var padTB = F3(function (t,
   b,
   e) {
      return A2(Graphics.Element.flow,
      Graphics.Element.down,
      _J.toList([spaceY(t)
                ,e
                ,spaceY(b)]));
   });
   var padY = function (y) {
      return A2(padTB,y,y);
   };
   var spaceX = function (x) {
      return A2(Graphics.Element.spacer,
      x,
      1);
   };
   var padL = F2(function (l,e) {
      return A2(Graphics.Element.flow,
      Graphics.Element.right,
      _J.toList([spaceX(l),e]));
   });
   var padR = F2(function (r,e) {
      return A2(Graphics.Element.flow,
      Graphics.Element.right,
      _J.toList([e,spaceX(r)]));
   });
   var padLR = F3(function (l,
   r,
   e) {
      return A2(Graphics.Element.flow,
      Graphics.Element.right,
      _J.toList([spaceX(l)
                ,e
                ,spaceX(r)]));
   });
   var padX = function (x) {
      return A2(padLR,x,x);
   };
   var padXY = F2(function (x,y) {
      return function ($) {
         return padY(y)(padX(x)($));
      };
   });
   var pad = function (p) {
      return function ($) {
         return padY(p)(padX(p)($));
      };
   };
   var padLRTB = F4(function (l,
   r,
   t,
   b) {
      return function ($) {
         return A2(padTB,
         t,
         b)(A2(padLR,l,r)($));
      };
   });
   var textLI = F2(function (h,t) {
      return Text.height(h)(Text.typeface(_J.toList([_L.append(Ark.Config.normalFont,
      " Light Italic")]))(Text.toText(t)));
   });
   var textM = F2(function (h,t) {
      return Text.height(h)(Text.typeface(_J.toList([_L.append(Ark.Config.normalFont,
      " Medium")]))(Text.toText(t)));
   });
   var textN = F2(function (h,t) {
      return Text.height(h)(Text.typeface(_J.toList([_L.append(Ark.Config.normalFont,
      " Regular")]))(Text.toText(t)));
   });
   var textL = F2(function (h,t) {
      return Text.height(h)(Text.typeface(_J.toList([_L.append(Ark.Config.normalFont,
      " Light")]))(Text.toText(t)));
   });
   _elm.Ark.Utils.values = {_op: _op
                           ,textL: textL
                           ,textN: textN
                           ,textM: textM
                           ,textLI: textLI
                           ,spaceX: spaceX
                           ,spaceY: spaceY
                           ,padL: padL
                           ,padR: padR
                           ,padLR: padLR
                           ,padT: padT
                           ,padB: padB
                           ,padTB: padTB
                           ,padX: padX
                           ,padY: padY
                           ,padXY: padXY
                           ,pad: pad
                           ,padLRTB: padLRTB
                           ,centerX: centerX
                           ,centerY: centerY
                           ,centerXY: centerXY
                           ,bool: bool
                           ,nbsp: nbsp
                           ,ulink: ulink
                           ,fromJust: fromJust
                           ,listDef: listDef};
   return _elm.Ark.Utils.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Config = Elm.Ark.Config || {};
Elm.Ark.Config.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Config = _elm.Ark.Config || {};
   if (_elm.Ark.Config.values)
   return _elm.Ark.Config.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Config";
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var makeConfig = function (viewWidth) {
      return function () {
         var windowWidth = viewWidth;
         var unit = ((windowWidth - 1) / 10 | 0) + 1;
         var step = unit / 9 | 0;
         var thumbWidth = 2 * unit;
         var contentWidth = 4 * thumbWidth;
         var topbarWidth = contentWidth;
         var footerWidth = contentWidth;
         var bannerWidth = contentWidth;
         var bannerHeight = bannerWidth * 375 / 1422 | 0;
         var thumbHeight = unit * 13 / 9 | 0;
         var thumbWidth2 = unit;
         var thumbHeight2 = thumbWidth2;
         var topbarHeight = unit;
         var footerHeight = unit * 11 / 9 | 0;
         var spacerHeight = unit;
         var sidebarWidth = windowWidth - contentWidth;
         var logoWidth = sidebarWidth;
         var logoHeight = logoWidth * 364 / 556 | 0;
         return {_: {}
                ,bannerHeight: bannerHeight
                ,bannerWidth: bannerWidth
                ,contentWidth: contentWidth
                ,footerHeight: footerHeight
                ,footerWidth: footerWidth
                ,logoHeight: logoHeight
                ,logoWidth: logoWidth
                ,sidebarWidth: sidebarWidth
                ,step: step
                ,thumbHeight: thumbHeight
                ,thumbHeight2: thumbHeight2
                ,thumbWidth: thumbWidth
                ,thumbWidth2: thumbWidth2
                ,topbarHeight: topbarHeight
                ,topbarWidth: topbarWidth
                ,unit: unit
                ,windowWidth: windowWidth};
      }();
   };
   var inversedBackColor = Color.black;
   var inversedTextColor = Color.lightGrey;
   var backColor = Color.grey;
   var normalTextColor = A3(Color.rgb,
   48,
   48,
   48);
   var hugeFontSize = 30;
   var tinyFontSize = 12;
   var smallFontSize = 15;
   var normalFontSize = 17;
   var normalFont = "Roboto";
   _elm.Ark.Config.values = {_op: _op
                            ,normalFont: normalFont
                            ,normalFontSize: normalFontSize
                            ,smallFontSize: smallFontSize
                            ,tinyFontSize: tinyFontSize
                            ,hugeFontSize: hugeFontSize
                            ,normalTextColor: normalTextColor
                            ,backColor: backColor
                            ,inversedTextColor: inversedTextColor
                            ,inversedBackColor: inversedBackColor
                            ,makeConfig: makeConfig};
   return _elm.Ark.Config.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Logo = Elm.Ark.Logo || {};
Elm.Ark.Logo.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Logo = _elm.Ark.Logo || {};
   if (_elm.Ark.Logo.values)
   return _elm.Ark.Logo.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Logo";
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var logo = function (config) {
      return Graphics.Element.link("index.html")(A3(Graphics.Element.container,
      config.logoWidth,
      config.logoHeight,
      Graphics.Element.middle)(A3(Graphics.Element.fittedImage,
      config.logoWidth,
      config.logoHeight,
      "assets/ark-logo-01.png")));
   };
   _elm.Ark.Logo.values = {_op: _op
                          ,logo: logo};
   return _elm.Ark.Logo.values;
};Elm.Ark = Elm.Ark || {};
Elm.Ark.Site = Elm.Ark.Site || {};
Elm.Ark.Site.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Site = _elm.Ark.Site || {};
   if (_elm.Ark.Site.values)
   return _elm.Ark.Site.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Site";
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Collage = Elm.Graphics.Collage.make(_elm);
   var Graphics = Graphics || {};
   Graphics.Element = Elm.Graphics.Element.make(_elm);
   var List = Elm.List.make(_elm);
   var Maybe = Elm.Maybe.make(_elm);
   var Native = Native || {};
   Native.Ports = Elm.Native.Ports.make(_elm);
   var Signal = Elm.Signal.make(_elm);
   var String = Elm.String.make(_elm);
   var Text = Elm.Text.make(_elm);
   var Time = Elm.Time.make(_elm);
   var _op = {};
   var TopSupportUs = {ctor: "TopSupportUs"};
   var TopBoxOffice = {ctor: "TopBoxOffice"};
   var TopTeam = {ctor: "TopTeam"};
   var TopEvents = {ctor: "TopEvents"};
   var TopActivities = {ctor: "TopActivities"};
   var TopHome = {ctor: "TopHome"};
   _elm.Ark.Site.values = {_op: _op
                          ,TopHome: TopHome
                          ,TopActivities: TopActivities
                          ,TopEvents: TopEvents
                          ,TopTeam: TopTeam
                          ,TopBoxOffice: TopBoxOffice
                          ,TopSupportUs: TopSupportUs};
   return _elm.Ark.Site.values;
};
