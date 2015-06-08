<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="changePin" method="get" name="form">
	<div class="form-group"> 
		<label for="oldPin" class="control-label">Enter your old PIN</label>
		<input type="text" class="form-control" placeholder="Enter your old PIN" maxlength="4" id="oldPin" name="oldPin" required>
		<label for="newPin" class="control-label">Enter new PIN</label>
		<input type="text" class="form-control" placeholder="Enter new PIN" maxlength="4" id="newPin" name="newPin" required>
		<label for="reNewPin" class="control-label">Re-enter new PIN</label>
		<input type="text" class="form-control" placeholder="Re-enter new PIN" maxlength="4" id="reNewPin" name="reNewPin" required>
		<p id="showError" class="text-failure"></p>
	</div>
</s:form>