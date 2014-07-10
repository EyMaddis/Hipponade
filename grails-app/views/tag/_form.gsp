<%@ page import="hipponade.Tag" %>



<div class="form-group fieldcontain ${hasErrors(bean: tagInstance, field: 'label', 'error')} required">
	<label class="col-sm-2 control-label" for="label">
		<g:message code="tag.label.label" default="Label" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="label" maxlength="20" required="" value="${tagInstance?.label}"/>

    </div>
</div>

