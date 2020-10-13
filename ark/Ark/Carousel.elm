module Ark.Carousel where

carousel config =
  let
    w = config.bannerWidth
    h = config.bannerHeight
  in
    container w h bottomRight <| size w h <| carouselDiv

-- <div class="item zero-border">
-- <a href="EventDaddy.html" class="zero-border">
-- <img src="assets/banner-daddy.png" class="zero-border"/>
-- </a>
-- </div>

-- <div class="item zero-border">
-- <a href="EventMan.html" class="zero-border">
-- <img src="assets/banner-man-woman-2.png" class="zero-border"/>
-- </a>
-- </div>

-- <div class="item zero-border">
-- <a href="EventMunchausen.html" class="zero-border">
-- <img src="assets/banner-munchausen.png" class="zero-border"/>
-- </a>
-- </div>

carouselDiv = [markdown|<div id="homeCarousel" class="carousel slide zero-border" data-ride="carousel" data-interval="4000">
<div class="carousel-inner zero-border">

<div class="item active zero-border">
<a href="EventsList.html" class="zero-border">
<img src="assets/banner-list.png" class="zero-border"/>
</a>
</div>

<div class="item zero-border">
<a href="EventDecorator.html" class="zero-border">
<img src="assets/banner-decorator-3.png" class="zero-border"/>
</a>
</div>

<div class="item zero-border">
<a href="EventDecorator.html" class="zero-border">
<img src="assets/banner-decorator-ph1.jpg" class="zero-border"/>
</a>
</div>

<div class="item zero-border">
<a href="EventDecorator.html" class="zero-border">
<img src="assets/banner-decorator-ph2.jpg" class="zero-border"/>
</a>
</div>

<div class="item zero-border">
<a href="EventDecorator.html" class="zero-border">
<img src="assets/banner-decorator-ph3.jpg" class="zero-border"/>
</a>
</div>

</div>
<a class="left carousel-control zero-border" href="#homeCarousel" data-slide="prev"></a>
<a class="right carousel-control zero-border" href="#homeCarousel" data-slide="next"></a>
</div>|]
