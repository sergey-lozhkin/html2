{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Main where

import Lucid
import Data.Text (Text)
import HStyle

passport :: [Text]
passport = [ "Passport"
  , "https://washington.mid.ru/en/consular-services/"
  , "https://washington.mid.ru/en/consular-services/consulate/contacts/"
  , "https://washington.mid.ru/en/consular-services/consulate/russian-consulates-in-the-us/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/citizenship/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/citizenship/accept/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/international-passport/"
  , "https://washington.mid.ru/ru/consular-services/citizens-russia/international-passport/making/"
  , "https://www.gosuslugi.ru/10052"
  , "https://www.gosuslugi.ru/10052/1"
  , "https://transferwise.com/us"
  , "https://paysend.com/en/send-money/from-usa-to-russia/"
  , "https://www.xe.com/"
  ] -- passport

money :: [Text]
money = [ "Money"
  , "https://transferwise.com/us"
  , "https://paysend.com/en/send-money/from-usa-to-russia/"
  , "https://www.xe.com/"
  , "https://www.westernunion.com/"
  ] -- money

main :: IO ()
main =
  linkPage "Passport" ("passport.png", "image/png") "passport.html" $ do
    (`with` [open_ ""]) $ section passport
    (`with` [open_ ""]) $ section money
