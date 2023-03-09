class LoginFailed {
  final String message;
  const LoginFailed([this.message = 'Login Error']);

  factory LoginFailed.code(String code) {
    switch (code) {
      case 'invaild-email':
        return const LoginFailed('Email is not vailed');
      case 'email-already-exit':
        return const LoginFailed('An account already exit fo that mail');
      default:
        return const LoginFailed();
    }
  }
}
