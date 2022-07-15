import 'package:eatiplan_mobile/i18n/en.dart' as en;
import 'package:eatiplan_mobile/i18n/vi.dart' as vi;
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en.messages,
        'vi_VN': vi.messages,
      };
}
