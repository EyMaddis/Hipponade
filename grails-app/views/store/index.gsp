
<%@ page import="hipponade.Store" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="container">
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="list-store" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>

        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    
                    <g:sortableColumn property="name" title="${message(code: 'store.name.label', default: 'Name')}"/>
                    
                    <g:sortableColumn property="street1" title="${message(code: 'store.street1.label', default: 'Street1')}"/>
                    
                    <g:sortableColumn property="street2" title="${message(code: 'store.street2.label', default: 'Street2')}"/>
                    
                    <g:sortableColumn property="city" title="${message(code: 'store.city.label', default: 'City')}"/>
                    
                    <g:sortableColumn property="zipCode" title="${message(code: 'store.zipCode.label', default: 'Zip Code')}"/>
                    
                    <g:sortableColumn property="country" title="${message(code: 'store.country.label', default: 'Country')}"/>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${storeInstanceList}" status="i" var="storeInstance">
                    <tr>
                        
                        <td><g:link action="show"
                                    id="${storeInstance.id}">${fieldValue(bean: storeInstance, field: "name")}</g:link></td>
                        
                        <td>${fieldValue(bean: storeInstance, field: "street1")}</td>
                        
                        <td>${fieldValue(bean: storeInstance, field: "street2")}</td>
                        
                        <td>${fieldValue(bean: storeInstance, field: "city")}</td>
                        
                        <td>${fieldValue(bean: storeInstance, field: "zipCode")}</td>
                        
                        <td>${fieldValue(bean: storeInstance, field: "country")}</td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

        <div class="pagination">
            <g:paginate total="${storeInstanceCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
