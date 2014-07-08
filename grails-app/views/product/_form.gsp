<%@ page import="hipponade.Product" %>



<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" maxlength="100" required="" value="${productInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
	<label class="col-sm-2 control-label" for="description">
		<g:message code="product.description.label" default="Description" />
		
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="description" value="${productInstance?.description}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'css', 'error')} ">
	<label class="col-sm-2 control-label" for="css">
		<g:message code="product.css.label" default="Css" />
		
	</label>
    <div class="col-sm-10">
        <g:textArea class="form-control" name="css" cols="40" rows="5" value="${productInstance?.css}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'store', 'error')} ">
	<label class="col-sm-2 control-label" for="store">
		<g:message code="product.store.label" default="Store" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="store" from="${hipponade.Store.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.store*.id}" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'recipes', 'error')} ">
	<label class="col-sm-2 control-label" for="recipes">
		<g:message code="product.recipes.label" default="Recipes" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="recipes" from="${hipponade.Recipe.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.recipes*.id}" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'images', 'error')} ">
	<label class="col-sm-2 control-label" for="images">
		<g:message code="product.images.label" default="Images" />
		
	</label>
    <div class="col-sm-10">
        
<ul class="one-to-many">
<g:each in="${productInstance?.images?}" var="i">
    <li><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="image" action="create" params="['product.id': productInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'image.label', default: 'Image')])}</g:link>
</li>
</ul>


    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'ingredients', 'error')} ">
	<label class="col-sm-2 control-label" for="ingredients">
		<g:message code="product.ingredients.label" default="Ingredients" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="ingredients" from="${hipponade.Ingredient.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.ingredients*.id}" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'nutrition', 'error')} required">
	<label class="col-sm-2 control-label" for="nutrition">
		<g:message code="product.nutrition.label" default="Nutrition" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="nutrition" name="nutrition.id" from="${hipponade.NutritionFact.list()}" optionKey="id" required="" value="${productInstance?.nutrition?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'tags', 'error')} ">
	<label class="col-sm-2 control-label" for="tags">
		<g:message code="product.tags.label" default="Tags" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

