<!DOCTYPE html>
<html>
<head>
    <title><g:layoutTitle default="Hipponade - Frisch wie der Morgentau"/></title>
    <asset:stylesheet src="application.css"/>
    <g:layoutHead/>
</head>
<body class="fullpage">
    <g:render template="/layouts/navigation" />

    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            ${flash.message}
        </div>
    </g:if>

    <g:layoutBody/>
    %{--<footer class="marketing">--}%
        %{--<div class="row">--}%
            %{--<div class="col-md-3"><h5>Facebook</h5><p>--}%
                %{--Unsere Seite--}%
            %{--</p></div>--}%
            %{--<div class="col-md-3">--}%
                %{--<h5>Twitter</h5>--}%
                %{--<p>Hipponade folgen</p>--}%
            %{--</div>--}%
            %{--<div class="col-md-3">--}%
                %{--<h5>YouTube</h5>--}%
                %{--<p>Unser Kanal</p>--}%
            %{--</div>--}%
            %{--<div class="col-md-3">--}%
                %{--<h5>Externe</h5>--}%
                %{--<p>Großhändler</p>--}%
                %{--<p>Admin</p>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--<hr class="divider">--}%
        %{--<div class="row">--}%
            %{--<div class="col-md-3"></div>--}%
            %{--<div class="col-md-2">Impressum</div>--}%
            %{--<div class="col-md-2">Datenschutz</div>--}%
            %{--<div class="col-md-2">Nutzungsbedingungen</div>--}%
            %{--<div class="col-md-3"></div>--}%
        %{--</div>--}%
    %{--</footer>--}%
<asset:javascript src="application.js"/>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
</body>
</html>
