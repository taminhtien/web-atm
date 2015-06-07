<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="enterCard" method="post" name="form">
	<div class="form-group">
		<label for="cardNo" class="control-label">Enter your Card Number and press "Enter"</label>
		<input type="text" class="form-control" placeholder="Enter Card Number" maxlength="10" id="cardNo" name="cardNo" required>
		<p>Just only 10 numbers</p> 
		<p id="showError" class="text-failure"></p>
	</div>
</s:form>