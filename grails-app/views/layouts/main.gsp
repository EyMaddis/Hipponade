<!DOCTYPE html>
<html>
<head>
    <title><g:layoutTitle default="Hipponade - Frisch wie der Morgentau"/></title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body class="main">
<g:render template="/layouts/navigation" />

    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible container" role="alert">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            ${flash.message}
        </div>
    </g:if>
<g:layoutBody/>
<div class="container">
    <footer class="marketing schnack" style="padding-bottom: 20px">
        <div class="row">
        <div class="col-md-3"><h5><strong>Facebook</strong></h5>
            <p>
                <a href="http://www.facebook.com">Unsere Seite</a>
            </p>
        </div>
        <div class="col-md-3">
            <h5><strong>Twitter</strong></h5>
            <p><a href="http://www.twitter.com">Hipponade folgen</a></p>
        </div>
        <div class="col-md-3">
            <h5><strong>YouTube</strong></h5>
            <p><a href="http://www.youtube.com">Unser Kanal</a></p>
        </div>
        <div class="col-md-3">
            <h5><strong>Sie sind Händler?</strong></h5>
            <p><g:navigationLink controller="store" action="create" linkOnly="true">Verkaufsstelle eintragen</g:navigationLink></p>
        </div>
        </div>
        <hr class="divider">
        <div class="row">
            <div class="col-md-2 col-md-offset-2">
                <g:navigationLink controller="about" action="legal" linkOnly="true">Impressum</g:navigationLink>
            </div>
            <div class="col-md-2">
                <g:navigationLink controller="about" action="privacy" linkOnly="true">Datenschutz</g:navigationLink>
            </div>
            <div class="col-md-2">
                <g:navigationLink controller="about" action="terms" linkOnly="true">Nutzungsbedingungen</g:navigationLink>
            </div>
            <div class="col-md-2">
                    <g:navigationLink controller="about" action="admin" linkOnly="true">Admin</g:navigationLink>
            </div>
        </div>
    </footer>
</div>
    <asset:javascript src="application.js"/>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
