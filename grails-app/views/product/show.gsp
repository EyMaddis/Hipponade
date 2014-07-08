
<%@ page import="hipponade.Product" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-product" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<ol class="property-list product">
			
				<g:if test="${productInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="product.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="product.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${productInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.shortDescription}">
				<li class="fieldcontain">
					<span id="shortDescription-label" class="property-label"><g:message code="product.shortDescription.label" default="Short Description" /></span>
					
						<span class="property-value" aria-labelledby="shortDescription-label"><g:fieldValue bean="${productInstance}" field="shortDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.css}">
				<li class="fieldcontain">
					<span id="css-label" class="property-label"><g:message code="product.css.label" default="Css" /></span>
					
						<span class="property-value" aria-labelledby="css-label"><g:fieldValue bean="${productInstance}" field="css"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.store}">
				<li class="fieldcontain">
					<span id="store-label" class="property-label"><g:message code="product.store.label" default="Store" /></span>
					
						<g:each in="${productInstance.store}" var="s">
						<span class="property-value" aria-labelledby="store-label"><g:link controller="store" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.recipes}">
				<li class="fieldcontain">
					<span id="recipes-label" class="property-label"><g:message code="product.recipes.label" default="Recipes" /></span>
					
						<g:each in="${productInstance.recipes}" var="r">
						<span class="property-value" aria-labelledby="recipes-label"><g:link controller="recipe" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.nutrition}">
				<li class="fieldcontain">
					<span id="nutrition-label" class="property-label"><g:message code="product.nutrition.label" default="Nutrition" /></span>
					
						<span class="property-value" aria-labelledby="nutrition-label"><g:link controller="nutritionFact" action="show" id="${productInstance?.nutrition?.id}">${productInstance?.nutrition?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.images}">
				<li class="fieldcontain">
					<span id="images-label" class="property-label"><g:message code="product.images.label" default="Images" /></span>
					
						<g:each in="${productInstance.images}" var="i">
						<span class="property-value" aria-labelledby="images-label"><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.ingredients}">
				<li class="fieldcontain">
					<span id="ingredients-label" class="property-label"><g:message code="product.ingredients.label" default="Ingredients" /></span>
					
						<g:each in="${productInstance.ingredients}" var="i">
						<span class="property-value" aria-labelledby="ingredients-label"><g:link controller="ingredient" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productInstance?.tags}">
				<li class="fieldcontain">
					<span id="tags-label" class="property-label"><g:message code="product.tags.label" default="Tags" /></span>
					
						<g:each in="${productInstance.tags}" var="t">
						<span class="property-value" aria-labelledby="tags-label"><g:link controller="tag" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons pull-right">
					<g:link class="edit btn btn-warning" action="edit" resource="${productInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
