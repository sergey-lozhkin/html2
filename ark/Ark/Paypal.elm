module Ark.Paypal where

-- Large (LG) PayPal buttons
paypalButton img bid =
  link ("https://www.paypal.com/us/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=" ++ bid) <|
  container 107 26 middle <|
  fittedImage 107 26 <| "assets/" ++ img

buyNowButton = paypalButton "btn_buynow_LG.gif"
donateButton = paypalButton "btn_donate_LG.gif"

paypalButton_Donate = donateButton "QTSPJ6TQWX79L"

paypalButton_3C_20140823 = buyNowButton "9AHWKPQVGSFUC"

paypalButton_Decorator_20141102 = buyNowButton "8MSH3B88XMCV6"
paypalButton_Decorator_20141116 = buyNowButton "K9BNVSYJV7JN6"

-- paypalButton_Munchausen_20140928 = buyNowButton "75H6JCH6X57XW"
