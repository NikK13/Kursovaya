<#macro login path>
<form action="${path}" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <br><br><br><br><br>
    <div><label>Имя</label></div>
    <input type="text" name="username"/>
    <br>
    <div><label>Пароль</label></div>
    <input type="password" name="password"/>
    <br><br><br>
    <div><input type="submit" value="Вход"/></div>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Выйти из системы"/>
</form>
</#macro>

<#macro goToLink link msg>
<form action="${link}">
    <input type="submit" value="${msg}"/>
</form>
</#macro>