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
    var regex = /^([0-9]{6})$/;
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
	
	$("#key-enter").click(function() {
		inputCardNum = $('#inputCardNumber').val();
		alert(inputCardNum);
        document.forms['enterCardForm'].submit();
    });
});
