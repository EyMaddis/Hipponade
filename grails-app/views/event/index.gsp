
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
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="list-event" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>

        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    
                    <g:sortableColumn property="name" title="${message(code: 'event.name.label', default: 'Name')}"/>
                    
                    <g:sortableColumn property="description" title="${message(code: 'event.description.label', default: 'Description')}"/>
                    
                    <g:sortableColumn property="location" title="${message(code: 'event.location.label', default: 'Location')}"/>
                    
                    <g:sortableColumn property="date" title="${message(code: 'event.date.label', default: 'Date')}"/>
                    
                    <th><g:message code="event.author.label" default="Author"/></th>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${eventInstanceList}" status="i" var="eventInstance">
                    <tr>
                        
                        <td><g:link action="show"
                                    id="${eventInstance.id}">${fieldValue(bean: eventInstance, field: "name")}</g:link></td>
                        
                        <td>${fieldValue(bean: eventInstance, field: "description")}</td>
                        
                        <td>${fieldValue(bean: eventInstance, field: "location")}</td>
                        
                        <td><g:formatDate date="${eventInstance.date}"/></td>
                        
                        <td>${fieldValue(bean: eventInstance, field: "author")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

        <div class="pagination">
            <g:paginate total="${eventInstanceCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
