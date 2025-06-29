class AppConstants {
  static const String appName = 'AI Chat App';
  static const String apiBaseUrl = 'https://openrouter.ai/api/v1';
  static const String defaultModel = 'meta-llama/llama-3.1-8b-instruct:free';
  
  // UI Constants
  static const double messageBubbleRadius = 16.0;
  static const double inputBorderRadius = 24.0;
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  
  // Animation durations
  static const Duration scrollAnimationDuration = Duration(milliseconds: 300);
  static const Duration snackBarDuration = Duration(seconds: 2);
}