if(localStorage){
    $(document).ready(function(){
        $(".save").click(function(){
            // Get input name
            var str_carmake = $("#listBox").val();
            var str_carmodel = $("#secondlist").val();
            var str_exshowroomprice = $("#exshowroomprice").val();
            var str_user = $("#user").val();
            var str_age = $("#age").val();
           var str_gender = $("#gender").val();
           /*  var str_gender  =request.getParameter("gender");
           if (document.getElementById('male').checked) {
            var	str_gender = document.getElementById('male').value;
            	}
            if (document.getElementById('female').checked) {
            	var str_gender = document.getElementById('female').value;
            	}
            if (document.getElementById('other').checked) {
            	var str_gender = document.getElementById('other').value;
            	}*/
            var str_employmenttype = $("#employmenttype").val();
            var str_yearlysalary = $("#yearlysalary").val();
            var str_existingemi = $("#existingemi").val();
            var str_mobile = $("#mobile").val();
            var str_email = $("#email").val();

            var str_yearlyemi= +str_existingemi * 12;
            var str_loan = (+str_yearlysalary - str_yearlyemi)*4 ; 
            var str_eligibleloan = Math.min(str_loan, str_exshowroomprice);

            // Store data
            sessionStorage.setItem("store_carmake", str_carmake);
            sessionStorage.setItem("store_carmodel", str_carmodel);
            sessionStorage.setItem("store_exshowroomprice", str_exshowroomprice );
            sessionStorage.setItem("store_user", str_user);
            sessionStorage.setItem("store_age", str_age);
            sessionStorage.setItem("store_gender", str_gender );
            sessionStorage.setItem("store_employmenttype", str_employmenttype);
            sessionStorage.setItem("store_yearlysalary", str_yearlysalary );
            sessionStorage.setItem("store_existingemi", str_existingemi);
            sessionStorage.setItem("store_mobile", str_mobile);
            sessionStorage.setItem("store_email", str_email);
            sessionStorage.setItem("store_appliedloan", str_exshowroomprice);
            sessionStorage.setItem("store_eligibleloan", str_eligibleloan);
				
            
        });
    });
} 
else{
    alert("Sorry, your browser do not support local storage.");
}