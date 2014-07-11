
<%@ page import="hipponade.Event" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">

    <div>  %{--class="col-md-8"--}%
    <g:each in="${eventInstanceList}" status="i" var="eventInstance">
        <div style="margin-bottom: 10px">
            <g:render template="single" bean="${eventInstance}" var="eventInstance" />
        </div>
        <hr />
    </g:each>
    </div>
    %{--<div>
        <g:render template="single" bean="${eventInstance}" var="Instance" />
    </div>--}%
</div>
</body>
</html>
