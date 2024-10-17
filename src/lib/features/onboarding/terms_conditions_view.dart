
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TermsConditionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<TermsConditionsViewModel>.reactive(
			viewModelBuilder: () => TermsConditionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Terms and Conditions'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'By continuing, you have read and agree to our terms and condition.',
								style: TextStyle(fontWeight: FontWeight.bold),
							),
							SizedBox(height: 10),
							Text(
								'Please read these terms of use carefully before using this platform',
							),
							SizedBox(height: 20),
							Text(
								'Welcome to Gyde! By using our services, you agree to the following terms and conditions. Please read them carefully.',
							),
							Spacer(),
							Align(
								alignment: Alignment.bottomCenter,
								child: ElevatedButton(
									onPressed: () {
										// Logic to navigate to the next page
										model.navigateToNext();
									},
									child: Text('Continue'),
								),
							)
						],
					),
				),
			),
		);
	}
}

class TermsConditionsViewModel extends BaseViewModel {
	void navigateToNext() {
		// Implement navigation logic
	}
}
