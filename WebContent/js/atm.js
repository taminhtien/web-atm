var inputCardNum = "";

function inputdata(key) {
	var n = inputCardNum.length;
	if (n < 10) {
		var val = key.value;
		inputCardNum = $('#inputCardNumber').val() + val;
		$("#inputCardNumber").val(inputCardNum);
	}

}

function isValidCardNumber(cardNumber) {
    var isValid = false;
    var regex = /^([0-9]{10})$/;
    if (regex.test(cardNumber)) {
        isValid = true;
    }
    return isValid;
}

$(document).ready(function() {
	$('#key-clear').click(function() {
		inputCardNum = "";
		$("#inputCardNumber").val(inputCardNum);
	});
	/*
	var validator = $("#enter-card").BootstrapValidator ({
		fields: {
			inputCardNumber: {
				messages: "Card Number is required",
				validators: {
					notEmpty: {
						message: "Please provide a Card Number"
					}
				}
			}
		}
	});*/
	
	$('#key-enter').click(function() {
		inputCardNum = $('#inputCardNumber').val();
        if (isValidCardNumber(inputCardNum) === false) {
            $("#showError").text("Invalid Card Number!");
        }
        else {
            document.forms['enterCardForm'].submit();
        }
		alert(inputCardNum);
    });
});
