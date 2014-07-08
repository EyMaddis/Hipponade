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




