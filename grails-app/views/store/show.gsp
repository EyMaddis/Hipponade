
<%@ page import="hipponade.Store" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'store.label', default: 'Store')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">
    <div class="nav" role="navigation">
        <ul>
            <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label"
                                                               args="[entityName]"/></g:link></li>
            <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                                  args="[entityName]"/></g:link></li>
        </ul>
    </div>

    <div id="show-store" class="content scaffold-show" role="main">
        <h1><g:message code="default.show.label" args="[entityName]"/></h1>
        <ol class="property-list store">
            
            <g:if test="${storeInstance?.name}">
                <li class="fieldcontain">
                    <span id="name-label" class="property-label"><g:message
                            code="store.name.label" default="Name"/></span>
                    
                    <span class="property-value" aria-labelledby="name-label"><g:fieldValue
                            bean="${storeInstance}" field="name"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.street1}">
                <li class="fieldcontain">
                    <span id="street1-label" class="property-label"><g:message
                            code="store.street1.label" default="Street1"/></span>
                    
                    <span class="property-value" aria-labelledby="street1-label"><g:fieldValue
                            bean="${storeInstance}" field="street1"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.street2}">
                <li class="fieldcontain">
                    <span id="street2-label" class="property-label"><g:message
                            code="store.street2.label" default="Street2"/></span>
                    
                    <span class="property-value" aria-labelledby="street2-label"><g:fieldValue
                            bean="${storeInstance}" field="street2"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.city}">
                <li class="fieldcontain">
                    <span id="city-label" class="property-label"><g:message
                            code="store.city.label" default="City"/></span>
                    
                    <span class="property-value" aria-labelledby="city-label"><g:fieldValue
                            bean="${storeInstance}" field="city"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.zipCode}">
                <li class="fieldcontain">
                    <span id="zipCode-label" class="property-label"><g:message
                            code="store.zipCode.label" default="Zip Code"/></span>
                    
                    <span class="property-value" aria-labelledby="zipCode-label"><g:fieldValue
                            bean="${storeInstance}" field="zipCode"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.country}">
                <li class="fieldcontain">
                    <span id="country-label" class="property-label"><g:message
                            code="store.country.label" default="Country"/></span>
                    
                    <span class="property-value" aria-labelledby="country-label"><g:fieldValue
                            bean="${storeInstance}" field="country"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.longitude}">
                <li class="fieldcontain">
                    <span id="longitude-label" class="property-label"><g:message
                            code="store.longitude.label" default="Longitude"/></span>
                    
                    <span class="property-value" aria-labelledby="longitude-label"><g:fieldValue
                            bean="${storeInstance}" field="longitude"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.latitude}">
                <li class="fieldcontain">
                    <span id="latitude-label" class="property-label"><g:message
                            code="store.latitude.label" default="Latitude"/></span>
                    
                    <span class="property-value" aria-labelledby="latitude-label"><g:fieldValue
                            bean="${storeInstance}" field="latitude"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.website}">
                <li class="fieldcontain">
                    <span id="website-label" class="property-label"><g:message
                            code="store.website.label" default="Website"/></span>
                    
                    <span class="property-value" aria-labelledby="website-label"><g:fieldValue
                            bean="${storeInstance}" field="website"/></span>
                    
                </li>
            </g:if>
            
            <g:if test="${storeInstance?.products}">
                <li class="fieldcontain">
                    <span id="products-label" class="property-label"><g:message
                            code="store.products.label" default="Products"/></span>
                    
                    <g:each in="${storeInstance.products}" var="p">
                        <span class="property-value" aria-labelledby="products-label"><g:link
                                controller="product" action="show"
                                id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
                </li>
            </g:if>
            
        </ol>
        <sec:ifLoggedIn>
        <g:form url="[resource: storeInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${storeInstance}"><g:message
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
