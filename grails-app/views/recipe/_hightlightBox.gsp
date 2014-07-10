<div class="row panel panel-default">
    <div class="panel-heading">
        <h3><g:link controller="recipe" action="show" id="${recipe.id}">${recipe.name}</g:link></h3>
    </div>
    <g:if test="${recipe.images && recipe.images[0]}">
        <g:link controller="recipe" action="show" id="${recipe.id}">
            <img src="${createLink(uri: '/')}assets/products/${recipe.images[0].fileName}" class="img-responsive"/>
        </g:link>
    </g:if>
    <div class="panel-body">
        ${recipe.shortDescription}
    </div>
    <div class="recipe-content panel-footer">
        <g:each in="${recipe.tags}" var="tag">
            <g:link controller="tag" action="show" id="${tag.id}" class="btn btn-default btn-xs">${tag}</g:link>
        </g:each>
    </div>
</div>