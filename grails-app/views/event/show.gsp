
<%@ page import="hipponade.Event" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">
        <div>
            <g:render template="single" bean="${eventInstance}" var="Instance" />
        </div>
        <div class="col-md-4 news-sidebar">

            <sec:ifLoggedIn>
                <g:form url="[resource: eventInstance, action: 'delete']" method="DELETE">
                    <fieldset class="buttons pull-right">
                        <g:link class="edit btn btn-warning" action="edit" resource="${eventInstance}"><g:message
                                code="default.button.edit.label" default="Edit"/></g:link>
                        <g:actionSubmit class="delete btn btn-danger" action="delete"
                                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </fieldset>
                </g:form>
            </sec:ifLoggedIn>

        </div>
</div>
</body>
</html>
