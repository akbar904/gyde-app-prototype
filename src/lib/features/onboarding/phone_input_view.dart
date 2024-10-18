
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<PhoneInputViewModel>.reactive(
			viewModelBuilder: () => PhoneInputViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Add Your Phone'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: <Widget>[
							Text(
								'Enter your phone number to get yourself verified and ready to start your ride.',
								style: TextStyle(fontSize: 16.0),
							),
							SizedBox(height: 10.0),
							TextField(
								decoration: InputDecoration(
									labelText: 'Phone Number',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.phone,
								onChanged: model.onPhoneNumberChanged,
							),
							Spacer(),
							ElevatedButton(
								onPressed: model.isPhoneNumberValid ? model.onNext : null,
								child: Text('Next'),
							),
						],
					),
				),
			),
		);
	}
}

class PhoneInputViewModel extends BaseViewModel {
	String _phoneNumber = '';
	bool get isPhoneNumberValid => _phoneNumber.length >= 10;

	void onPhoneNumberChanged(String value) {
		_phoneNumber = value;
		notifyListeners();
	}

	void onNext() {
		// Handle the logic to proceed to the next screen
	}
}
