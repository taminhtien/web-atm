<%@ taglib prefix="s" uri="/struts-tags"%>

<form action="enterCard" method="get" name="enterCardForm">
	<div class="form-group">
		<label for="inputCardNumber" class="control-label">Enter your Card Number and press "Enter"</label>
		<input type="text" class="form-control" placeholder="Enter Card Number" maxlength="10" id="inputCardNumber" name="cardNumber" required>
		<p>Just only 10 numbers</p> 
		<p id="showError" style="color: red; font-weight: bold;"></p>
	</div>
</form>