module EventDecorator where

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
    p1h = p1w -- * 10 `div` 11
    p2w = p1w * 5 `div` 9
    p2h = p1h * 5 `div` 9
    d1w = config.contentWidth - p1w - 3*u2 - config.thumbWidth
    d2w = config.thumbWidth
    u2 = 2* config.step
    u = config.step
    info = showInfo showDecorator

    smallQuotePar = width d2w . centered . showSmallQuoteText
    smallQuoteList = flow down . (::) (spaceY u2) . intersperse (spaceY u) . map smallQuotePar
    smallQuote = listDef empty smallQuoteList info.smallQuote

    pictureBuy = flow down [
        fittedImage p1w p1h <| "assets/" ++ info.image
      , smallQuote

      , spaceY u2
      , width d2w <| centered <| showCityText "SAN FRANCISCO"
      , width d2w <| centered <| showDateText "2 ноября 5pm"
      , width d2w <| centered <| ulink "http://www.sheltontheater.org/?page_id=102" <| showPlaceText "Shelton Theater"
      , spaceY u
      , container d2w (heightOf paypalButton_Decorator_20141102) middle <| paypalButton_Decorator_20141102

      , spaceY u2
      , width d2w <| centered <| showCityText "SAN FRANCISCO"
      , width d2w <| centered <| showDateText "16 ноября 5pm"
      , width d2w <| centered <| ulink "http://www.sheltontheater.org/?page_id=102" <| showPlaceText "Shelton Theater"
      , spaceY u
      , container d2w (heightOf paypalButton_Decorator_20141116) middle <| paypalButton_Decorator_20141116

      , empty ]

    description = flow down [
      -- leftAligned <| showAuthorText info.author,
      -- leftAligned <| showTitleText info.title,
      -- spaceY u,
      -- width d1w <| leftAligned <| showQuoteText "«Часы пробили неизвестно к чему относившуюся половину»",
      -- width d1w <| rightAligned <| showSmallQuoteText "В. Набоков, «Приглашение на казнь»",
      -- spaceY u,
      width d1w <| leftAligned <| showNormalText "Вернувшись домой после отдыха заграницей, Марша неприятно yдивлена. Рабочий кабинет мужа, который должен был быть покрашен к&nbsp;её приезду, не&nbsp;только не&nbsp;готов, но&nbsp;даже не&nbsp;подготовлен к&nbsp;работе. В&nbsp;квартире Марша обнаруживает маляра Волтера, который только-только появился, чтобы заменить заболевшего коллегу. Но&nbsp;едва только Волтер, c&nbsp;трудом отбившись от&nbsp;темпераментных упрёков Марши, начинает работать, появляется неожиданная гостья&thinsp;&mdash;&thinsp;Джейн, с&nbsp;мужем которой у&nbsp;Марши роман....",
      -- spaceY u,
      -- width d1w <| leftAligned <| showNormalText "Сценическая версия по пьесе А.Строганова «Сатира».",
      spaceY u,
      leftAligned <| showQuoteText "Режиссёр",
      padL u2 <| leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
      spaceY u,
      leftAligned <| showQuoteText "В ролях",
      padL u2 <| leftAligned <| showNormalText "Марша",
      padL (2*u2) <| leftAligned <| showNormalText "Наталия МАНДРЫЧЕНКО",
      spaceY (u `div` 2),
      padL u2 <| leftAligned <| showNormalText "Волтер",
      padL (2*u2) <| leftAligned <| showNormalText "Артём МИШИН",
      spaceY (u `div` 2),
      padL u2 <| leftAligned <| showNormalText "Джейн",
      padL (2*u2) <| leftAligned <| showNormalText "Ирина БРОДСКАЯ",
      -- spaceY u,
      -- width d1w <| leftAligned <| showNormalText "В спектакле использована музыка Александра Гольдмана в&nbsp;исполнении автора.",
      empty ]

    photos = flow down <| intersperse (spaceY u) <| map (fittedImage p2w p2h . ((++) "assets/")) info.photos

  in
    color showBackColor <|
      flow down <| intersperse (spacer config.contentWidth u2) [ empty,
        flow right <| intersperse (spaceX u2) [ empty,
          pictureBuy, description, photos ],
        empty ]
