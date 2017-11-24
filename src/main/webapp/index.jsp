<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>JS Bin</title>
</head>

<script>
    function confirmInput() {
        name = document.forms[0].name.value;
        alert("Hello " + name + "Запрос отправлен, при желании можете отправть еще один запрос! Ждите обратной связи");
    }
</script>

<body>


<form onsubmit="confirmInput()" action="https://webto.salesforce.com/servlet/servlet.WebToCase?encoding=UTF-8" method="POST">

    <input type=hidden name="orgid" value="00D7F000003Et27">
    <%--<input type=hidden name="retURL" value="//">--%>


    <label for="name">Contact Name</label><input id="name" maxlength="80" name="name" size="20" type="text"/><br>

    <label for="email">Email</label><input id="email" maxlength="80" name="email" size="20" type="text"/><br>

    <label for="phone">Phone</label><input id="phone" maxlength="40" name="phone" size="20" type="text"/><br>

    <label for="subject">Subject</label><input id="subject" maxlength="80" name="subject" size="20" type="text"/><br>

    <label for="description">Description</label><textarea name="description"></textarea><br>

    <input type="submit" name="submit">


</form>


</body>
</html>