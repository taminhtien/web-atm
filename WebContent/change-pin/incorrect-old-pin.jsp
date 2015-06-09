<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="change-pin-old-pin" method="post" name="form">
	<div class="form-group"> 
		<label for="pinNo" class="control-label">Enter your old PIN</label>
		<input type="text" class="form-control" placeholder="Enter your old PIN" maxlength="4" id="pinNo" name="oldPin" required>
		<p>Only 4 numbers</p>
		<p id="showError" class="text-failure">This Pin number is not correct!</p>
	</div>
</s:form>