<%@ page import="hipponade.Image" %>




<div class="form-group fieldcontain ${hasErrors(bean: imageInstance, field: 'fileName', 'error')}">
    <label class="col-sm-2 control-label" for="fileName">
        <g:message code="image.fileName.label" default="Dateiname" />
    </label>
    <div class="col-sm-10">
        <input class="form-control" type="text" id="fileName" name="fileName" value="${imageInstance?.fileName}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: imageInstance, field: 'fileName', 'error')} required">
    <label class="col-sm-2 control-label" for="fileName">
        <g:message code="image.fileName.label" default="Datei" />
        <span class="required-indicator">*</span>
    </label>
    <div class="col-sm-10">
        <input class="form-control" type="file" id="myFile" required="" name="myFile" />

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: imageInstance, field: 'recipe', 'error')} ">
	<label class="col-sm-2 control-label" for="recipe">
		<g:message code="image.recipe.label" default="Recipe" />
		
	</label>
    <div class="col-sm-10">
        <g:select id="recipe" name="recipe.id" from="${hipponade.Recipe.list()}" optionKey="id" value="${imageInstance?.recipe?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: imageInstance, field: 'event', 'error')} ">
	<label class="col-sm-2 control-label" for="event">
		<g:message code="image.event.label" default="Event" />
		
	</label>
    <div class="col-sm-10">
        <g:select id="event" name="event.id" from="${hipponade.Event.list()}" optionKey="id" value="${imageInstance?.event?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: imageInstance, field: 'product', 'error')} ">
	<label class="col-sm-2 control-label" for="product">
		<g:message code="image.product.label" default="Product" />
		
	</label>
    <div class="col-sm-10">
        <g:select id="product" name="product.id" from="${hipponade.Product.list()}" optionKey="id" value="${imageInstance?.product?.id}" class="many-to-one form-control" noSelection="['null': '']"/>

    </div>
</div>

