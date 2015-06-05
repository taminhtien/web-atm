<%@ taglib prefix="s" uri="/struts-tags"%>

<form action="enterPin" method="post" name="form">
	<div class="form-group">
		<p>Hi ${card.getCustomer().getCustName()}!</p> 
		<label for="pinNo" class="control-label">Please enter your PIN and press "Enter"</label>
		<input type="text" class="form-control" placeholder="Enter Pin Number" maxlength="4" id="pinNo" name="pinNo" required>
		<p>Just only 4 numbers</p> 
		<p id="showError" style="color: red; font-weight: bold;"></p>
	</div>
</form>

<script type="text/javascript">
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
</script>	