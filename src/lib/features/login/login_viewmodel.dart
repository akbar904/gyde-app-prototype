
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
	final NavigationService _navigationService = NavigationService();
  
	Future<void> authenticateUser() async {
		// Add your authentication logic here
		// For example, validate user credentials

		// On successful authentication, navigate to the next screen
		await _navigationService.navigateTo('/startup');
	}
}
