<#include "security.ftl">
<#import "login.ftl" as l>
<div class="container">
    <nav class="navbar navbar-expand-lg fixed-top  navbar-dark bg-dark " style="background: #1B1D28">
        <a class="navbar-brand" href="/">Gym</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="navbar-nav mr-auto">
                <a class="nav-item nav-link" href="/subscriptions">Абонементы</a>
                <a class="nav-item nav-link" href="/contacts">Контакты</a>
                <a class="nav-item nav-link" href="/lobby">Личный кабинет</a>
            </div>
            <#if name?has_content>
                <div class="navbar-text mr-3">${name}</div>
                <@l.logout/>
            </#if>
        </div>
    </nav>
</div>