var cardNo = "";
function inputdata(key) {
	var cardLength = cardNo.length;
	if (cardLength < 10) {
		var val = key.value;
		cardNo = $('#cardNo').val() + val;
		$("#cardNo").val(cardNo);
	}
}

function isValidCardNumber(cardNo) {
    var isValid = false;
    var regex = /^([0-9]{10})$/;
    if (regex.test(cardNo)) {
        isValid = true;
    }
    return isValid;
}

$(document).ready(function() {
	$('#key-clear').click(function() {
		cardNo = "";
		$("#cardNo").val(cardNo);
	});
	
	$('#key-enter').click(function() {
		cardNo = $('#cardNo').val();
        if (isValidCardNumber(cardNo) === false) {
            $("#showError").text("Invalid Card Number!");
        }
        else {
            document.forms['form'].submit();
        }
    });
});