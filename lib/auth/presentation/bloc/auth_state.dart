enum AuthState {
  successRegister,
  successLogin, 
  userNotFound,
  wrongPassword,
  weakPassword, 
  userDisabled,
  emailAlreadyInUse,
  operationNotAllowed,
  invalidEmail,
  failed,
  initial
}