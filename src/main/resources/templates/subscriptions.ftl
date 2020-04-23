<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/footer.ftl" as f>

<@c.page>
    <!--Reviews-->
    <div class="container my-5 pb-5">
        <div class="row mt-5">
            <div class="col mt-5 pt-3">
                <div class="main-header mb-5 pb-3">Варианты абонементов:</div>
            </div>
        </div>


        <#if isAdmin>
            <a class="btn btn-primary mb-3" data-toggle="collapse" href="#collapseAdd" role="button"
               aria-expanded="false"
               aria-controls="collapseAdd">
                Добавить абонемент
            </a>
            <div class="collapse my-2 " id="collapseAdd">
                <div class="card card-body">
                    <div class="form-group mt-3">
                        <form method="post" action="save" enctype="multipart/form-data">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"> Цена абонемента: </label>
                                <div class="col-sm-3">
                                    <input type="number" name="price" class="form-control "
                                           placeholder="Цена абонемента">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"> Количество дней: </label>
                                <div class="col-sm-3">
                                    <input type="number" name="days" class="form-control " placeholder="Кол-во дней">
                                </div>
                            </div>
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <div class="form-group row">
                                <div class="col-sm-2"></div>
                                <div class="col-sm-3">
                                    <button class="btn btn-primary " type="submit">Добавить</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </#if>

        <#if subscriptions?has_content>
            <div class="card-columns ">
                <#list subscriptions as sub>
                    <div class="card mt-3">
                        <img src="/static/img/subs.jpg" class="card-img-top" alt="">
                        <div class="card-body">
                            <form method="post" action="getSubscription">
                                <input type="text" id="id" name="id" value="${sub.id}" readonly hidden>
                                <h5 class="card-title font-weight-bold">Абонемент на ${sub.days} дней</h5>
                                <h1 class="display-1 text-center">${sub.price}р</h1>
                                <p class="card-text ">
                                <ul class="list-unstyled text-center mt-2">
                                    <li>ПОСЕЩЕНИЕ БЕЗ ОГРАНИЧЕНИЙ 24/7</li>
                                    <li>ФИЛЬТРОВАННАЯ ПИТЬЕВАЯ ВОДА</li>
                                    <li>БЕСПЛАТНЫЙ ДУШ</li>
                                </ul>
                                </p>
                                <#if name?has_content>
                                    <button type="submit" class="btn btn-primary">Оформить</button>
                                </#if>
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            </form>
                        </div>
                    </div>

                </#list>
            </div>
        <#else>
            <div class="  mt-4">Нету доступных абонементов</div>
        </#if>
    </div>

    <@f.footer/>
</@c.page>