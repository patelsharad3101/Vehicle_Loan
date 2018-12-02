$(document).ready(function() {
    var sds = document.getElementById("dum");
    if(sds == null){
        alert("You are using a free package.\n You are not allowed to remove the tag.\n");
        $("#selection").hide();
    }
    var sdss = document.getElementById("dumdiv");
    if(sdss == null){
        alert("You are using a free package.\n You are not allowed to remove the tag.\n");
        $("#selection").hide();
    }
})

var handles = ["SELECT MAKE","Tesla","Honda","Hyundai","Maruti Suzuki","BMW"];

$(function() {
  var options = '';
  for (var i = 0; i < handles.length; i++) {
      options += '<option value="' + handles[i] + '">' + handles[i] + '</option>';
  }
  $('#listBox').html(options);
});
function selct_car($val)
{
    if($val=='SELECT MAKE') {
   var options = '';
  $('#secondlist').html(options);
  }
 if($val=='Tesla') {
   var Tes = ["rebellion787","LA-Fohlen","Xerogas","ST70","Model Y","Tesla Semi","2020 Roadster","Model 3","Model X","Model S"];
   $(function() {
  var options = '';
  for (var i = 0; i < Tes.length; i++) {
      options += '<option value="' + Tes[i] + '">' + Tes[i] + '</option>';
  }
  $('#secondlist').html(options);
  });
  }
  
  if ($val=='Honda') {
    var hon = ["Civic","Honda Fit","Accord","Honda CR-V","Odyssey","Pilot","Airware","T360","Insight","Mobilio"];
   $(function() {
  var options = '';
  for (var i = 0; i < hon.length; i++) {
      options += '<option value="' + hon[i] + '">' + hon[i] + '</option>';
  }
  $('#secondlist').html(options);
  });
  }
  
  if ($val=='Hyundai') {
    var hyun = ["Atos","Elite i20","Creta","Verna","i10","Xcent","Santro","i20 Active","Eon","Grand i10"];
   $(function() {
  var options = '';
  for (var i = 0; i < hyun.length; i++) {
      options += '<option value="' + hyun[i] + '">' + hyun[i] + '</option>';
  }
  $('#secondlist').html(options);
  });
  }
  
  if ($val=='Maruti Suzuki') {
    var mar = ["Ertiga","Celerio","Alto","800","Wagon R","Ciaz","SX4","Alpha","Zen","Gypsy"];
   $(function() {
  var options = '';
  for (var i = 0; i < mar.length; i++) {
      options += '<option value="' + mar[i] + '">' + mar[i] + '</option>';
  }
  $('#secondlist').html(options);
  });
  }
  
  if ($val=='BMW') {
    var bmw = ["BMW X1","BMW i8","BMW 3","BMW 7","BMW X5","BMW 3 Series","BMW M2","BMW 6 Series","BMW X3","BMW 5 Series"];
   $(function() {
  var options = '';
  for (var i = 0; i < bmw.length; i++) {
      options += '<option value="' + bmw[i] + '">' + bmw[i] + '</option>';
  }
  $('#secondlist').html(options);
  });
  }
  
  
  
}