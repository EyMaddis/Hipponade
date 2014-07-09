
<%@ page import="hipponade.News" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container marketing">

    <g:each in="${newsInstanceList}" status="i" var="newsInstance">
    <g:if test="${i != 0}"><hr class="featurette-divider"> </g:if>
    <div class="featurette">
        <p class="featurette-heading lead"><g:link action="show"
                                               id="${newsInstance.id}">${newsInstance.headline}</g:link></p>
        <p class="text-justify text-center">${newsInstance.content}</p>
    </div>
    </g:each>


    <sec:ifLoggedIn>
        <p class="btn btn-default"> <g:link class="create" action="create">News anlegen</g:link></p>
    </sec:ifLoggedIn>
</div>
</body>
</html>
