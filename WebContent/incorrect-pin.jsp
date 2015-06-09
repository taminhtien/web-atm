<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="enterPin" method="get" name="form">
	<div class="form-group">
		<label for="pinNo" class="control-label">Please enter your PIN and press "Enter"</label>
		<input type="text" class="form-control" placeholder="Enter Pin Number" maxlength="4" id="pinNo" name="pinNo" required>
		<p>Only 4 numbers</p> 
		<p id="showError" class="text-failure">This Pin number is not correct!</p>
	</div>
</s:form>