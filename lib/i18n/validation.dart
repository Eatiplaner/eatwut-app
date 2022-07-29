import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class CustomValidationLocale extends FormValidatorLocale {
  @override
  String name() => 'custom';

  @override
  String required() => "validate.required".tr;

  @override
  String minLength(String v, int n) => 'validate.min_length'.trParams({
        'n': n.toString(),
      });

  @override
  String maxLength(String v, int n) => 'validate.max_length'.trParams({
        'n': n.toString(),
      });

  @override
  String email(String v) => 'validate.email'.tr;

  @override
  String phoneNumber(String v) => 'validate.phone_number'.tr;

  /* HACK: These overrides are default please don't remove it */
  @override
  String ip(String v) => 'The field is not a valid IP address';

  @override
  String ipv6(String v) => 'The field is not a valid IPv6 address';

  @override
  String url(String v) => 'The field is not a valid URL address';
}
