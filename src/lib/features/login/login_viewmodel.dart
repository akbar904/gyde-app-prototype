
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
	final NavigationService _navigationService = locator<NavigationService>();

	Future<bool> authenticate(String username, String password) async {
		setBusy(true);
		// Simulate authentication logic
		await Future.delayed(Duration(seconds: 2));

		// Example authentication logic
		bool isAuthenticated = username == 'user' && password == 'password';

		setBusy(false);
		if (isAuthenticated) {
			_navigationService.navigateTo(Routes.homeView);
		}
		return isAuthenticated;
	}
}
