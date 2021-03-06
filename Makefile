all::

%.html: %.hs
	runhaskell $<

all:: html/background.html
html/background.html:: background.hs
	runhaskell $<

all:: html/Carousel.html
html/Carousel.html:: Carousel.hs
	runhaskell $<

all:: bookmarks.html
bookmarks.html:: bookmarks.hs HStyle.hs
	runhaskell $<

all:: containers.html
containers.html:: containers.hs HStyle.hs
	runhaskell $<

all:: passport.html
passport.html:: passport.hs HStyle.hs
	runhaskell $<

serve::
	# python3 -m http.server 3333 --bind localhost
	python3 -m http.server 3333
