
import 'package:stacked/stacked.dart';

class VerificationCodeViewModel extends BaseViewModel {
	// The verification code entered by the user
	String _verificationCode = '';

	// Getter for the verification code
	String get verificationCode => _verificationCode;

	// Setter for the verification code that updates the UI when changed
	void setVerificationCode(String code) {
		_verificationCode = code;
		notifyListeners();
	}

	// Method to verify the code entered by the user
	Future<void> verifyCode() async {
		setBusy(true);
		try {
			// Simulated verification logic
			// Replace with actual verification logic
			await Future.delayed(Duration(seconds: 2));
			// Here you would typically call a service or API to verify the code
		} catch (e) {
			// Handle any errors during verification
			setError(e);
		} finally {
			setBusy(false);
		}
	}

	// Method to resend the verification code
	Future<void> resendCode() async {
		setBusy(true);
		try {
			// Simulated resend logic
			// Replace with actual logic to resend the code
			await Future.delayed(Duration(seconds: 2));
			// Here you would typically call a service or API to resend the code
		} catch (e) {
			// Handle any errors during resending
			setError(e);
		} finally {
			setBusy(false);
		}
	}
}
