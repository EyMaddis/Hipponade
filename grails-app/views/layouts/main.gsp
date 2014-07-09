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
        <div class="alert alert-warning alert-dismissible container" role="alert">
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
        </div>
        </div>
        <hr class="divider">
        <div class="row">
            <div class="col-md-2 col-md-offset-2"><g:navigationLink controller="about" action="legal" linkOnly="true">Impressum</g:navigationLink></div>
            <div class="col-md-2"><g:navigationLink controller="about" action="privacy" linkOnly="true">Datenschutz</g:navigationLink></div>
            <div class="col-md-2"><g:navigationLink controller="about" action="terms" linkOnly="true">Nutzungsbedingungen</g:navigationLink></div>
            <div class="col-md-2"><sec:ifNotLoggedIn><g:navigationLink controller="login" action="auth" linkOnly="true">Admin
            </g:navigationLink></sec:ifNotLoggedIn>
            <sec:ifLoggedIn><g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()">Logout</g:remoteLink></sec:ifLoggedIn>
            </div>
        </div>
    </footer>
</div>
    <asset:javascript src="application.js"/>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
