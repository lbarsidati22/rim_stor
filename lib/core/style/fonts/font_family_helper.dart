class FontFamilyHelper {
  FontFamilyHelper._();
  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalozedFontFamily() {
    // final currentLanguage = SharedPref().getString(PrefKeys.language);
    final currentLanguage = 'ar';
    if (currentLanguage == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
