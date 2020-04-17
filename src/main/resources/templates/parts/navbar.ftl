<#include "security.ftl">
<#import "login.ftl" as l>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand"
       <#if isDispatcher>href="/dispatcher"</#if>
            <#if isForeman>href="/foreman"</#if>
            <#if isTech>href="/tech"</#if>
    >Gym</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <#if isDispatcher>
                <li class="nav-item">
                    <a class="nav-link" href="/selling-plan">План продаж</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/orders">Заказы</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/documentation">Документация</a>
                </li>
            </#if>
            <#if isForeman>
                <li class="nav-item">
                    <a class="nav-link" href="/orders-movement">Движение заказов</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/components">Комплектующие</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/transfer">Перенос</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/in-workshop">В цеху</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/documentation">Документация</a>
                </li>
            </#if>
            <#if isTech>
                <li class="nav-item">
                    | Панель техонолога
                </li>
            </#if>

        </ul>

        <#if name?has_content>
            <div class="navbar-text mr-3">${name}</div>
            <@l.logout/>
        </#if>
    </div>
</nav>