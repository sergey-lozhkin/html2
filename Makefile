all:: html/background.html html/Carousel.html bookmarks.html

%.html: %.hs
	runhaskell $^

html/background.html:: background.hs
	runhaskell $^

html/Carousel.html:: Carousel.hs
	runhaskell $^

bookmarks.html:: bookmarks.hs
	runhaskell $^

serve::
	python3 -m http.server 3333
