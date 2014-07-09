<%@ page import="hipponade.News" %>



<div class="form-group fieldcontain ${hasErrors(bean: newsInstance, field: 'headline', 'error')} required">
	<label class="col-sm-2 control-label" for="headline">
		<g:message code="news.headline.label" default="Headline" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textField class="form-control" name="headline" maxlength="140" required="" value="${newsInstance?.headline}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: newsInstance, field: 'content', 'error')} required">
	<label class="col-sm-2 control-label" for="content">
		<g:message code="news.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:textArea class="form-control" name="content" cols="40" rows="5" maxlength="60000" required="" value="${newsInstance?.content}"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: newsInstance, field: 'date', 'error')} required">
	<label class="col-sm-2 control-label" for="date">
		<g:message code="news.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:datePicker name="date" precision="day"  value="${newsInstance?.date}"  />

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: newsInstance, field: 'author', 'error')} required">
	<label class="col-sm-2 control-label" for="author">
		<g:message code="news.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
    <div class="col-sm-10">
        <g:select id="author" name="author.id" from="${hipponade.User.list()}" optionKey="id" required="" value="${newsInstance?.author?.id}" class="many-to-one form-control"/>

    </div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: newsInstance, field: 'tags', 'error')} ">
	<label class="col-sm-2 control-label" for="tags">
		<g:message code="news.tags.label" default="Tags" />
		
	</label>
    <div class="col-sm-10">
        <g:select name="tags" from="${hipponade.Tag.list()}" multiple="multiple" optionKey="id" size="5" value="${newsInstance?.tags*.id}" class="many-to-many form-control"/>

    </div>
</div>

