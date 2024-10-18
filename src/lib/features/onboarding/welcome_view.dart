
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<WelcomeViewModel>.reactive(
			viewModelBuilder: () => WelcomeViewModel(),
			builder: (context, model, child) => Scaffold(
				body: SafeArea(
					child: Container(
						padding: const EdgeInsets.all(16.0),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							crossAxisAlignment: CrossAxisAlignment.stretch,
							children: [
								Text(
									'Experience luxury travel with ease.',
									style: TextStyle(
										fontSize: 24,
										fontWeight: FontWeight.bold,
									),
									textAlign: TextAlign.center,
								),
								SizedBox(height: 16),
								Text(
									'Register and manage your bookings seamlessly.',
									style: TextStyle(
										fontSize: 16,
									),
									textAlign: TextAlign.center,
								),
								Spacer(),
								ElevatedButton(
									onPressed: model.onGetStartedPressed,
									child: Text('Get Started'),
								),
							],
						),
					),
				),
			),
		);
	}
}

class WelcomeViewModel extends BaseViewModel {
	void onGetStartedPressed() {
		// Navigate to the next page in the onboarding flow
		// Here you would use your navigation service to navigate to the next onboarding view.
	}
}
