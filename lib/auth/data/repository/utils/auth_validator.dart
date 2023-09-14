import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AuthValidator
{
  final BuildContext context;  
  static String? emailErrorMsg;
  static String? passwordErrorMsg;
  
  AuthValidator(this.context); 

  void init()
  {
     emailErrorMsg = AppLocalizations.of(context)!.emailErrorMsg;
     passwordErrorMsg = AppLocalizations.of(context)!.passwordErrorMsg;    
  }

  String? emailValidator(String? val) {
    final String email = val as String;

    // If length of email is <=3 then its invlaid
   // #3
    if (email.length <= 3) return emailErrorMsg;

    // Check if it has @
  // # 4
    final hasAtSymbol = email.contains('@');

    // find position of @
    // # 5
    final indexOfAt = email.indexOf('@');

    // Check numbers of @
    // # 6
    final numbersOfAt = "@".allMatches(email).length;

    // Valid if has @
  // # 7
    if (!hasAtSymbol) return emailErrorMsg;

    // and  if number of @ is only 1
  // # 8
    if (numbersOfAt != 1) return emailErrorMsg;

    //and if  '@' is not the first or last character
  // # 9
    if (indexOfAt == 0 || indexOfAt == email.length - 1) return emailErrorMsg;

    // Else its valid
    return null;
  }

  // Password validator
  String? passwordVlidator(String? val) {
    final String password = val as String;

    if (password.isEmpty || password.length <= 5) return passwordErrorMsg;

    return null;
  }
  
}