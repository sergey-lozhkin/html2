module Ark.Parameters where

import Ark.Colour (..)
import Ark.Config (..)
import Ark.Utils (..)

normalText = Text.color normalTextColor . textL normalFontSize
titleText = Text.color normalTextColor . textM normalFontSize
quoteText = Text.color normalTextColor . textLI normalFontSize
smallNormalText = Text.color normalTextColor . textL smallFontSize
smallTitleText = Text.color normalTextColor . textM smallFontSize
smallQuoteText = Text.color normalTextColor . textLI smallFontSize

topNormalText = normalText
topActiveText = titleText
topMarkerColor = backColor

sideNormalText = smallNormalText
sideActiveText = smallTitleText
sideMarkerColor = backColor

footerNormalText = Text.color inversedTextColor . textL smallFontSize
footerCopyrightText = Text.color inversedTextColor . textL tinyFontSize
footerBackColor = inversedBackColor

ucNormalText = Text.color normalTextColor . textN hugeFontSize
ucBackColor = backColor

boxOfficeNormalText = normalText
boxOfficeTitleText = titleText
boxOfficeBackColor = backColor

showListCityText = Text.color normalTextColor . textN normalFontSize
showListDateText = Text.color normalTextColor . textM normalFontSize
showListPlaceText = Text.color normalTextColor . textLI smallFontSize
showListAuthorText = Text.color normalTextColor . textN normalFontSize
showListTitleText = Text.color normalTextColor . textM normalFontSize
showListBackColor = backColor

showNormalText = normalText
showQuoteText = quoteText
showSmallQuoteText = smallQuoteText
showCityText = Text.color normalTextColor . textN normalFontSize
showDateText = Text.color normalTextColor . textM normalFontSize
showPlaceText = Text.color normalTextColor . textLI smallFontSize
showAuthorText = Text.color normalTextColor . textN normalFontSize
showTitleText = Text.color normalTextColor . textM normalFontSize
showBackColor = backColor

missionNormalText = normalText
missionQuoteText = smallQuoteText
missionBackColor = backColor

donationsNormalText = normalText
donationsTitleText = titleText
donationsBackColor = backColor

volunteerNormalText = normalText
volunteerBackColor = backColor

actorListNormalText = normalText
actorListColor1 = rgb 227 169  85
-- actorListColor2 = rgb 145 183 171
actorListColor2 = orange1
actorListColor3 = rgb 171 167  75
actorListBackColor = backColor

staffListNormalText = normalText
staffListColor1 = rgb  77  91 135
staffListColor2 = rgb 181  68 101
staffListColor3 = rgb 171 167  75
staffListColor4 = orange1
staffListBackColor = backColor

personNormalText = normalText
personTitleText = titleText
personQuoteText = quoteText
personQuoteAuthorText = smallQuoteText
personYearText = quoteText
personBioText = normalText
personBackColor = backColor

homeTitleText = Text.color white . textM normalFontSize
homeInfoText = Text.color white . textL smallFontSize
homeSmallAuthorText = Text.color white . textL tinyFontSize
homeSmallTitleText = Text.color white . textM smallFontSize
homeSmallDateText = Text.color white . textL tinyFontSize
homeBackColor = backColor
