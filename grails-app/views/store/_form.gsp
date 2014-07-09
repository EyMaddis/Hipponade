<%@ page import="hipponade.Store" %>



<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="store.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" required="" value="${storeInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'street1', 'error')} required">
	<label class="col-sm-2 control-label" for="street1">
		<g:message code="store.street1.label" default="Street1" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="street1" required="" value="${storeInstance?.street1}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'street2', 'error')} ">
	<label class="col-sm-2 control-label" for="street2">
		<g:message code="store.street2.label" default="Street2" />
		
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="street2" value="${storeInstance?.street2}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'city', 'error')} required">
	<label class="col-sm-2 control-label" for="city">
		<g:message code="store.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="city" required="" value="${storeInstance?.city}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'zipCode', 'error')} required">
	<label class="col-sm-2 control-label" for="zipCode">
		<g:message code="store.zipCode.label" default="Zip Code" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="zipCode" maxlength="5" required="" value="${storeInstance?.zipCode}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'country', 'error')} required">
	<label class="col-sm-2 control-label" for="country">
		<g:message code="store.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="country" required="" value="${storeInstance?.country}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'longitude', 'error')} required">
	<label class="col-sm-2 control-label" for="longitude">
		<g:message code="store.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="longitude" required="" value="${storeInstance?.longitude}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'latitude', 'error')} required">
	<label class="col-sm-2 control-label" for="latitude">
		<g:message code="store.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="latitude" required="" value="${storeInstance?.latitude}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'website', 'error')} ">
	<label class="col-sm-2 control-label" for="website">
		<g:message code="store.website.label" default="Website" />
		
	</label>
    <div class="col-sm-10">
        <g:field type="url" class="form-control" name="website" value="${storeInstance?.website}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'products', 'error')} ">
	<label class="col-sm-2 control-label" for="products">
		<g:message code="store.products.label" default="Products" />
		
	</label>
    <div class="col-sm-10">
        

    </div>
</div>

