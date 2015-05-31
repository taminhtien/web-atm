var pinEntering = "";

function inputdata(key)
{

    var val = key.value;
    pinEntering = $('#pinNumber').val() + val;
    $("#pinNumber").val(pinEntering);
   
}

$(document).ready(function(){
    $('#key-clear').click(function(){
    	pinEntering = "";
    $("#pinNumber").val(pinEntering);
});
});
   