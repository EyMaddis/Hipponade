<%@ page import="hipponade.Store" %>


<div class="col-md-8">
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
            <g:field name="zipCode" type="number" class="form-control" value="${storeInstance.zipCode}" required=""/>

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
            <g:field name="longitude" class="form-control" value="${fieldValue(bean: storeInstance, field: 'longitude')}" required=""/>

        </div>
    </div>

    <div class="form-group fieldcontain ${hasErrors(bean: storeInstance, field: 'latitude', 'error')} required">
        <label class="col-sm-2 control-label" for="latitude">
            <g:message code="store.latitude.label" default="Latitude" />
            <span class="required-indicator">*</span>
        </label>
        <div class="col-sm-10">
            <g:field name="latitude" class="form-control" value="${fieldValue(bean: storeInstance, field: 'latitude')}" required=""/>

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
</div>
<div class="col-md-4">
    <p>
        <button class="btn btn-default" id="findLocation">Adresse suchen</button>
    </p>
    <div id="map-canvas" style="width:100%; height: 250px"></div>
</div>
<asset:javascript src="storeSelection" />
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
