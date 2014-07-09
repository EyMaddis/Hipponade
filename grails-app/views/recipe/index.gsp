
<%@ page import="hipponade.Recipe" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}"/>
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

    <div id="list-recipe" class="content scaffold-list" role="main">
        <h1>Rezeptliste</h1>

        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                <tr>
                    %{--TODO: Mit Image? oder nur vorschau? --}%
                    <g:sortableColumn property="name" title="${message(code: 'recipe.name.label', default: 'Name')}"/>
                    
                    <g:sortableColumn property="shortDescription" title="${message(code: 'recipe.shortDescription.label', default: 'Beschreibung')}"/>
                    
                    <th><g:message code="recipe.nutrition.label" default="Nährwerte"/></th>
                    
                </tr>
                </thead>
                <tbody>
                <g:each in="${recipeInstanceList}" status="i" var="recipeInstance">
                    <tr>
                        
                        <td><g:link action="show"
                                    id="${recipeInstance.id}">${fieldValue(bean: recipeInstance, field: "name")}</g:link></td>
                        
                        <td>${fieldValue(bean: recipeInstance, field: "shortDescription")}</td>

                        
                        <td><g:if test="${recipeInstance?.nutrition}">${recipeInstance.nutrition?.calories} kcal</g:if></td>
                        
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>

        <div class="pagination">
            <g:paginate total="${recipeInstanceCount ?: 0}"/>
        </div>
    </div>
</div>
</body>
</html>
