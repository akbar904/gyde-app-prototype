
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppViewModel extends BaseViewModel {
	final NavigationService _navigationService = NavigationService();
	final DialogService _dialogService = DialogService();
	final BottomSheetService _bottomSheetService = BottomSheetService();

	void navigateToHome() async {
		await _navigationService.navigateTo('/home');
	}

	void showDialog() async {
		await _dialogService.showDialog(
			title: 'Dialog Title',
			description: 'Dialog Description',
		);
	}

	void showBottomSheet() async {
		await _bottomSheetService.showBottomSheet(
			title: 'Bottom Sheet Title',
			description: 'Bottom Sheet Description',
		);
	}
}
