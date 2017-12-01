<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Support</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link rel="stylesheet" href="resources/css/bootstrap.css"/>
    <link rel="stylesheet" href="style.css">
    <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <script>
        function confirmInput() {
            name = document.forms[0].name.value;
            alert("Hello " + name + "! Request sent, if you want, you can send another request! Wait for feedback ");
        }

        function myFunction() {
            var x = document.getElementById("mySelect").value;
            document.getElementById("demo").innerHTML = "You selected: " + x;
        }

        function checkEmail() {
            email = document.getElementById("email").value;
            filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if (filter.test(email)) {
                document.getElementById("email").style.border = "none";
                document.getElementById("output").innerHTML = "Correct Email";
                document.getElementById("output").style.color="green";
                $(document).ready(function(){
                    $("#output").ready (function(){
                        $("#output").fadeOut(5000);
                    });
                });
                return true;
            }
            else {
                document.getElementById("email").style.border = "3px solid red";
                document.getElementById("output").innerHTML = "Incorrect Email"
                document.getElementById("output").style.color="red";

                return false;
            }
        }



    </script>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">--%>
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">--%>
    <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>--%>
</head>
<body>
<div align="center">
    <img src="resources/image/Support.jpg" align="center">
</div>
<div>
    <H2 style="color: #2e6da4">
        <p style="padding-left: 100px">Hello, friend!</p>
        <p style="padding-left: 100px; padding-right: 30px"> If you want to help us make our products and services
            better, u can fill this form and send your info to our specialists!
        </p>
    </H2>
</div>
<div class="container">
    <div class="row main">
        <div class="main-login main-center">
            <form onsubmit="confirmInput()"
                  action="https://webto.salesforce.com/servlet/servlet.WebToCase?encoding=UTF-8" method="POST">
                <input type=hidden name="orgid" value="00D7F000003Et27">
                <%--<input type=hidden name="retURL" value="//">--%>
                <div class="form-group ">
                    <label for="name" class="cols-sm-2 control-label">Contact Name</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <input class="form-control" id="name" maxlength="80" name="name" size="20" type="text"
                                   required placeholder="Example: Ivanova Maria"/><br>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Email</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                            <input onchange="checkEmail()" class="form-control" id="email" maxlength="80" name="email"
                                   size="20" type="text"
                                   required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
                                   placeholder="Example: example@epam.com"/><br>
                        </div>
                        <span id="output"></span>
                    </div>
                </div>
        </div>
        <div class="form-group">
            <label for="phone" class="cols-sm-2 control-label">Phone</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                    <input class="form-control" id="phone" maxlength="40" name="phone" size="20"
                           type="text" placeholder="Exaple: +37529-6025533"/><br>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="subject" class="cols-sm-2 control-label">Subject</label>
            <div class="cols-sm-10">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                    <input class="form-control" id="subject" maxlength="80" name="subject" size="20" type="text"
                           required placeholder="Example: problem with TV "/><br>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label for="description" class="cols-sm-2 control-label">Description</label>
            <div class="cols-sm-10">
                <div class="input-group">
                            <span class="input-group-addon"><i class="	fa fa-commenting-o"
                                                               aria-hidden="true"></i></span>
                    <textarea class="form-control" name="description" required
                              placeholder="Example: Problem with my TV. Bed quality of loud. Model Sumsung g220."></textarea><br>
                </div>
            </div>
        </div>
        <input type="submit" name="submit" align="center" class="btn btn-primary btn-lg active">
        </form>
    </div>
</div>
</div>
<H3 style="color: red">
    <p style="padding-left: 100px; padding-right: 30px">
        If you click the button and wont get info about success sending form to the support, please send info to email
        below with your information!
    <p style="padding-left: 100px; padding-right: 30px; ">
        supportproduct@z-1oe9aj9rdb02xzujzwq5xadhz3o6eylv6pk7fedzhdqcxmi4eh.7f-3et27uac.ap5.case.salesforce.com</p>
</h3>
<script src="resources/js/helper.js"/>
</body>
</html>