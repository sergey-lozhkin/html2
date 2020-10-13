all:: html/background.html html/Carousel.html bookmarks.html

%.html:: %.hs
	runhaskell $^

html/background.html:: background.hs

html/Carousel.html:: Carousel.hs

bookmarks.html:: bookmarks.hs
