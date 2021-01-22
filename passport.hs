{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Lucid
import Data.Text (Text)
import HStyle

current :: [Text]
current = [ "Current"
  , "https://russianagency.com/internal-russian-passports/"
  , "https://russianagency.com/russian-travel-passports/"
  , "https://washington.mid.ru/en/consular-services/"
  , "https://washington.mid.ru/en/consular-services/consulate/contacts/"
  , "https://washington.mid.ru/en/consular-services/consulate/russian-consulates-in-the-us/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/citizenship/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/citizenship/accept/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/international-passport/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/international-passport/making/"
  , "https://www.google.com/search?q=оформит+россиискии+паспорт+за+границей"
  , "https://www.google.com/search?q=russian+consulate+in+usa"
  , "https://www.gosuslugi.ru/10052"
  , "https://www.gosuslugi.ru/10052/1"
  ] -- current

main :: IO ()
main =
  linkPage "Passport" ("bookmark.svg", "image/svg+xml") "passport.html" $ do
    (`with` [open_ ""]) $ section current
