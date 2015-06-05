<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="enterCard" method="post" name="enterCardForm">
	<div class="form-group">
		<label for="inputCardNumber" class="control-label">Enter your Card Number and press "Enter"</label>
		<input type="text" class="form-control" placeholder="Enter Card Number" maxlength="10" id="inputCardNumber" name="cardNo" required>
		<p>Just only 10 numbers</p> 
		<p id="showError" style="color: red; font-weight: bold;">This card does not exist!</p>
	</div>
</s:form>

<script type="text/javascript">
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
			alert(cardNo);
	        if (isValidCardNumber(cardNo) === false) {
	            $("#showError").text("Invalid Card Number!");
	        }
	        else {
	        	alert('Submit form');
	            document.forms['form'].submit();
	        }
	    });
	});
</script>