
import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
	String? _email;
	String? get email => _email;

	void setEmail(String email) {
		_email = email;
		notifyListeners();
	}

	Future<void> submitEmail() async {
		setBusy(true);
		try {
			// Add logic to handle email submission, e.g., API call
		} catch (error) {
			// Handle errors
		} finally {
			setBusy(false);
		}
	}
}
