
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class WelcomeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => WelcomeViewModel(),
			builder: (context, model, child) => Scaffold(
				body: SafeArea(
					child: Container(
						padding: EdgeInsets.all(16.0),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: [
								Text(
									'Welcome to Gyde',
									style: TextStyle(
										fontSize: 28.0,
										fontWeight: FontWeight.bold,
									),
								),
								SizedBox(height: 16.0),
								Text(
									'Experience luxury travel with ease. Register and manage your bookings seamlessly.',
									style: TextStyle(
										fontSize: 16.0,
									),
								),
								SizedBox(height: 32.0),
								Center(
									child: ElevatedButton(
										onPressed: model.navigateToAuthOptions,
										child: Text('Get Started'),
									),
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
	void navigateToAuthOptions() {
		// Navigation logic to AuthOptionsView
	}
}
