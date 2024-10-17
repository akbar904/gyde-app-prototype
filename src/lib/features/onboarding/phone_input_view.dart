
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
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							Text(
								'Enter your phone number to get yourself verified and ready to start your ride.',
								style: TextStyle(fontSize: 18),
								textAlign: TextAlign.center,
							),
							SizedBox(height: 20),
							TextField(
								controller: model.phoneNumberController,
								keyboardType: TextInputType.phone,
								decoration: InputDecoration(
									labelText: 'Phone Number',
									border: OutlineInputBorder(),
								),
							),
							SizedBox(height: 20),
							ElevatedButton(
								onPressed: () => model.onNext(),
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
	final TextEditingController phoneNumberController = TextEditingController();

	void onNext() {
		// Handle next button press, e.g., validate phone number and navigate to the next page
	}
}
