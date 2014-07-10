
<%@ page import="hipponade.Recipe" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">
    <div class="nav" role="navigation">
        <ul>
            %{--<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
            <g:link class="list" action="index">Rezeptliste</g:link>
            <sec:ifLoggedIn>
                <br><g:link class="create" action="create">Rezept erstellen</g:link>
            </sec:ifLoggedIn>
        </ul>
    </div>
    <div class="col-md-8">
        <h1>${recipeInstance?.name}</h1>
    </div>

    <div class="col-md-4">
        <p align="right" class="lead">
        <g:if test="${recipeInstance?.tags}">
            <div class="form-group row">
                <label class="col-sm-2 control-label text-right">
                    Tags:
                </label>
                <div class="col-sm-10 text-left">
                    <g:each in="${recipeInstance.tags}" var="t">
                        <g:link controller="tag" action="show" id="${t.id}" class="btn btn-default btn-xs">${t?.encodeAsHTML()}</g:link>
                    </g:each>
                </div>
            </div>
        </g:if>
        </p>
    </div>
         <div class="col-md-8 lead" >
            <g:if test="${recipeInstance?.images}">
                    <img id="recipe" src="/Hipponade/assets/products/${recipeInstance?.images[0].fileName}" width="100%" max-width="500px" alt="...">
            </g:if>
             <g:else>
                 <img src="/Hipponade/assets/products/standart.png" alt="...">
             </g:else>
         </div>
    <div class="col-md-4">
        <div class="schnack">
            <h2>Zutatenliste</h2>
        </div>
        <div class="row lead">
            <div class="col-md-6">
                <g:each in="${recipeInstance.ingredients}" var="i">
                    <p class="text-left">${i?.amount} ${i?.type}</p>
                </g:each>
                %{--<p class="text-left">${recipeInstance.product.name}</p>--}%
            </div>
            <div class="col-md-6">
                <g:each in="${recipeInstance.ingredients}" var="i">
                    <p>${i?.ingredient.name}</p>
                </g:each>
            </div>
        </div>
    </div>
            

        <div class="col-md-8 lead">
            <g:if test="${recipeInstance?.instructions}">
                    <span id="instructions-label" class="property-label">
                        <div class="lead schnack">
                            <h2>Zubereitung</h2>
                        </div>
                    </span>
                    
                    <span class="property-value" aria-labelledby="instructions-label"><g:fieldValue
                            bean="${recipeInstance}" field="instructions"/></span>

            </g:if>
        </div>
        <div class="col-md-4 lead">
            <g:if test="${recipeInstance?.nutrition}">
                    <span class="property-value" aria-labelledby="nutrition-label">
                        <div class="lead schnack"><h2>Nährwerte</h2></div>
                        je 100g ${recipeInstance.nutrition?.calories} kcal
                        <g:link controller="nutritionFact" action="show" id="${recipeInstance?.nutrition?.id}" >(Details)</g:link>
                    </span>
            </g:if>
        </div>

        <sec:ifLoggedIn>
        <g:form url="[resource: recipeInstance, action: 'delete']" method="DELETE">
            <fieldset class="buttons pull-right">
                <g:link class="edit btn btn-warning" action="edit" resource="${recipeInstance}"><g:message
                        code="default.button.edit.label" default="Edit"/></g:link>
                <g:actionSubmit class="delete btn btn-danger" action="delete"
                                value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
        </sec:ifLoggedIn>
    </div>
%{--</div>--}%
</body>
</html>
