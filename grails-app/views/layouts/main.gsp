<!DOCTYPE html>
<html>
<head>
    <title><g:layoutTitle default="Grails"/></title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body class="main">
<g:render template="/layouts/navigation" />

    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            ${flash.message}
        </div>
    </g:if>
    <g:layoutBody/><div class="container">
    <footer class="marketing">
        <div class="row">
        <div class="col-md-3"><h5>Facebook</h5><p>
            <a href="http://www.facebook.com">Unsere Seite</a>
        </p></div>
        <div class="col-md-3">
            <h5>Twitter</h5>
            <p><a href="http://www.twitter.com">Hipponade folgen</a></p>
        </div>
        <div class="col-md-3">
            <h5>YouTube</h5>
            <p><a href="http://www.youtube.com">Unser Kanal</a></p>
        </div>
        <div class="col-md-3">
            <h5>Externe</h5>
            <p><g:navigationLink controller="store" action="index" linkOnly="true">Großhändler</g:navigationLink></p>
            <p><g:navigationLink controller="login" action="auth" linkOnly="true">Admin</g:navigationLink></p>
        </div>
        </div>
        <hr class="divider">
        <div class="row">
            <div class="col-md-2 col-md-offset-3">Impressum</div>
            <div class="col-md-2">Datenschutz</div>
            <div class="col-md-2">Nutzungsbedingungen</div>
        </div>
    </footer>
</div>
    <asset:javascript src="application.js"/>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
