<%@ page import="hipponade.Event" %>



<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="event.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="name" maxlength="140" required="" value="${eventInstance?.name}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} required">
	<label class="col-sm-2 control-label" for="description">
		<g:message code="event.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textArea class="form-control" name="description" rows="10" required="" >${eventInstance?.description}</g:textArea>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'location', 'error')} required">
	<label class="col-sm-2 control-label" for="location">
		<g:message code="event.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textArea class="form-control" name="location" cols="40" rows="5" required="" value="${eventInstance?.location}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'date', 'error')} required">
	<label class="col-sm-2 control-label" for="date">
		<g:message code="event.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:datePicker name="date" precision="day"  value="${eventInstance?.date}"  />

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'author', 'error')} required">
	<label class="col-sm-2 control-label" for="author">
		<g:message code="event.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="author" name="author.id" from="${hipponade.User.list()}" optionKey="id" required="" value="${eventInstance?.author?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'images', 'error')} ">
	<label class="col-sm-2 control-label" for="images">
		<g:message code="event.images.label" default="Images" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="images" from="${hipponade.Image.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.images*.id}" class="many-to-many form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: eventInstance, field: 'tags', 'error')} ">
	<label class="col-sm-2 control-label" for="tags">
		<g:message code="event.tags.label" default="Tags" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="tags" from="${hipponade.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${eventInstance?.tags*.id}" class="many-to-many form-control"/>

    </div>
</div>

