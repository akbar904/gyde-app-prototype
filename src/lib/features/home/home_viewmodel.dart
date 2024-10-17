
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
	final _dialogService = locator<DialogService>();
	final _bottomSheetService = locator<BottomSheetService>();

	int _counter = 0;

	String get counterLabel => 'Counter is: $_counter';

	void incrementCounter() {
		_counter++;
		rebuildUi();
	}

	void showDialog() {
		_dialogService.showCustomDialog(
			variant: DialogType.infoAlert,
			title: 'Steve Rocks!',
			description: 'Give steve $_counter stars on Github',
		);
	}

	void showBottomSheet() {
		_bottomSheetService.showCustomSheet(
			variant: BottomSheetType.notice,
			title: 'title',
			description: 'desc',
		);
	}
}
