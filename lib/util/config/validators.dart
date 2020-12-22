import 'package:form_field_validator/form_field_validator.dart';

MultiValidator buildEmailValidator() {
  return MultiValidator([
    PatternValidator(r'''^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$''', errorText: 'Please enter a valid email address'),
  ]);
}

MultiValidator buildLongTextValidator() {
  return MultiValidator([
    PatternValidator('[a-zA-Z][a-zA-Z ]+', errorText: 'Please enter a valid name'),
    MaxLengthValidator(30, errorText: 'Must be shorter than 30 characters'),
  ]);
}

MultiValidator buildPasswordValidator() {
  return MultiValidator([
    RequiredValidator(errorText: 'Please enter a valid password'),
    MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'Password must have one special character'),
    PatternValidator(r'(?=.*[a-z])', errorText: 'Password must have one lower case letter'),
    PatternValidator(r'(?=.*[A-Z])', errorText: 'Password must have one upper case letter'),
    PatternValidator(r'(?=.*\d)', errorText: 'Password must have a digit'),
  ]);

}
