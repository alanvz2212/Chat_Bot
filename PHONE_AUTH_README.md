# Phone Authentication Setup

This app now includes phone authentication functionality using Firebase Auth. Here's what has been added:

## Features Added

### 1. Phone Authentication Service
- Added phone number verification methods to `AuthService`
- OTP sending and verification functionality
- Auto-verification support for compatible devices
- Comprehensive error handling for phone auth specific errors

### 2. Phone Authentication Screen
- New `PhoneAuthScreen` with international phone number input
- OTP verification interface
- Resend OTP functionality
- Change phone number option
- Loading states and error handling

### 3. Updated Main Auth Screen
- Added "Continue with Phone" button
- Clean UI with divider separating email and phone auth options
- Seamless navigation to phone auth screen

## Dependencies Added
- `intl_phone_field: ^3.2.0` - For international phone number input with country selection

## Firebase Configuration Required

To use phone authentication, you need to configure Firebase:

### 1. Enable Phone Authentication
1. Go to Firebase Console → Authentication → Sign-in method
2. Enable "Phone" provider
3. Add your app's SHA-256 fingerprint (for Android)

### 2. For Android
Add the following to `android/app/build.gradle`:
```gradle
android {
    ...
    defaultConfig {
        ...
        multiDexEnabled true
    }
}
```

### 3. For iOS
No additional configuration needed for basic phone auth.

## Usage Flow

1. User opens the app and sees the main auth screen
2. User can choose between:
   - Email/Password authentication (existing)
   - Phone authentication (new)
3. For phone auth:
   - User enters phone number with country code
   - OTP is sent to the phone number
   - User enters the 6-digit OTP
   - User is authenticated and redirected to chat screen

## Error Handling

The app handles various phone authentication errors:
- Invalid phone number format
- Invalid verification code
- Verification ID issues
- SMS quota exceeded
- Session expired
- Network connectivity issues

## Security Features

- OTP timeout (60 seconds)
- Auto-verification when possible
- Secure credential handling
- Proper session management

## Testing

For testing phone authentication:
1. Use a real phone number during development
2. Firebase provides test phone numbers for testing without SMS charges
3. Check Firebase Console for authentication logs

## Notes

- Phone authentication requires a real device for SMS reception
- Some countries may have restrictions on SMS delivery
- Consider implementing rate limiting for production use
- Test thoroughly with different phone number formats and countries