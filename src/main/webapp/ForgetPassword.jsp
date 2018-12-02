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

        <title>Forget Password</title>

        <!-- Bootstrap Core CSS -->
        <link href="admincss/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="admincss/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="admincss/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="admincss/font-awesome.min.css" rel="stylesheet" type="text/css">

  
    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-user" aria-hidden="true"></i> Forget Password</h3>
                        </div>
                        <div class="panel-body">
                             <form role="form" name="forgetpassword" action="forgetpassword" id="forgetpassword" method="post" onsubmit="return checkform(this);">
                                <fieldset>
                                   
                                  
                                                                   

<div >

 <div class="form-group"><div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                        <label><i class="fa fa-envelope" aria-hidden="true"></i> E-mail</label>
                                        <input class="form-control" placeholder="E-mail" name="email" type="text"  autofocus oninvalid=('Email Can Not be Empty')"  pattern="[a-zA-Z]{1}[a-zA-Z0-9._%+-]+@[a-z.-]+\.[a-z]{2,3}$" required><br>
                                  </div> 
                                    </div>
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
                                    
                                    <div class="text-center p-t-45 p-b-4">
                      

                                    <input type="submit" value="Submit" class="btn btn-lg btn-success btn-block"onClick=" return checkforminput();"> </input> <!-- Change this to a button or input when using this as a form -->
                          
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

       

    </body>
      <script type="text/javascript">

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

</html>
