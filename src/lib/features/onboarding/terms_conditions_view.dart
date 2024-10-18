
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TermsConditionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<TermsConditionsViewModel>.reactive(
			viewModelBuilder: () => TermsConditionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Terms & Conditions'),
					backgroundColor: Colors.black,
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Welcome to Gyde!',
								style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
							),
							SizedBox(height: 16),
							Text(
								'By using our services, you agree to the following terms and conditions. Please read them carefully.',
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 16),
							Text(
								'By continuing, you have read and agree to our terms and condition.',
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 16),
							Text(
								'Please read these terms of use carefully before using this platform.',
								style: TextStyle(fontSize: 16),
							),
							Expanded(child: Container()),
							Align(
								alignment: Alignment.bottomRight,
								child: ElevatedButton(
									onPressed: () => model.onContinue(),
									child: Text('Continue'),
									style: ElevatedButton.styleFrom(
										primary: Colors.black,
										onPrimary: Colors.white,
									),
								),
							),
						],
					),
				),
			),
		);
	}
}

class TermsConditionsViewModel extends BaseViewModel {
	void onContinue() {
		// Logic to proceed to the next page in the onboarding flow
	}
}
