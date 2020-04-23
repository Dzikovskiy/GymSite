<#import "parts/common.ftl" as c>
<#import "parts/footer.ftl" as f>
<#include "parts/security.ftl">
<@c.page>
    <!--Lobby-->
    <div class="container-fluid mt-5 mb-5 pb-3 pt-5 ">
        <div class="main-header mb-3 ml-3" style="color: #1B1D28">Личный кабинет
        </div>
    </div>
    <div class="container-fluid mb-5">
        <div class="row mt-5">
            <div class="col ml-5 pl-5">
                <ul class="list-unstyled">
                    <li>
                        <div class="login-header mb-3">Ваши активные абонементы:</div>
                    </li>
                </ul>
            </div>
        </div>

        <!--Subscription-->
        <div class="row mt-5">
            <div class="card-columns ">
                <div class="col ml-5 pl-5">
                    <#if isHaveSubscription>
                        <div class="card mt-3">
                            <input type="text" class="" id="id" name="id" value="${sub.id}" readonly hidden>
                            <img src="/static/img/subs.jpg" class="card-img-top" alt="">
                            <div class="card-body">
                                <form method="post" action="/getSubscription">
                                    <h5 class="card-title font-weight-bold">Абонемент на ${sub.days} дней</h5>
                                    <h1 class="display-1 text-center">${sub.price}р</h1>
                                    <p class="card-text ">
                                    <ul class="list-unstyled text-center mt-2">
                                        <li>ПОСЕЩЕНИЕ БЕЗ ОГРАНИЧЕНИЙ 24/7</li>
                                        <li>ФИЛЬТРОВАННАЯ ПИТЬЕВАЯ ВОДА</li>
                                        <li>БЕСПЛАТНЫЙ ДУШ</li>
                                    </ul>
                                    </p>
                                </form>
                            </div>
                            <div class="card-footer text-muted">
                               Дата конца вашего абонемента: ${user.getSubs_end_date()}
                            </div>
                        </div>
                    <#else>
                        Оформите свой абонемент
                        <a href="/subscriptions" class="btn btn-success ml-3 mt-3">Оформить</a>
                    </#if>
                </div>
            </div>
        </div>
    </div>

    <@f.footer/>
</@c.page>