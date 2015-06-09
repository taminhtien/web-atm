var amount = "";
function inputdata(key) {
	var pinLength = amount.length;
	var val = key.value;
	amount = $('#amount').val() + val;
	$("#amount").val(amount);
}

function isValidAmount(amount) {
    var isValid = false;
    var regex = /^([0-9])$/;
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
        if (isValidPAmount(amount) === false) {
            $("#showError").text("Invalid amount!");
        }
        else {
            document.forms['form'].submit();
        }
    });
});