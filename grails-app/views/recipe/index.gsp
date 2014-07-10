
<%@ page import="hipponade.Recipe" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="schnack container">


    <div id="list-recipe" class="content scaffold-list" role="main">
        <h1>Rezeptideen</h1>

 %{-- ZenCoding: (div.col-md-3>(div.row.panel.panel-default>(div.panel-heading>h1{Rezept})+div.recipe-content.panel-body{Lorem Ipsum...})*3)*4 --}%
        <div class="pinterest row">
            <div class="col-md-3">
                <g:each in="${recipeInstanceList}" status="i" var="recipe">
                    <g:if test="${i % 4 == 0}">
                        <g:render template="hightlightBox" var="recipe" bean="${recipe}" />
                    </g:if>
                </g:each>
            </div>

            <div class="col-md-3">
                <g:each in="${recipeInstanceList}" status="i" var="recipe">
                    <g:if test="${i % 4 == 1}">
                        <g:render template="hightlightBox" var="recipe" bean="${recipe}" />
                    </g:if>
                </g:each>
            </div>
            <div class="col-md-3">
                <g:each in="${recipeInstanceList}" status="i" var="recipe">
                    <g:if test="${i % 4 == 2}">
                        <g:render template="hightlightBox" var="recipe" bean="${recipe}" />
                    </g:if>
                </g:each>
            </div>
            <div class="col-md-3">
                <g:each in="${recipeInstanceList}" status="i" var="recipe">
                    <g:if test="${i % 4 == 3}">
                        <g:render template="hightlightBox" var="recipe" bean="${recipe}" />
                    </g:if>
                </g:each>
            </div>
        </div>
    </div>
</div>
</body>
</html>
