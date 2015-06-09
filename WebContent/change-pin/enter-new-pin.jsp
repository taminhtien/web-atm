<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="change-pin-new-pin" method="post" name="form">
	<div class="form-group"> 
		<label for="pinNo" class="control-label">Enter your new PIN</label>
		<input type="text" class="form-control" placeholder="Enter your new PIN" maxlength="4" id="pinNo" name="newPin" required>
		<p>Only 4 numbers</p>
		<p id="showError" class="text-failure"></p>
	</div>
</s:form>