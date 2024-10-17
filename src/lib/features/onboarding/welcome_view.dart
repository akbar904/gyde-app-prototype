
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<WelcomeViewModel>.reactive(
			viewModelBuilder: () => WelcomeViewModel(),
			builder: (context, model, child) => Scaffold(
				body: Container(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.center,
						children: [
							Text(
								'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
								style: TextStyle(fontSize: 18.0),
								textAlign: TextAlign.center,
							),
							SizedBox(height: 20.0),
							ElevatedButton(
								onPressed: model.navigateToNext,
								child: Text('Get Started'),
							),
						],
					),
				),
			),
		);
	}
}

class WelcomeViewModel extends BaseViewModel {
	void navigateToNext() {
		// Logic to navigate to the next screen in the onboarding flow
	}
}
