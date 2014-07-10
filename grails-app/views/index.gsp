<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Hipponade</title>
	</head>
	<body>

    <!-- Carousel
    ================================================== -->
    <h1 class="marketing" style="padding-top:80px;position:absolute; width: 100%; font-size: 500%; z-index: 10; color: rgba(255, 255, 255, 0.9)"></h1>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->

        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">

            <div class="item active" style="background-image: url('${assetPath(src: 'products/start1.JPG')}');background-size: 100%;">
                <div class="container"style="padding-bottom: 100px">
                    <div class="carousel-caption" >
                        <h1>Entdecke die Vielfalt</h1>
                        <p class="lead">Hipponade bietet dir viele Getränke, um auch deinen Geschmack zu treffen. Durchsuche unsere Rezeptvorschläge und finde den Cocktail, der zu dir passt.</p>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image: url('${assetPath(src: 'products/start2.jpg')}');background-size: 100%;">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Erfahre die Geschichte dahinter.</h1>
                        <p class="lead">
                            Hinter jeder einzelnen Hipponade steckt eine Geschichte. Entdecke diese und erfahre, was alles für solch ein leckeres Getränk dazu gehört.</p>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image: url('${assetPath(src: 'products/start3.jpg')}');background-size: 100%;">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Tanzen bis zum Morgengrauen</h1>
                        <p class="lead">
                            Zieh' mit deinen Freunden los und lerne neue Leute kennen. Du findest Hipponade-Events auch in deiner Stadt.
                            Somit steht dir nichts mehr im Weg.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">




        <!-- /END THE FEATURETTES -->


    </div>
	</body>
</html>
