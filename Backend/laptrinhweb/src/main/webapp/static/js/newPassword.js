var password = document.getElementById("password")
    , confirm_password = document.getElementById("re-password");


enableSubmitButton();

function validatePassword() {
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
    return false;
  } else {
    confirm_password.setCustomValidity('');
    return true;
  }
}
function enableSubmitButton() {
  document.getElementById('submitButton').disabled = false;
}

function disableSubmitButton() {
  document.getElementById('submitButton').disabled = true;
}

function validateSignupForm() {
  var form = document.getElementById('newPasswordForm');

  for(var i=0; i < form.elements.length; i++){
    if(form.elements[i].value === '' && form.elements[i].hasAttribute('required')){
      return false;
    }
  }

  if (!validatePassword()) {
    return false;
  }
}