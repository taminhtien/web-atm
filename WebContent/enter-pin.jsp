<%@ taglib prefix="s" uri="/struts-tags"%>

<form action="enterPin" method="post" name="enterPinForm">
	<div class="form-group">
		<p>Hi ${card.getCustomer().getCustName()}!</p> 
		<label for="inputPinNumber" class="control-label">Please enter your PIN and press "Enter"</label>
		<input type="text" class="form-control" placeholder="Enter Pin Number" maxlength="4" id="inputPinNumber" name="pinNumber" required>
		<p>Just only 4 numbers</p> 
		<p id="showError" style="color: red; font-weight: bold;"></p>
	</div>
</form>