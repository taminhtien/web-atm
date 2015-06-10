<%@ taglib prefix="s" uri="/struts-tags"%>

<s:form action="withdraw-amount" method="post" name="form">
	<div class="form-group"> 
		<label for="amount" class="control-label">Enter amount you want to get</label>
		<input type="text" class="form-control" placeholder="Enter amount you want to get" maxlength="7" id="amount" name="amount" required>
		<p>Only 7 numbers</p> 
		<p id="showError" class="text-failure"></p>
	</div>
</s:form>