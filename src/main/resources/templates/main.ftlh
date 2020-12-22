<#import "parts/page.ftlh" as p>
<#import "parts/login.ftlh" as l>
<@p.page>

<br><br>

<!-- -------------------- User data -------------------- -->
<#if user??>
<h3> Ваши данные:</h3>

<table>
    <thead>
    <tr>
        <th>Имя</th>
        <th>Роль</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${user.username}</td>
        <td><#list user.roles as role> ${role}<#sep>, </#list></td>
    </tr>
    </tbody>
</table>
<#else>
</#if>

<br><br>



<#if user??>
    <@l.logout />
<#else>
    <div class="center">
    <@l.goToLink "/login" "Вход в систему"/>
    <br>
    <@l.goToLink "/registration" "Регистрация"/>
    <br>
    </div>
</#if>

<br><br>



<#if user??>
<#if user.roles?seq_contains("ADMIN")>
<div>
<button type="submit" onclick=" window.open('/h2','_blank')">Управление Базой Данных</button>
<@l.goToLink "/userList" "Список пользователей"/>
</div>
</#if>
</#if>


<#if user??>
<#if user.roles?seq_contains("ADMIN") || user.roles?seq_contains("USER")>

<!-- -------------------- Stavki section -------------------- -->
<br>
<br>


<#if user??><#if user.roles?seq_contains("ADMIN")>
<H3>Ставки по кредитам:</H3>
<table id='table1' style="text-align:center;">
</table>
</#if></#if>

<!-- -------------------- Bank section -------------------- -->
<br>
<br>

<H3>Банки:</H3>

<table style="text-align:center;">
    <tr>
        <th>ID</th>
        <th>Название</th>
    </tr>
    <#list bank as bank>
    <tr>
        <td><b>${bank.id}</b></td>
        <td><b>${bank.name}</b></td>
    </tr>
</#list>
</table>


<!-- -------------------- Currency section -------------------- -->
<br><br>


<H3>Список валют:</H3>

<table style="text-align:center;">
    <tr>
        <th>ID</th>
        <th>Название</th>
    </tr>
    <#list currency as c>
        <tr>
            <td><b>${c.id}</b></td>
            <td><b>${c.currency}</b></td>
        </tr>
    <#else>
    Коллекция пуста
    </#list>
</table>

 <!-- -------------------- Client section -------------------- -->
<br>
<br>

<#if user??><#if user.roles?seq_contains("ADMIN")>
<H3>Список клиентов:</H3>
<table style="text-align:center;">
    <tr>
        <th>ID</th>
        <th>ФИО</th>
    </tr>
    <#list client as c>
        <tr>
            <td><b>${c.id}</b></td>
            <td><b>${c.name}</b></td>
        </tr>
    </#list>
</table>
</#if></#if>


<!-- -------------------- Credits section -------------------- -->
<br>
<br>

<#if user??><#if user.roles?seq_contains("ADMIN")>
<H3>Кредиты:</H3>
<table style="text-align:center;">
    <tr>
        <th>ID клиента</th>
        <th>ID ставки</th>
        <th>Сумма</th>
    </tr>
    <#list credit as c>
        <tr>
            <td><b>${c.client_id}</b></td>
            <td><span>${c.stavka_id}</span></td>
            <td><b>${c.summa}</b></td>
        </tr>
    </#list>
</table>
</#if></#if>


<br><br>
</#if>
</#if>


</@p.page>