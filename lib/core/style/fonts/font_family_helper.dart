import 'package:rim_stor/core/services/shared_pref/pref_keys.dart';
import 'package:rim_stor/core/services/shared_pref/shared_pref.dart';

class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalozedFontFamily() {
    final currentLanguage = SharedPref().getString(PrefKeys.language);
    // final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
