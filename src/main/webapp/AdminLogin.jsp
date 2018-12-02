<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin Login</title>

        <!-- Bootstrap Core CSS -->
        <link href="admincss/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="admincss/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="admincss/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="admincss/font-awesome.min.css" rel="stylesheet" type="text/css">
<style>
.capbox {
    
    
    border-width: 0px 12px 0px 0px;
    display: inline-block;
    *display: inline; zoom: 1; /* FOR IE7-8 */
    padding: 8px 40px 8px 8px;
    }

.capbox-inner {
    font: bold 11px arial, sans-serif;
    
    
    margin: 5px auto 0px auto;
    padding: 3px;
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    }

#CaptchaDiv {
    font: bold 17px verdana, arial, sans-serif;
    font-style: italic;
    
    
    padding: 4px;
    -moz-border-radius: 4px;
    -webkit-border-radius: 4px;
    border-radius: 4px;
    }

#CaptchaInput { margin: 1px 0px 1px 0px; width: 135px; }
#h {
    width: 300px;
    border: 2px solid Black;
    padding: 25px;
    margin: 25px;
}

</style>
       <script type="text/javascript">
           
function checkforminput(){
var form1 = document.getElementById('adminform');
var admeml = "admin@gmail.com";
var admpas = "admin123";
if(form1.adminemail.value != admeml)
{
    alert ("Wrong Admin Email Id.")
    form1.adminemail.focus();
    return false;
}
if(form1.adminpassword.value != admpas)
{
    alert ("Wrong Admin Paasword.")
    form1.adminpassword.focus();
    return false;
}
return true;
}



       </script>


    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Admin Login</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" name="formadmin" action="AdminDashboard.jsp" id="adminform" method="post" onsubmit="return checkform(this);">
                                <fieldset>
                                    <div class="form-group">
                                                                            <label><i class="fa fa-envelope" aria-hidden="true"></i> E-mail</label>
                                        <input class="form-control" placeholder="E-mail" name="adminemail" type="email"  autofocus oninvalid="this.setCustomValidity('Email Can Not be Empty')">
                                    </div>
                                    <div class="form-group">
                                    <label><i class="fa fa-key" aria-hidden="true"></i> Password</label>
                                        <input class="form-control" placeholder="Password" name="adminpassword" type="password" oninvalid="this.setCustomValidity('Password Can Not be Empty')">
                                    </div>
                                    <div class="capbox">

<div id="CaptchaDiv"></div>

<div class="capbox-inner">

Type the above number:<br>

<input type="hidden" id="txtCaptcha">

<div class="form-group">
                                        <input class="form-control" placeholder="Enter Captcha" name="CaptchaInput" id="CaptchaInput" size="15"  autofocus oninvalid="this.setCustomValidity('Captcha Can Not be Empty')">
                                    </div>

</div>
</div>
<br><br>
                                    <!-- Change this to a button or input when using this as a form -->
                                    <input type="submit" value="Login" class="btn btn-lg btn-success btn-block"onClick=" return checkforminput();"> </input>

                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        
        
        <script type="text/javascript">

// Captcha Script

function checkform(theform){
var why = "";

if(theform.CaptchaInput.value == ""){
why += "- Please Enter CAPTCHA Code.\n";
}
if(theform.CaptchaInput.value != ""){
if(ValidCaptcha(theform.CaptchaInput.value) == false){
why += "- The CAPTCHA Code Does Not Match.\n";
}
}
if(why != ""){
alert(why);
return false;
}
}

var a = Math.ceil(Math.random() * 9)+ '';
var b = Math.ceil(Math.random() * 9)+ '';
var c = Math.ceil(Math.random() * 9)+ '';
var d = Math.ceil(Math.random() * 9)+ '';
var e = Math.ceil(Math.random() * 9)+ '';

var code = a + b + c + d + e;
document.getElementById("txtCaptcha").value = code;
document.getElementById("CaptchaDiv").innerHTML = code;

// Validate input against the generated number
function ValidCaptcha(){
var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
var str2 = removeSpaces(document.getElementById('CaptchaInput').value);
if (str1 == str2){
return true;
}else{
return false;
}
}

// Remove the spaces from the entered and generated code
function removeSpaces(string){
return string.split(' ').join('');
}
</script>

    </body>
</html>
