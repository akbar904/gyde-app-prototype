
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:com.com.walturn.gyde_app/app/app.locator.dart';
import 'package:com.com.walturn.gyde_app/app/app.router.dart';

class LoginViewModel extends BaseViewModel {
	final NavigationService _navigationService = locator<NavigationService>();

	Future<void> login(String username, String password) async {
		// Implement your login logic here
		// For example, validate the username and password with a service

		// If login is successful, navigate to the HomeView
		if (_isValidCredentials(username, password)) {
			await _navigationService.navigateTo(Routes.homeView);
		} else {
			// Handle login failure, e.g., show an error message
		}
	}

	bool _isValidCredentials(String username, String password) {
		// Dummy validation logic, replace with real authentication logic
		return username == 'admin' && password == 'password';
	}
}
