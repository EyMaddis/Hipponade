
<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="container marketing">
    <div id="show-product" class="content scaffold-show" role="main">
        <p class="lead biglead">${productInstance?.name}</p>
        <div class="row schnack">
            <div class="col-md-4">
                <img class="img-responsive"
                     src="/Hipponade/assets/products/${productInstance?.images[0].fileName}"
                     alt="...">
            </div>
            <div class="col-md-8">
                <p class="blocktext">
                    ${productInstance?.description}
                </p>



        <g:if test="${productInstance?.recipes}">
        <div class="lead">
            Passende Rezeptideen
        </div>

        <g:each in="${productInstance?.recipes}" status="i" var="recipe">
        <p><g:link action="show" controller="recipe"
                   id="${recipe.id}">${recipe.name}</g:link></p>
        </g:each>
        </g:if>


        <div class="lead">
            Nährwerte
        </div>
        <g:if test="${productInstance?.store}">
        <div class="lead">
            Wo zu kaufen
        </div>
            </g:if>
            </div>
        </div>
        <ol class="property-list product">
            <g:if test="${productInstance?.nutrition}">
                <li class="fieldcontain">
                    <span id="nutrition-label" class="property-label"><g:message
                            code="product.nutrition.label" default="Nutrition"/></span>
                    
                    <span class="property-value" aria-labelledby="nutrition-label"><g:link
                            controller="nutritionFact" action="show"
                            id="${productInstance?.nutrition?.id}">${productInstance?.nutrition?.encodeAsHTML()}</g:link></span>
                    
                </li>
            </g:if>
            

            
            <g:if test="${productInstance?.ingredients}">
                <li class="fieldcontain">
                    <span id="ingredients-label" class="property-label"><g:message
                            code="product.ingredients.label" default="Ingredients"/></span>
                    
                    <g:each in="${productInstance.ingredients}" var="i">
                        <span class="property-value" aria-labelledby="ingredients-label"><g:link
                                controller="ingredient" action="show"
                                id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
                </li>
            </g:if>
            
            <g:if test="${productInstance?.tags}">
                <li class="fieldcontain">
                    <span id="tags-label" class="property-label"><g:message
                            code="product.tags.label" default="Tags"/></span>
                    
                    <g:each in="${productInstance.tags}" var="t">
                        <span class="property-value" aria-labelledby="tags-label"><g:link
                                controller="tag" action="show"
                                id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
                    </g:each>
                    
                </li>
            </g:if>
            
        </ol>
        <sec:ifLoggedIn>
        <g:form url="[resource: productInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${productInstance}"><g:message
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
