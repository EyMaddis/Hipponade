<%@ page import="hipponade.Recipe" %>



<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="recipe.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${recipeInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'shortDescription', 'error')} ">
	<label class="col-sm-2 control-label" for="shortDescription">
		<g:message code="recipe.shortDescription.label" default="Short Description" />
		
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="shortDescription" maxlength="140" value="${recipeInstance?.shortDescription}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'instructions', 'error')} required">
	<label class="col-sm-2 control-label" for="instructions">
		<g:message code="recipe.instructions.label" default="Zubereitung" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textArea class="form-control" name="instructions" cols="40" rows="5" maxlength="60000" required="" value="${recipeInstance?.instructions}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'nutrition', 'error')} ">
	<label class="col-sm-2 control-label" for="nutrition">
		<g:message code="recipe.nutrition.label" default="Nutrition" />
		
	</label>
    <div class="col-sm-10">
        <g:select id="nutrition" name="nutrition.id" from="${hipponade.NutritionFact.list()}" optionKey="id" value="${recipeInstance?.nutrition?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'images', 'error')} ">
	<label class="col-sm-2 control-label" for="images">
		<g:message code="recipe.images.label" default="Images" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="images" from="${hipponade.Image.list()}" multiple="multiple" optionKey="fileName" size="5" value="${recipeInstance?.images*.fileName}" valueMessagePrefix="image.fileName" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'ingredients', 'error')} ">
	<label class="col-sm-2 control-label" for="ingredients">
		<g:message code="recipe.ingredients.label" default="Ingredients" />
		
	</label>
    <div class="col-sm-10">             %{--TODO: Die Namen der INgredients sollen angezeigt werden; UND ich kann image auswählen aber nicht speichern--}%
        <g:select name="ingredients" from="${hipponade.RecipeIngredient.list()}" multiple="multiple" optionKey="ingredient" size="5" value="${recipeInstance?.ingredients?.ingredient.name}" valueMessagePrefix="RecipeIngredient.ingredient.name" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: recipeInstance, field: 'tags', 'error')} ">
	<label class="col-sm-2 control-label" for="tags">
		<g:message code="recipe.tags.label" default="Tags" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="tags" from="${hipponade.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${recipeInstance?.tags*.id}" class="many-to-many form-control"/>

    </div>
</div>

