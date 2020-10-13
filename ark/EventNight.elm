module EventNight where

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
      fittedImage p1w p1h "assets/details-last-night.jpg",
      spacer s1s s1s,
      width d2w <| centered <| showCityText "SAN FRANCISCO",
      width d2w <| centered <| showDateText "26 апреля 7pm",
      width d2w <| centered <| ulink "http://www.russiancentersf.com/contact" <| showPlaceText "Russian Center of San Francisco",
      empty ]

    description = flow down [
      -- leftAligned <| showAuthorText "Эдвард РАДЗИНСКИЙ",
      -- leftAligned <| showTitleText "Последняя ночь последнего царя",
      -- spacer s1s s2s,
      fittedImage 49 38 "assets/reading-01.png",
      spacer s1s s2s,
      width d1w <| leftAligned <| showQuoteText "«Не мстите за меня. Ибо не зло победит зло, а&nbsp;только&nbsp;–&nbsp;любовь».",
      spacer s1s s2s,
      width d1w <| leftAligned <| showNormalText "История об убийстве царя Николая II и Государыни Александры Федоровны с детьми. Действие начинается в палате Кремлевской больницы в июле 1938 года. Цареубийца Яков Юровский и бывший чекист Федор Лукоянов вспоминают события июля 1918 года, когда они совершали свое кровавое злодеяние. Затем действие переносится в Екатеринбург 1918 года в дом инженера Ипатьева, где и совершалось цареубийство. Трогательно передаются нежные взаимоотношения супругов даже в таких трагических условиях, в каких они оказались в ссылке. Государь знает, что их убьют, но старается скрыть это от Государыни и не показывает вида. «Если для спасения моего народа нужна жертва, то этой жертвой буду я», - в том же 1918 году сказал Николай Второй. Великая жертвенность и любовь к Богу и своему народу – отличительная черта царя и государыни- императрицы, которую они старались привить и своим детям. Убийц царской семьи ждала тяжелая расплата.",
      spacer s1s s2s,
      leftAligned <| showQuoteText "Участвуют",
      padL s1s <| flow down [
        leftAligned <| showNormalText "Ирина БРОДСКАЯ",
        leftAligned <| showNormalText "Александр ЛИЗНЕНКОВ",
        leftAligned <| showNormalText "Александр ЛИТОВЧЕНКО",
        leftAligned <| showNormalText "Артём МИШИН",
        leftAligned <| showNormalText "Марк СТАРОСЕЛЬСКИЙ" ]]

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
