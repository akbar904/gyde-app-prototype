
import 'package:stacked/stacked.dart';

class PhoneInputViewModel extends BaseViewModel {
	String _phoneNumber = '';
	String get phoneNumber => _phoneNumber;

	void updatePhoneNumber(String newNumber) {
		_phoneNumber = newNumber;
		notifyListeners();
	}

	Future<void> submitPhoneNumber() async {
		// Logic to handle phone number submission
		// Example: Validate phone number and navigate to verification view
		if (_isPhoneNumberValid(_phoneNumber)) {
			// Navigate to the next view
		} else {
			// Show validation error
		}
	}

	bool _isPhoneNumberValid(String phoneNumber) {
		// Simple validation example
		return phoneNumber.isNotEmpty && phoneNumber.length == 10;
	}
}
