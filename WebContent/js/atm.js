var cardEntering = "";

function inputdata(key) {
	var n = cardEntering.length;
	if (n < 10) {
		var val = key.value;
		cardEntering = $('#cardNumber').val() + val;
		$("#cardNumber").val(cardEntering);
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
		cardEntering = "";
		$("#cardNumber").val(cardEntering);
	});
	
	$("#key-enter").click(function() {
        var cardNumberEntered;
        cardNumberEntered = $('#cardNumber').val();
        document.forms['enterCardForm'].submit();
    });
});
