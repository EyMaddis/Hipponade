<%@ page import="hipponade.Product" %>



<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'css', 'error')} required">
	<label class="col-sm-2 control-label" for="css">
		<g:message code="product.css.label" default="Css" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="css" required="" value="${productInstance?.css}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} required">
	<label class="col-sm-2 control-label" for="description">
		<g:message code="product.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="description" required="" value="${productInstance?.description}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'image', 'error')} required">
	<label class="col-sm-2 control-label" for="image">
		<g:message code="product.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="image" name="image.id" from="${hipponade.Image.list()}" optionKey="id" required="" value="${productInstance?.image?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="product.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${productInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'retailer', 'error')} ">
	<label class="col-sm-2 control-label" for="retailer">
		<g:message code="product.retailer.label" default="Retailer" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="retailer" from="${hipponade.Store.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.retailer*.id}" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: productInstance, field: 'tags', 'error')} ">
	<label class="col-sm-2 control-label" for="tags">
		<g:message code="product.tags.label" default="Tags" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="tags" from="${hipponade.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${productInstance?.tags*.id}" class="many-to-many form-control"/>

    </div>
</div>

