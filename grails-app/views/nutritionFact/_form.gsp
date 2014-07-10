<%@ page import="hipponade.NutritionFact" %>



<div class="form-group fieldcontain ${hasErrors(bean: nutritionFactInstance, field: 'calories', 'error')} required">
	<label class="col-sm-2 control-label" for="calories">
		<g:message code="nutritionFact.calories.label" default="Calories" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="calories" type="number" class="form-control" value="${nutritionFactInstance.calories}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: nutritionFactInstance, field: 'protein', 'error')} required">
	<label class="col-sm-2 control-label" for="protein">
		<g:message code="nutritionFact.protein.label" default="Protein" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="protein" value="${fieldValue(bean: nutritionFactInstance, field: 'protein')}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: nutritionFactInstance, field: 'carbs', 'error')} required">
	<label class="col-sm-2 control-label" for="carbs">
		<g:message code="nutritionFact.carbs.label" default="Carbs" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="carbs" value="${fieldValue(bean: nutritionFactInstance, field: 'carbs')}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: nutritionFactInstance, field: 'fiber', 'error')} required">
	<label class="col-sm-2 control-label" for="fiber">
		<g:message code="nutritionFact.fiber.label" default="Fiber" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="fiber" value="${fieldValue(bean: nutritionFactInstance, field: 'fiber')}" required=""/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: nutritionFactInstance, field: 'fat', 'error')} required">
	<label class="col-sm-2 control-label" for="fat">
		<g:message code="nutritionFact.fat.label" default="Fat" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:field name="fat" value="${fieldValue(bean: nutritionFactInstance, field: 'fat')}" required=""/>

    </div>
</div>

