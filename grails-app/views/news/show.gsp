
<%@ page import="hipponade.News" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>


<div class="schnack container marketing">
    <sec:ifLoggedIn>
        <g:form url="[resource: newsInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${newsInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete btn btn-danger" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </sec:ifLoggedIn>
    <div> %{-- col-md-8 --}%
        <g:render template="single" bean="${newsInstance}" var="newsInstance" />
    </div>
    %{--<div class="col-md-4 news-sidebar">--}%

    %{--</div>--}%
</div>
</body>
</html>
