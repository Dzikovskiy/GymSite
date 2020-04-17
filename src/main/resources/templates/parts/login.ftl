<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row justify-content-md-center">
            <label class="col-sm-2 col-form-label"> Логин : </label>
            <div class="col-sm-3">
                <input class="form-control" type="text" name="username" placeholder="Логин"/>
            </div>
        </div>
        <div class="form-group row justify-content-md-center">
            <label class="col-sm-2 col-form-label"> Пароль: </label>
            <div class="col-sm-3">
                <input class="form-control" type="password" name="password" placeholder="Пароль"/>
            </div>
        </div>
        <#if isRegisterForm>
            <div class="row justify-content-md-center">
                <div class="col-sm-2">Ваша роль:</div>
                <div class="col-sm-3">
                    <select name="role" id="roles" class="custom-select">
                        <option selected>Выберите роль</option>
                        <option value="TECH">Технолог</option>
                        <option value="FOREMAN">Мастер цеха</option>
                        <option value="DISPATCHER">Диспетчер</option>
                    </select>
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <div class="row justify-content-md-center">
            <div class="col-sm-2"><#if !isRegisterForm><a href="/registration">Создать аккаунт</a></#if></div>
            <div class="col-sm-3">
                <button type="submit"
                        class="btn btn-primary "><#if isRegisterForm>Зарегистрироваться<#else>Войти</#if></button>
            </div>
        </div>
    </form>
</#macro>
<#macro logout>

    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Выйти</button>
    </form>

</#macro>