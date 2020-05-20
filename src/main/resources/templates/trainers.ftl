<#import "parts/common.ftl" as c>
<#include "parts/security.ftl">
<#import "parts/footer.ftl" as f>

<@c.page>
    <!--Trainers-->
    <div class="container my-5 pb-5">
        <div class="row mt-5">
            <div class="col mt-5 pt-3">
                <div class="main-header mb-5 pb-3">Наши тренеры:</div>
            </div>
        </div>


        <#if isAdmin>
            <a class="btn btn-primary mb-3" data-toggle="collapse" href="#collapseAdd" role="button"
               aria-expanded="false"
               aria-controls="collapseAdd">
                Добавить тренера
            </a>
            <div class="collapse my-2 " id="collapseAdd">
                <div class="card card-body">
                    <div class="form-group mt-3">
                        <form method="post" action="saveTrainer" enctype="multipart/form-data">
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"> Имя тренера: </label>
                                <div class="col-sm-3">
                                    <input type="text" name="name" class="form-control "
                                           placeholder="Имя тренера">
                                </div>
                            </div>
                            <div class="form-group row ">
                                <label class="col-sm-2 col-form-label"> Описание тренера: </label>
                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <textarea name="description" class="form-control pb-5"
                                                  aria-label="Описание тренера"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-2 col-form-label"> Фото тренера: </label>
                                <div class="col-sm-3">
                                    <div class="input-group mb-3">
                                        <div class="custom-file">
                                            <input type="file" name="file" class="custom-file-input">
                                            <label class="custom-file-label" for="inputGroupFile03">Choose file</label>
                                        </div>
                                    </div>
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

    <div class="card-columns ">
        <div class="card mt-3">
            <img src="/static/img/trainer_4.jpg" class="card-img-top">
            <div class="card-body">
                <form method="post" action="getTrainer">
                    <input type="text" id="id" name="id" value="" readonly hidden>
                    <h5 class="card-title">Дуэйн</h5>
                    <p class="card-text mb-4">Имею большой опыт работы</p>
                    <button type="submit" class="btn btn-primary">Оформить персональные тренировки</button>
                    <input type="hidden" name="_csrf" value=""/>
                </form>
            </div>
        </div>
    </div>
        <#if trainers?has_content>
            <div class="card-columns ">

                <#list trainers as trainer>
                    <div class="card mt-3">
                        <#if trainer.filename?has_content>
                            <img src="/static/img/trainers/${trainer.filename}" class="card-img-top">
                        </#if>
                        <div class="card-body">
                            <form method="post" action="getTrainer">
                                <input type="text" id="id" name="id" value="${trainer.id}" readonly hidden>
                                <h5 class="card-title">${trainer.name}</h5>
                                <p class="card-text mb-4">${trainer.description}</p>
                                <#if name?has_content>
                                    <button type="submit" class="btn btn-primary">Оформить персональные тренировки
                                    </button>
                                </#if>
                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            </form>
                        </div>
                    </div>
                </#list>
            </div>
        <#else>
            <div class="  mt-4">Нету доступных тренеров</div>
        </#if>
    </div>

    <@f.footer/>
</@c.page>