module EventJurden where

import Ark.Config (..)
import Ark.Parameters (..)
import Ark.Site (..)
import Ark.Skeleton (..)
import Ark.Utils (..)

main = skeleton TopEvents [] <| \config ->
  let
    p1w = config.thumbWidth
    p1h = p1w * 10 `div` 11
    p2w = p1w * 5 `div` 9
    p2h = p1h * 5 `div` 9
    d1w = config.contentWidth - p1w - 3*s1s - config.thumbWidth
    d2w = config.thumbWidth
    s1s = 2* config.step
    s2s = config.step
    ppw = 171
    pph = 47

    pictureBuy = flow down [
      fittedImage p1w p1h "assets/details-jurden.jpg",
      spacer s1s s1s,
      width d2w <| centered <| showCityText "MOUNTAIN VIEW",
      width d2w <| centered <| showDateText "19 апреля 4pm",
      width d2w <| centered <| ulink "https://maps.google.com/maps?oe=utf-8&client=firefox-a&channel=sb&q=90+Sierra+Vista+Ave,+Mountain+View,+CA&ie=UTF-8&hq=&hnear=0x808fb0afda66c137:0x5b13c3a353ddf1af,90+Sierra+Vista+Ave,+Mountain+View,+CA+94043&gl=us&ei=qgNGU4L-I-jIyAGZmoGYDA&ved=0CCgQ8gEwAA"
        <| showPlaceText "90 Sierra Vista Ave\nMountain View, CA 94043",
      empty ]

    description = flow down [
      -- leftAligned <| showAuthorText "Михаил БУЛГАКОВ",
      -- leftAligned <| showTitleText "Полоумный Журден",
      -- spacer s1s s2s,
      fittedImage 49 38 "assets/reading-01.png",
      spacer s1s s2s,
      width d1w <| leftAligned <| showNormalText "Пьеса рассказывает об одном из будничных вечеров труппы мольеровского театра, поставленного в щекотливую ситуацию: завтра театр изволит посетить его величество Людовик XIV, и&nbsp;господин Мольер, будучи больным, присылает труппе своего театра новую пьесу – о полоумном Журдене. Недовольные артисты нехотя начинают репетировать и настолько увлекаются, что теряют чувство реальности…",
      spacer s1s s2s,
      leftAligned <| showQuoteText "Участвуют",
      flow right [ spacer s1s s1s,
        flow down [
          leftAligned <| showNormalText "Ирина БРОДСКАЯ",
          leftAligned <| showNormalText "Наталья МАНДРЫЧЕНКО",
          leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
          leftAligned <| showNormalText "Александр ЛИТОВЧЕНКО",
          leftAligned <| showNormalText "Артём МИШИН" ]]]

    photos = empty

  in
    color showBackColor <|
      flow down [
        spacer config.contentWidth s1s,
        flow right [
          spacer s1s s1s, pictureBuy,
          spacer s1s s1s, description,
          spacer s1s s1s, photos ],
        spacer config.contentWidth s1s ]
