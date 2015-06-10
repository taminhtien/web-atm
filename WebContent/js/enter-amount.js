var amount = "";
function inputdata(key) {
	var amountLength = amount.length;
	if (amountLength < 7) {
		var val = key.value;
		amount = $('#amount').val() + val;
		$("#amount").val(amount);
	}
}

function isValidAmount(amount) {
    var isValid = false;
    var regex = /^([0-9]{7})$/;
    if (regex.test(amount)) {
        isValid = true;
    }
    return isValid;
}

$(document).ready(function() {
	$('#key-clear').click(function() {
		amount = "";
		$("#amount").val(amount);
	});
	
	$('#key-enter').click(function() {
		amount = $('#amount').val();
        if (isValidAmount(amount) === false) {
            $("#showError").text("Invalid Amount!");
        }
        else {
            document.forms['form'].submit();
        }
    });
});