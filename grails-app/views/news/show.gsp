
<%@ page import="hipponade.News" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'news.label', default: 'News')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                               args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="show-news" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <ol class="property-list news">
            
            <g:if test="${newsInstance?.headline}">
                <li class="fieldcontain">
                    <span id="headline-label" class="property-label"><g:message
                            code="news.headline.label" default="Headline"/></span>
                    
                    <span class="property-value" aria-labelledby="headline-label"><g:fieldValue
                            bean="${newsInstance}" field="headline"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${newsInstance?.content}">
                <li class="fieldcontain">
                    <span id="content-label" class="property-label"><g:message
                            code="news.content.label" default="Content"/></span>
                    
                    <span class="property-value" aria-labelledby="content-label"><g:fieldValue
                            bean="${newsInstance}" field="content"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${newsInstance?.date}">
                <li class="fieldcontain">
                    <span id="date-label" class="property-label"><g:message
                            code="news.date.label" default="Date"/></span>
                    
                    <span class="property-value" aria-labelledby="date-label"><g:formatDate
                            date="${newsInstance?.date}"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${newsInstance?.author}">
                <li class="fieldcontain">
                    <span id="author-label" class="property-label"><g:message
                            code="news.author.label" default="Author"/></span>
                    
                    <span class="property-value" aria-labelledby="author-label"><g:link
                            controller="user" action="show"
                            id="${newsInstance?.author?.id}">${newsInstance?.author?.encodeAsHTML()}</g:link></span>
                    
                </li>
            </g:if>
            
            <g:if test="${newsInstance?.tags}">
                <li class="fieldcontain">
                    <span id="tags-label" class="property-label"><g:message
                            code="news.tags.label" default="Tags"/></span>
                    
                    <g:each in="${newsInstance.tags}" var="t">
                        <span class="property-value" aria-labelledby="tags-label"><g:link
                                controller="tag" action="show"
                                id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
                </li>
            </g:if>
            
        </ol>
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
    </div>
</div>
</body>
</html>
