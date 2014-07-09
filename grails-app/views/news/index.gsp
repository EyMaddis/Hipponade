
<%@ page import="hipponade.News" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container marketing">
    <div class="col-md-8">
        <g:each in="${newsInstanceList}" status="i" var="newsInstance">
            <div class="row news-post">
                <g:if test="${i != 0}"><hr class="featurette-divider"> </g:if>
                <div class="featurette">
                    <h1>
                        <g:link action="show" id="${newsInstance.id}">
                            ${newsInstance.headline}
                        </g:link>
                    </h1>
                    <p class="text-justify text-center">
                        <% def content = raw(newsInstance.content)
                         if(content != null)
                            content = content.replaceAll('\n','<br />')
                        %>
${raw(content)}

                    </p>
                </div>
            </div>
        </g:each>
    </div>
    <div class="col-md-4 news-sidebar">
        Sidebar!
    </div>


    <sec:ifLoggedIn>
        <p class="btn btn-default"> <g:link class="create" action="create">News anlegen</g:link></p>
    </sec:ifLoggedIn>
</div>
</body>
</html>
