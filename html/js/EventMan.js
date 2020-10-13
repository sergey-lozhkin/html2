Elm.EventMan = Elm.EventMan || {};
Elm.EventMan.make = function (_elm) {
   "use strict";
   _elm.EventMan = _elm.EventMan || {};
   if (_elm.EventMan.values)
   return _elm.EventMan.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "EventMan";
   var Ark = Ark || {};
   Ark.Config = Elm.Ark.Config.make(_elm);
   var Ark = Ark || {};
   Ark.Footer = Elm.Ark.Footer.make(_elm);
   var Ark = Ark || {};
   Ark.Logo = Elm.Ark.Logo.make(_elm);
   var Ark = Ark || {};
   Ark.Parameters = Elm.Ark.Parameters.make(_elm);
   var Ark = Ark || {};
   Ark.Paypal = Elm.Ark.Paypal.make(_elm);
   var Ark = Ark || {};
   Ark.Shows = Elm.Ark.Shows.make(_elm);
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
         var info = Ark.Shows.showInfo(Ark.Shows.showManWoman);
         var d2w = config.thumbWidth;
         var p1w = config.thumbWidth;
         var p1h = p1w;
         var p2h = p1h * 5 / 9 | 0;
         var p2w = p1w * 5 / 9 | 0;
         var u1 = config.step;
         var photos = Graphics.Element.flow(Graphics.Element.down)(List.intersperse(Ark.Utils.spaceY(u1))(A2(List.map,
         function ($) {
            return A2(Graphics.Element.fittedImage,
            p2w,
            p2h)(F2(function (x,y) {
               return _L.append(x,y);
            })("assets/")($));
         },
         info.photos)));
         var u2 = 2 * config.step;
         var d1w = config.contentWidth - p1w - 3 * u2 - config.thumbWidth;
         var pictureBuy = A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([A3(Graphics.Element.fittedImage,
                   p1w,
                   p1h,
                   "assets/details-man-woman.jpg")
                   ,Ark.Utils.spaceY(u2)
                   ,Graphics.Element.width(d2w)(Text.centered(Ark.Parameters.showCityText("SAN FRANCISCO")))
                   ,Graphics.Element.width(d2w)(Text.centered(Ark.Parameters.showDateText("17 августа 5pm")))
                   ,Graphics.Element.width(d2w)(Text.centered(Ark.Utils.ulink("http://www.sheltontheater.org/?page_id=102")(Ark.Parameters.showPlaceText("Shelton Theater"))))
                   ,Ark.Utils.spaceY(u1)
                   ,A3(Graphics.Element.container,
                   d2w,
                   Graphics.Element.heightOf(Ark.Paypal.paypalButton_Man_20140817),
                   Graphics.Element.middle)(Ark.Paypal.paypalButton_Man_20140817)
                   ,Graphics.Element.empty]));
         var description = A2(Graphics.Element.flow,
         Graphics.Element.down,
         _J.toList([Graphics.Element.width(d1w)(Text.leftAligned(Ark.Parameters.showNormalText("Когда Вы не так молоды, как раньше, как найти свою идеальную пару?")))
                   ,A2(Graphics.Element.spacer,
                   u2,
                   u1)
                   ,Graphics.Element.width(d1w)(Text.leftAligned(Ark.Parameters.showNormalText("«Мы не дети больше,&thinsp;&mdash;&thinsp;говорит Дина Федоровна, одна из двух главных героев пьесы,&thinsp;&mdash;&thinsp;Я предлагаю пропустить несколько этапов. Скажем, мы уже встречались, мы узнали друг друга, и&nbsp;мы нравимся друг другу&thinsp;&mdash;&thinsp;вы любите меня, я люблю вас, мы делаем друг другу комплименты, мы продолжаем встречаться, продолжаем встречаться и&nbsp;&mdash;&nbsp;что будет дальше?»")))
                   ,A2(Graphics.Element.spacer,
                   u2,
                   u1)
                   ,Graphics.Element.width(d1w)(Text.leftAligned(Ark.Parameters.showNormalText("На первый взгляд, Дина Федоровна и&nbsp;Виктор Петрович являются полной противоположностью друг другу. Тем не менее, они в состоянии выйти за рамки гордости, обиды, недоверия, непонимания и&nbsp;услышать друг друга… В течение одной ночи отношения между ними проходят через все возможные этапы: знакомство, сближение, отчуждение, ссора, любовь, ненависть и&nbsp;снова любовь.")))
                   ,A2(Graphics.Element.spacer,
                   u2,
                   u1)
                   ,Graphics.Element.width(d1w)(Text.leftAligned(Ark.Parameters.showNormalText("Работая над пьесой Семена Злотникова мы пытались понять, что&nbsp;же мешает людям стать ближе и&nbsp;понятней друг другу и&nbsp;почему во взаимоотношениях между мужчиной и&nbsp;женщиной всегда «ремонт»? Приходите и&nbsp;попробуем вместе разобраться в&nbsp;этом!")))
                   ,A2(Graphics.Element.spacer,
                   u2,
                   u1)
                   ,Text.leftAligned(Ark.Parameters.showQuoteText("Режиссёр"))
                   ,Ark.Utils.padL(u2)(Text.leftAligned(Ark.Parameters.showNormalText("Александр ЛИЗНЕНКОВ")))
                   ,A2(Graphics.Element.spacer,
                   u2,
                   u1)
                   ,Text.leftAligned(Ark.Parameters.showQuoteText("В ролях"))
                   ,Ark.Utils.padL(u2)(Text.leftAligned(Ark.Parameters.showNormalText("Дина Фёдоровна")))
                   ,Ark.Utils.padL(2 * u2)(Text.leftAligned(Ark.Parameters.showNormalText("Ирина БРОДСКАЯ")))
                   ,Ark.Utils.spaceY(u1 / 2 | 0)
                   ,Ark.Utils.padL(u2)(Text.leftAligned(Ark.Parameters.showNormalText("Виктор Петрович")))
                   ,Ark.Utils.padL(2 * u2)(Text.leftAligned(Ark.Parameters.showNormalText("Владимир БАЗАРСКИЙ")))
                   ,Ark.Utils.padL(2 * u2)(Text.leftAligned(Ark.Parameters.showNormalText("Александр ЛИЗНЕНКОВ")))
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
                             u2)
                             ,A2(Graphics.Element.flow,
                             Graphics.Element.right,
                             _J.toList([A2(Graphics.Element.spacer,
                                       u2,
                                       u2)
                                       ,pictureBuy
                                       ,A2(Graphics.Element.spacer,
                                       u2,
                                       u2)
                                       ,description
                                       ,A2(Graphics.Element.spacer,
                                       u2,
                                       u2)
                                       ,photos]))
                             ,A2(Graphics.Element.spacer,
                             config.contentWidth,
                             u2)])))
                   ,Ark.Footer.footer(config)]));
      }();
   };
   var sidebar = function (config) {
      return Graphics.Element.width(config.sidebarWidth)(A2(Graphics.Element.flow,
      Graphics.Element.down,
      _J.toList([Ark.Logo.logo(config)
                ,A2(Ark.SideMenu.sideMenu,
                config,
                _J.toList([]))])));
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
   _elm.EventMan.values = {_op: _op
                          ,main: main
                          ,skeleton: skeleton
                          ,sidebar: sidebar
                          ,content: content};
   return _elm.EventMan.values;
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
Elm.Ark.Shows = Elm.Ark.Shows || {};
Elm.Ark.Shows.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Shows = _elm.Ark.Shows || {};
   if (_elm.Ark.Shows.values)
   return _elm.Ark.Shows.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Shows";
   var Ark = Ark || {};
   Ark.Parameters = Elm.Ark.Parameters.make(_elm);
   var Ark = Ark || {};
   Ark.Paypal = Elm.Ark.Paypal.make(_elm);
   var Ark = Ark || {};
   Ark.Utils = Elm.Ark.Utils.make(_elm);
   var Basics = Elm.Basics.make(_elm);
   var Color = Elm.Color.make(_elm);
   var Dict = Elm.Dict.make(_elm);
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
   var visualShowList = F2(function (config,
   ss) {
      return function () {
         var eventWidth = 16 * config.step;
         var imageHeight = 10 * config.step;
         var imageWidth = 11 * config.step;
         var u = config.step;
         var u2 = 2 * u;
         var textWidth = config.contentWidth - imageWidth - 2 * eventWidth - 5 * u2;
         var event = function (es) {
            return function () {
               switch (es.ctor)
               {case "::":
                  return Graphics.Element.flow(Graphics.Element.down)(A2(List.intersperse,
                    Ark.Utils.spaceY(u),
                    _J.toList([Graphics.Element.width(eventWidth)(Graphics.Element.tag("all-caps")(Text.centered(Ark.Parameters.showListCityText(es._0.city))))
                              ,Graphics.Element.width(eventWidth)(Text.centered(Ark.Parameters.showListDateText(es._0.date)))
                              ,Graphics.Element.width(eventWidth)(Text.centered(Ark.Utils.ulink(es._0.placeUrl)(Ark.Parameters.showListPlaceText(es._0.place))))
                              ,A3(Maybe.maybe,
                              Graphics.Element.empty,
                              Ark.Utils.centerX(eventWidth),
                              es._0.button)])));
                  case "[]":
                  return Ark.Utils.spaceX(eventWidth);}
               _E.Case($moduleName,
               "between lines 236 and 245");
            }();
         };
         var item = function (se) {
            return Graphics.Element.flow(Graphics.Element.right)(A2(List.intersperse,
            Ark.Utils.spaceX(u2),
            _J.toList([Graphics.Element.empty
                      ,Graphics.Element.link(se.url)(A2(Graphics.Element.fittedImage,
                      imageWidth,
                      imageHeight)(_L.append("assets/",
                      se.image)))
                      ,A2(Graphics.Element.flow,
                      Graphics.Element.down,
                      _J.toList([A3(Maybe.maybe,
                                Graphics.Element.empty,
                                function (c) {
                                   return Graphics.Element.width(textWidth)(Text.leftAligned(Ark.Parameters.showListTitleText(_L.append("Театр ",
                                   _L.append(c,
                                   " представляет")))));
                                },
                                se.company)
                                ,A2(Ark.Utils.bool,
                                Graphics.Element.empty,
                                Ark.Utils.spaceY(u / 2 | 0))(Maybe.isJust(se.company))
                                ,Graphics.Element.width(textWidth)(Text.leftAligned(Ark.Parameters.showListAuthorText(se.author)))
                                ,Graphics.Element.link(se.url)(Graphics.Element.width(textWidth)(Text.leftAligned(Text.link(se.url)(Ark.Parameters.showListTitleText(se.title)))))
                                ,A3(Ark.Utils.bool,
                                Graphics.Element.empty,
                                Ark.Utils.spaceY(u),
                                se.reading)
                                ,A3(Ark.Utils.bool,
                                Graphics.Element.empty,
                                A3(Graphics.Element.fittedImage,
                                49,
                                38,
                                "assets/reading-01.png"),
                                se.reading)]))
                      ,event(se.events)
                      ,event(List.tail(se.events))
                      ,Graphics.Element.empty])));
         };
         return Graphics.Element.color(Ark.Parameters.showListBackColor)(Ark.Utils.padY(u2)(Graphics.Element.flow(Graphics.Element.down)(List.intersperse(Ark.Utils.spaceY(u2))(A2(List.map,
         item,
         ss)))));
      }();
   });
   var eventfulShow = function ($) {
      return Basics.not(List.isEmpty(function (_) {
         return _.events;
      }($)));
   };
   var paidEvent = function ($) {
      return A2(Maybe.maybe,
      false,
      Basics.always(true))(function (_) {
         return _.button;
      }($));
   };
   var blankEvent = {_: {}
                    ,button: Maybe.Nothing
                    ,city: ""
                    ,date: ""
                    ,place: ""
                    ,placeUrl: ""};
   var blankShow = {_: {}
                   ,author: ""
                   ,company: Maybe.Nothing
                   ,events: _J.toList([])
                   ,image: ""
                   ,photos: _J.toList([])
                   ,reading: false
                   ,smallQuote: _J.toList([])
                   ,title: ""
                   ,url: ""};
   var EventItem = F5(function (a,
   b,
   c,
   d,
   e) {
      return {_: {}
             ,button: e
             ,city: a
             ,date: b
             ,place: c
             ,placeUrl: d};
   });
   var ShowItem = F9(function (a,
   b,
   c,
   d,
   e,
   f,
   g,
   h,
   i) {
      return {_: {}
             ,author: a
             ,company: i
             ,events: f
             ,image: d
             ,photos: g
             ,reading: e
             ,smallQuote: h
             ,title: b
             ,url: c};
   });
   var showMunchausen = 2014007;
   var showDecorator = 2014006;
   var showSummerDay = 2014005;
   var showLastNight = 2014004;
   var showJurden = 2014003;
   var showManWoman = 2014002;
   var showMap = Dict.fromList(_J.toList([{ctor: "_Tuple2"
                                          ,_0: showManWoman
                                          ,_1: _U.replace([["author"
                                                           ,"Семён ЗЛОТНИКОВ"]
                                                          ,["title"
                                                           ,"Пришёл мужчина к женщине"]
                                                          ,["url"
                                                           ,"EventMan.html"]
                                                          ,["image"
                                                           ,"details-man-woman.jpg"]
                                                          ,["events"
                                                           ,_J.toList([_U.replace([["city"
                                                                                   ,"SAN FRANCISCO"]
                                                                                  ,["date"
                                                                                   ,"17 августа 5pm"]
                                                                                  ,["place"
                                                                                   ,"Shelton Theater"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.sheltontheater.org/?page_id=102"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Man_20140817)]],
                                                           blankEvent)])]
                                                          ,["photos"
                                                           ,_J.toList(["man-woman-01.png"
                                                                      ,"man-woman-02.png"
                                                                      ,"man-woman-03.png"
                                                                      ,"man-woman-05.png"])]],
                                          blankShow)}
                                         ,{ctor: "_Tuple2"
                                          ,_0: showDecorator
                                          ,_1: _U.replace([["author"
                                                           ,"Дональд ЧЕРЧИЛЛЬ"]
                                                          ,["title","Декоратор"]
                                                          ,["url"
                                                           ,"EventDecorator.html"]
                                                          ,["image"
                                                           ,"details-decorator.jpg"]
                                                          ,["events"
                                                           ,_J.toList([_U.replace([["city"
                                                                                   ,"SAN FRANCISCO"]
                                                                                  ,["date"
                                                                                   ,"7 сентября 5pm"]
                                                                                  ,["place"
                                                                                   ,"Shelton Theater"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.sheltontheater.org/?page_id=102"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Decorator_20140907)]],
                                                                      blankEvent)
                                                                      ,_U.replace([["city"
                                                                                   ,"SAN FRANCISCO"]
                                                                                  ,["date"
                                                                                   ,"14 сентября 5pm"]
                                                                                  ,["place"
                                                                                   ,"Shelton Theater"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.sheltontheater.org/?page_id=102"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Decorator_20140914)]],
                                                                      blankEvent)
                                                                      ,_U.replace([["city"
                                                                                   ,"SAN FRANCISCO"]
                                                                                  ,["date"
                                                                                   ,"11 октября 5pm"]
                                                                                  ,["place"
                                                                                   ,"Shelton Theater"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.sheltontheater.org/?page_id=102"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Decorator_20141011)]],
                                                                      blankEvent)
                                                                      ,_U.replace([["city"
                                                                                   ,"SAN FRANCISCO"]
                                                                                  ,["date"
                                                                                   ,"19 октября 5pm"]
                                                                                  ,["place"
                                                                                   ,"Shelton Theater"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.sheltontheater.org/?page_id=102"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Decorator_20141019)]],
                                                                      blankEvent)])]],
                                          blankShow)}
                                         ,{ctor: "_Tuple2"
                                          ,_0: showMunchausen
                                          ,_1: _U.replace([["author"
                                                           ,"Григорий ГОРИН"]
                                                          ,["title"
                                                           ,"Тот самый Мюнхгаузен"]
                                                          ,["company"
                                                           ,Maybe.Just("«На&nbsp;БЭКЪЯРДЕ»")]
                                                          ,["url"
                                                           ,"EventMunchausen.html"]
                                                          ,["image"
                                                           ,"details-munchausen.jpg"]
                                                          ,["events"
                                                           ,_J.toList([_U.replace([["city"
                                                                                   ,"LOS ALTOS HILLS"]
                                                                                  ,["date"
                                                                                   ,"21 сентября 6pm"]
                                                                                  ,["place"
                                                                                   ,"Congregation Beth Am"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.betham.org/about/contact"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Munchausen_20140921)]],
                                                                      blankEvent)
                                                                      ,_U.replace([["city"
                                                                                   ,"LOS ALTOS HILLS"]
                                                                                  ,["date"
                                                                                   ,"28 сентября 6pm"]
                                                                                  ,["place"
                                                                                   ,"Congregation Beth Am"]
                                                                                  ,["placeUrl"
                                                                                   ,"http://www.betham.org/about/contact"]
                                                                                  ,["button"
                                                                                   ,Maybe.Just(Ark.Paypal.paypalButton_Munchausen_20140928)]],
                                                                      blankEvent)])]],
                                          blankShow)}
                                         ,{ctor: "_Tuple2"
                                          ,_0: showSummerDay
                                          ,_1: _U.replace([["author"
                                                           ,"Славомир МРОЖЕК"]
                                                          ,["title"
                                                           ,"Летний день"]
                                                          ,["url"
                                                           ,"EventSummerDay.html"]
                                                          ,["image"
                                                           ,"details-summer-day.jpg"]
                                                          ,["reading",true]
                                                          ,["events"
                                                           ,_J.toList([_U.replace([["city"
                                                                                   ,"MOUNTAIN VIEW"]
                                                                                  ,["date"
                                                                                   ,"26 июля 4pm"]
                                                                                  ,["place"
                                                                                   ,"90 Sierra Vista Ave\nMountain View, CA 94043"]
                                                                                  ,["placeUrl"
                                                                                   ,"https://maps.google.com/maps?oe=utf-8&client=firefox-a&channel=sb&q=90+Sierra+Vista+Ave,+Mountain+View,+CA&ie=UTF-8&hq=&hnear=0x808fb0afda66c137:0x5b13c3a353ddf1af,90+Sierra+Vista+Ave,+Mountain+View,+CA+94043&gl=us&ei=qgNGU4L-I-jIyAGZmoGYDA&ved=0CCgQ8gEwAA"]],
                                                           blankEvent)])]],
                                          blankShow)}]));
   var fromListToShows = function ($) {
      return Maybe.justs(List.map(A2(Basics.flip,
      Dict.lookup,
      showMap))($));
   };
   var showInfo = function ($) {
      return Ark.Utils.fromJust(A2(Basics.flip,
      Dict.lookup,
      showMap)($));
   };
   var sortedShowList = fromListToShows(_J.toList([showManWoman
                                                  ,showDecorator
                                                  ,showMunchausen]));
   var listOfShows = function (config) {
      return visualShowList(config)(A2(List.filter,
      eventfulShow,
      sortedShowList));
   };
   var listOfPaidShows = function (config) {
      return visualShowList(config)(List.filter(function ($) {
         return List.any(paidEvent)(function (_) {
            return _.events;
         }($));
      })(A2(List.filter,
      eventfulShow,
      sortedShowList)));
   };
   _elm.Ark.Shows.values = {_op: _op
                           ,showManWoman: showManWoman
                           ,showJurden: showJurden
                           ,showLastNight: showLastNight
                           ,showSummerDay: showSummerDay
                           ,showDecorator: showDecorator
                           ,showMunchausen: showMunchausen
                           ,blankShow: blankShow
                           ,blankEvent: blankEvent
                           ,showMap: showMap
                           ,sortedShowList: sortedShowList
                           ,fromListToShows: fromListToShows
                           ,paidEvent: paidEvent
                           ,eventfulShow: eventfulShow
                           ,showInfo: showInfo
                           ,listOfShows: listOfShows
                           ,listOfPaidShows: listOfPaidShows
                           ,visualShowList: visualShowList
                           ,ShowItem: ShowItem
                           ,EventItem: EventItem};
   return _elm.Ark.Shows.values;
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
Elm.Ark.Paypal = Elm.Ark.Paypal || {};
Elm.Ark.Paypal.make = function (_elm) {
   "use strict";
   _elm.Ark = _elm.Ark || {};
   _elm.Ark.Paypal = _elm.Ark.Paypal || {};
   if (_elm.Ark.Paypal.values)
   return _elm.Ark.Paypal.values;
   var _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _E = _N.Error.make(_elm),
   _J = _N.JavaScript.make(_elm),
   $moduleName = "Ark.Paypal";
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
   var paypalButton = F2(function (img,
   bid) {
      return Graphics.Element.link(_L.append("https://www.paypal.com/us/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=",
      bid))(A3(Graphics.Element.container,
      107,
      26,
      Graphics.Element.middle)(A2(Graphics.Element.fittedImage,
      107,
      26)(_L.append("assets/",img))));
   });
   var buyNowButton = paypalButton("btn_buynow_LG.gif");
   var paypalButton_Man_20140817 = buyNowButton("9WXQEBDTFFMYJ");
   var paypalButton_3C_20140823 = buyNowButton("9AHWKPQVGSFUC");
   var paypalButton_Decorator_20140907 = buyNowButton("E7M2YKMTE92KG");
   var paypalButton_Decorator_20140914 = buyNowButton("HFA2FMH2M6G3E");
   var paypalButton_Decorator_20141011 = buyNowButton("9E7699DJU397G");
   var paypalButton_Decorator_20141019 = buyNowButton("UREZ4W7WTD85E");
   var paypalButton_Munchausen_20140921 = buyNowButton("BWNQNGGPZMSVJ");
   var paypalButton_Munchausen_20140928 = buyNowButton("75H6JCH6X57XW");
   var donateButton = paypalButton("btn_donate_LG.gif");
   var paypalButton_Donate = donateButton("QTSPJ6TQWX79L");
   _elm.Ark.Paypal.values = {_op: _op
                            ,paypalButton: paypalButton
                            ,buyNowButton: buyNowButton
                            ,donateButton: donateButton
                            ,paypalButton_Donate: paypalButton_Donate
                            ,paypalButton_Man_20140817: paypalButton_Man_20140817
                            ,paypalButton_3C_20140823: paypalButton_3C_20140823
                            ,paypalButton_Decorator_20140907: paypalButton_Decorator_20140907
                            ,paypalButton_Decorator_20140914: paypalButton_Decorator_20140914
                            ,paypalButton_Decorator_20141011: paypalButton_Decorator_20141011
                            ,paypalButton_Decorator_20141019: paypalButton_Decorator_20141019
                            ,paypalButton_Munchausen_20140921: paypalButton_Munchausen_20140921
                            ,paypalButton_Munchausen_20140928: paypalButton_Munchausen_20140928};
   return _elm.Ark.Paypal.values;
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
