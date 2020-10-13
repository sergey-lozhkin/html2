module EventMunchausen where

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
    info = showInfo showMunchausen

    smallQuotePar = width d2w . centered . showSmallQuoteText
    smallQuoteList = flow down . (::) (spaceY u2) . intersperse (spaceY u) . map smallQuotePar
    smallQuote = listDef empty smallQuoteList info.smallQuote

    pictureBuy = flow down [
        fittedImage p1w p1h <| "assets/" ++ info.image
      , smallQuote

      , spaceY u2
      , width d2w <| centered <| showCityText "LOS ALTOS HILLS"
      , width d2w <| centered <| showDateText "28 сентября 6pm"
      , width d2w <| centered <| ulink "http://www.betham.org/about/contact" <| showPlaceText "Congregation&nbsp;Beth&nbsp;Am"
      , spaceY u
      , container d2w (heightOf paypalButton_Munchausen_20140928) middle <| paypalButton_Munchausen_20140928

      , empty ]

    description = flow down [
      maybe empty (\c -> width d1w <| leftAligned <| showTitleText ("Театр " ++ c ++ " представляет")) info.company,
      bool empty (spaceY u) <| isJust info.company,

      -- leftAligned <| showAuthorText info.author,
      -- leftAligned <| showTitleText info.title,
      -- spaceY u,
      -- width d1w <| leftAligned <| showQuoteText "«Часы пробили неизвестно к чему относившуюся половину»",
      -- width d1w <| rightAligned <| showSmallQuoteText "В. Набоков, «Приглашение на казнь»",
      -- spaceY u,
      width d1w <| leftAligned <| showNormalText "Наверное, это очень символично, по&nbsp;крайней мере, для меня лично, что театр «На&nbsp;БЭКЪЯРДЕ», спустя 12 лет, вновь играет Григория Горина и&nbsp;вновь на&nbsp;сцене Congregation&nbsp;Beth&nbsp;Am. Возможно, кто-то помнит спектакль «Забыть&nbsp;Герострата», несмотря на&nbsp;строгий наказ забыть. Наша организация Creative&nbsp;Association&nbsp;ARK помогает театральным коллективам Bay&nbsp;Area/San&nbsp;Francisco в&nbsp;создании новых спектаклей.",
      spaceY u,
      width d1w <| leftAligned <| showNormalText "Мы рады пригласить Вас на&nbsp;премьеру театра «На&nbsp;БЭКЪЯРДЕ»!",
      -- spaceY u,
      -- leftAligned <| showQuoteText "Режиссёр",
      -- padL u2 <| leftAligned <| showNormalText "Дмитрий КОЛЬЦОВ",
      spaceY u,
      leftAligned <| showQuoteText "В спектакле принимают участие",
      padL u2 <| leftAligned <| showNormalText "Натан БАХ",
      padL u2 <| leftAligned <| showNormalText "Игорь АРОНИН",
      padL u2 <| leftAligned <| showNormalText "Леонид ФЕДОТОВ",
      padL u2 <| leftAligned <| showNormalText "Борис ГРИБАНОВСКИЙ",
      padL u2 <| leftAligned <| showNormalText "Ольга НИКИТИНА",
      padL u2 <| leftAligned <| showNormalText "Вадим ДАГМАН",
      padL u2 <| leftAligned <| showNormalText "Элла МЕЙДБРАЙ",
      -- padL u2 <| leftAligned <| showNormalText "Серёженька",
      -- padL (2*u2) <| leftAligned <| showNormalText "Дмитрий КОЛЬЦОВ",
      -- spaceY (u `div` 2),
      -- padL u2 <| leftAligned <| showNormalText "Лев Александрович Смышляев",
      -- padL (2*u2) <| leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
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
