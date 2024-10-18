
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppViewModel extends BaseViewModel {
	final NavigationService _navigationService = NavigationService();

	// Additional logic or properties can be added here

	// Example method to demonstrate functionality
	void navigateToStartupView() {
		_navigationService.navigateToStartupView();
	}
}
