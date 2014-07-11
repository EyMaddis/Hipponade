
<%@ page import="hipponade.News" %>
<%@ page import="hipponade.Tag" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container marketing">
    <div>  %{--class="col-md-8"--}%
        <g:each in="${newsInstanceList}" status="i" var="newsInstance">
            <g:render template="single" bean="${newsInstance}" var="newsInstance" />
            <hr>
        </g:each>
    </div>
    %{--<div class="col-md-4 news-sidebar">--}%
        %{--<h3>Benutzte Tags in den News:</h3>--}%
        %{--<g:each in="${usedTags}" status="i" var="tag">--}%
            %{--<g:link controller="tag" action="show" id="${tag.id}" class="btn btn-default btn-xs">--}%
                %{--#${tag?.encodeAsHTML()}--}%
            %{--</g:link>--}%
        %{--</g:each>--}%
    %{--</div>--}%


    <sec:ifLoggedIn>
        <p class="btn btn-default"> <g:link class="create" action="create">News anlegen</g:link></p>
    </sec:ifLoggedIn>
</div>
</body>
</html>
