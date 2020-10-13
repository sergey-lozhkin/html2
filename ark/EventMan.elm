module EventMan where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Paypal (..)
import Ark.Shows (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopEvents [] <| \config ->
  let
    u2 = 2* config.step
    u1 = config.step
    p1w = config.thumbWidth
    p1h = p1w -- * 10 `div` 11
    p2w = p1w * 5 `div` 9
    p2h = p1h * 5 `div` 9
    d1w = config.contentWidth - p1w - 3*u2 - config.thumbWidth
    d2w = config.thumbWidth
    info = showInfo showManWoman

    pictureBuy = flow down [
      fittedImage p1w p1h "assets/details-man-woman.jpg",
      -- spaceY u2,
      -- width d2w <| centered <| showSmallQuoteText "Каждый зритель, благодаря нашим спонсорам, получит от устроителей gift&nbsp;card $25 в популярный ресторан.",

      -- spacer u2 u2,
      -- width d2w <| centered <| showCityText "SACRAMENTO",
      -- width d2w <| centered <| showDateText "19 июля 7pm",
      -- width d2w <| centered <| ulink "http://www.sierra2.org/Sierra2Center/24thStreetTheatre/tabid/59/Default.aspx" <| showPlaceText "24th Street Theatre",
      -- spacer u1 u1,
      -- container d2w (heightOf paypalButton_Man_20140719) middle <| paypalButton_Man_20140719,

      spaceY u2,
      width d2w <| centered <| showCityText "SAN FRANCISCO",
      width d2w <| centered <| showDateText "17 августа 5pm",
      width d2w <| centered <| ulink "http://www.sheltontheater.org/?page_id=102" <| showPlaceText "Shelton Theater",
      spaceY u1,
      container d2w (heightOf paypalButton_Man_20140817) middle <| paypalButton_Man_20140817,

      empty ]

    description = flow down [
      -- leftAligned <| showAuthorText "Семён ЗЛОТНИКОВ",
      -- leftAligned <| showTitleText "Пришёл мужчина к женщине",
      -- spacer u2 u1,
      width d1w <| leftAligned <| showNormalText "Когда Вы не так молоды, как раньше, как найти свою идеальную пару?",
      spacer u2 u1,
      width d1w <| leftAligned <| showNormalText "«Мы не дети больше,&thinsp;&mdash;&thinsp;говорит Дина Федоровна, одна из двух главных героев пьесы,&thinsp;&mdash;&thinsp;Я предлагаю пропустить несколько этапов. Скажем, мы уже встречались, мы узнали друг друга, и&nbsp;мы нравимся друг другу&thinsp;&mdash;&thinsp;вы любите меня, я люблю вас, мы делаем друг другу комплименты, мы продолжаем встречаться, продолжаем встречаться и&nbsp;&mdash;&nbsp;что будет дальше?»",
      spacer u2 u1,
      width d1w <| leftAligned <| showNormalText "На первый взгляд, Дина Федоровна и&nbsp;Виктор Петрович являются полной противоположностью друг другу. Тем не менее, они в состоянии выйти за рамки гордости, обиды, недоверия, непонимания и&nbsp;услышать друг друга… В течение одной ночи отношения между ними проходят через все возможные этапы: знакомство, сближение, отчуждение, ссора, любовь, ненависть и&nbsp;снова любовь.",
      spacer u2 u1,
      width d1w <| leftAligned <| showNormalText "Работая над пьесой Семена Злотникова мы пытались понять, что&nbsp;же мешает людям стать ближе и&nbsp;понятней друг другу и&nbsp;почему во взаимоотношениях между мужчиной и&nbsp;женщиной всегда «ремонт»? Приходите и&nbsp;попробуем вместе разобраться в&nbsp;этом!",
      spacer u2 u1,
      leftAligned <| showQuoteText "Режиссёр",
      padL u2 <| leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
      spacer u2 u1,
      leftAligned <| showQuoteText "В ролях",
      padL u2 <| leftAligned <| showNormalText "Дина Фёдоровна",
      padL (2*u2) <| leftAligned <| showNormalText "Ирина БРОДСКАЯ",
      spaceY (u1 `div` 2),
      padL u2 <| leftAligned <| showNormalText "Виктор Петрович",
      padL (2*u2) <| leftAligned <| showNormalText "Владимир БАЗАРСКИЙ",
      padL (2*u2) <| leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
      empty ]

    photos = flow down <| intersperse (spaceY u1) <| map (fittedImage p2w p2h . ((++) "assets/")) info.photos

  in
    color showBackColor <|
      flow down [
        spacer config.contentWidth u2,
        flow right [
          spacer u2 u2, pictureBuy,
          spacer u2 u2, description,
          spacer u2 u2, photos ],
        spacer config.contentWidth u2 ]
