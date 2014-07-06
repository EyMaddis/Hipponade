<!DOCTYPE html>
<html>
<head>
    <title><g:layoutTitle default="Grails"/></title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body>

        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">

            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Hipponade</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><g:link controller="News">Neuigkeiten</g:link></li>
                        <li><g:link controller="Story">Geschichte</g:link></li>
                        <li><g:link controller="Recipe">Rezepte</g:link></li>
                        <li><g:link controller="Product">Produkte</g:link></li>
                        <li><g:link controller="About">Über Uns</g:link></li>
                    </ul>
                    <form class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
                    </form>
                </div>

            </div>
        </div>

    </div>
</div>
<div class="container">
    <g:if test="\${flash.message}">
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            ${flash.message}
        </div>
    </g:if>
    <g:layoutBody/>
    <footer class="row marketing">
        <div class="col-md-3"><h5>Facebook</h5><p>
            Unsere Seite
        </p></div>
        <div class="col-md-3">
            <h5>Twitter</h5>
            <p>Hipponade folgen</p>
        </div>
        <div class="col-md-3">
            <h5>YouTube</h5>
            <p>Unser Kanal</p>
        </div>
        <div class="col-md-3">
            <h5>Externe</h5>
            <p>Großhändler</p>
            <p>Admin</p>
        </div>
    </footer>
</div>
    <asset:javascript src="application.js"/>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
