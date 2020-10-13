all:: html/background.html html/Carousel.html
	runhaskell Main.hs

html/background.html:: background.hs
	runhaskell $^

html/Carousel.html:: Carousel.hs
	runhaskell $^
