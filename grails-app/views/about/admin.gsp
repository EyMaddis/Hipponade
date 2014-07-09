<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
<div class="schnack container">
    <sec:ifNotLoggedIn>
        <div class="alert alert-danger">
            <p>
                Das darf eigentlich keiner sehen! Schnell die conf für die Spring Security korrigieren.
            </p>
            <div class="btn btn-default">
                <g:navigationLink controller="login" action="auth" linkOnly="true">Log In</g:navigationLink>
            </div>
        </div>
    </sec:ifNotLoggedIn>
    <sec:ifLoggedIn>
        <div id="controller-list" role="navigation">
            <h2>Übersicht:</h2>
            <ul>
                <li><g:link controller="event" action="index">Event Controller</g:link> </li>
                <li><g:link controller="image" action="index">Image Controller</g:link> </li>
                <li><g:link controller="ingredient" action="index">Ingredient Controller</g:link> </li>
                <li><g:link controller="news" action="index">News Controller</g:link> </li>
                <li><g:link controller="nutritionFact" action="index">NutritionFact Controller</g:link> </li>
                <li><g:link controller="product" action="index">Product Controller</g:link> </li>
                <li><g:link controller="recipe" action="index">Recipe Controller</g:link> </li>
                <li><g:link controller="recipeIngredient" action="index">RecipeIngredient Controller</g:link> </li>
                <li><g:link controller="store" action="index">Store Controller</g:link> </li>
                <li><g:link controller="tag" action="index">Tag Controller</g:link> </li>
                <li><g:link controller="user" action="index">User Controller</g:link> </li>


            </ul>
        </div>
        <div class="btn btn-default"><g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()">Logout</g:remoteLink></div>
    </sec:ifLoggedIn>
</div>
</body>
</html>