<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = user.isAdmin()
    isHaveSubscription = user.isHaveSubscription()
    isHaveTrainer = user.isHaveTrainer()
    >
<#else>
    <#assign
    isHaveSubscription = false
    isHaveTrainer = false
    name = ""
    isAdmin = false
    >
</#if>