var pinNo = "";
function inputdata(key) {
	var pinLength = pinNo.length;
	if (pinLength < 4) {
		var val = key.value;
		pinNo = $('#pinNo').val() + val;
		$("#pinNo").val(pinNo);
	}
}

function isValidPinNumber(pinNo) {
    var isValid = false;
    var regex = /^([0-9]{4})$/;
    if (regex.test(pinNo)) {
        isValid = true;
    }
    return isValid;
}

$(document).ready(function() {
	$('#key-clear').click(function() {
		pinNo = "";
		$("#pinNo").val(pinNo);
	});
	
	$('#key-enter').click(function() {
		pinNo = $('#pinNo').val();
        if (isValidPinNumber(pinNo) === false) {
            $("#showError").text("Invalid Pin Number!");
        }
        else {
            document.forms['form'].submit();
        }
    });
});