
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PhoneInputView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<PhoneInputViewModel>.reactive(
			viewModelBuilder: () => PhoneInputViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Add Your Phone',
								style: Theme.of(context).textTheme.headline5,
							),
							SizedBox(height: 8.0),
							Text(
								'Enter your phone number to get yourself verified and ready to start your ride.',
								style: Theme.of(context).textTheme.bodyText2,
							),
							SizedBox(height: 16.0),
							TextField(
								keyboardType: TextInputType.phone,
								decoration: InputDecoration(
									labelText: 'Phone Number',
									border: OutlineInputBorder(),
								),
								onChanged: model.onPhoneNumberChanged,
							),
							Spacer(),
							ElevatedButton(
								onPressed: model.isPhoneNumberValid
									? model.onContinuePressed
									: null,
								child: Text('Continue'),
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

	void onPhoneNumberChanged(String value) {
		_phoneNumber = value;
		notifyListeners();
	}

	bool get isPhoneNumberValid => _phoneNumber.isNotEmpty && _phoneNumber.length == 10;

	void onContinuePressed() {
		// Proceed to the next step in the onboarding flow
	}
}
