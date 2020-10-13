module EventDaddy where

import Dict as D
import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Paypal (..)
import Ark.Shows (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopEvents [] <| \config ->
  let
    p1w = config.thumbWidth
    p1h = p1w * 10 `div` 11
    p2w = p1w * 5 `div` 9
    p2h = p1h * 5 `div` 9
    d1w = config.contentWidth - p1w - 3*u2 - config.thumbWidth
    d2w = config.thumbWidth
    u2 = 2* config.step
    u = config.step
    info = showInfo showDaddy

    smallQuotePar = width d2w . centered . showSmallQuoteText
    smallQuoteList = flow down . (::) (spaceY u2) . intersperse (spaceY u) . map smallQuotePar
    smallQuote = listDef empty smallQuoteList info.smallQuote

    pictureBuy = flow down [
        fittedImage p1w p1h <| "assets/" ++ info.image
      , smallQuote
      , spaceY u2

      -- , width d2w <| centered <| showCityText "SACRAMENTO"
      -- , width d2w <| centered <| showDateText "14 июня 8pm"
      -- , width d2w <| centered <| ulink "http://www.csasacramento.org/" <| showPlaceText "The Center for spiritual awareness"
      -- , spaceY u
      -- , container d2w (heightOf paypalButton_Daddy_20140614) middle <| paypalButton_Daddy_20140614
      -- , spaceY u2

      , width d2w <| centered <| showCityText "SAN FRANCISCO"
      , width d2w <| centered <| showDateText "6 июля 5pm"
      , width d2w <| centered <| ulink "http://www.sheltontheater.org/?page_id=102" <| showPlaceText "Shelton Theater"
      , spaceY u
      , container d2w (heightOf paypalButton_Daddy_20140706) middle <| paypalButton_Daddy_20140706

      , empty ]

    description = flow down [
      -- leftAligned <| showAuthorText info.author,
      -- leftAligned <| showTitleText info.title,
      -- spaceY u,
      width d1w <| leftAligned <| showQuoteText "«Часы пробили неизвестно к чему относившуюся половину»",
      width d1w <| rightAligned <| showSmallQuoteText "В. Набоков, «Приглашение на казнь»",
      spaceY u,
      width d1w <| leftAligned <| showNormalText "Лейтмотивом как пьесы, так и спектакля являются взаимоотношения отцов и детей. Возможно ли преодолеть пропасть между поколениями? Что&nbsp;есть мужское начало&thinsp;&mdash;&thinsp;только ли разрушение и смерть? Что&nbsp;такое одиночество мужчины? Что&nbsp;ждет всех нас впереди? На&nbsp;эти вопросы пытаются найти ответ автор и его персонажи, режиссёр и&nbsp;актёры.",
      spaceY u,
      width d1w <| leftAligned <| showNormalText "Сценическая версия по пьесе А.Строганова «Сатира».",
      spaceY u,
      leftAligned <| showQuoteText "Режиссёр",
      padL u2 <| leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
      spaceY u,
      leftAligned <| showQuoteText "В ролях",
      padL u2 <| leftAligned <| showNormalText "Серёженька",
      padL (2*u2) <| leftAligned <| showNormalText "Дмитрий КОЛЬЦОВ",
      spaceY (u `div` 2),
      padL u2 <| leftAligned <| showNormalText "Лев Александрович Смышляев",
      padL (2*u2) <| leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
      spaceY u,
      width d1w <| leftAligned <| showNormalText "В спектакле использована музыка Александра Гольдмана в&nbsp;исполнении автора.",
      empty ]

    photos = flow down <| intersperse (spaceY u) <| map (fittedImage p2w p2h . ((++) "assets/")) info.photos

  in
    color showBackColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBuy, description, photos ],
        empty ]
