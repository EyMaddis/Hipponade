
<%@ page import="hipponade.Recipe" %>
<!DOCTYPE html>
<html>
<head>
    <g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}"/>
    <title>${recipeInstance?.name}</title>
</head>

<body onload="window.print()">
<h1 style="text-align: center">Rezept für ${recipeInstance?.name}</h1>
<hr/>
<h2>Zutaten:</h2>
<g:each in="${recipeInstance?.ingredients}" var="ingredient">
<p>${ingredient.amount} ${ingredient.type} ${ingredient.ingredient.name}</p>
</g:each>
<hr/>
<h2>Zubereitung:</h2>
${recipeInstance?.instructions}
</body>
</html>
