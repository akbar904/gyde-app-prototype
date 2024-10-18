
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<AuthOptionsViewModel>.reactive(
			viewModelBuilder: () => AuthOptionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde Onboarding'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Text(
								'Continue with Phone',
								style: Theme.of(context).textTheme.headline6,
							),
							SizedBox(height: 20),
							ElevatedButton(
								onPressed: model.navigateToPhoneInput,
								child: Text('Continue with Phone'),
							),
							SizedBox(height: 20),
							Text(
								'Continue with Email',
								style: Theme.of(context).textTheme.headline6,
							),
							SizedBox(height: 20),
							ElevatedButton(
								onPressed: model.navigateToEmailCollection,
								child: Text('Continue with Email'),
							),
						],
					),
				),
			),
		);
	}
}

class AuthOptionsViewModel extends BaseViewModel {
	void navigateToPhoneInput() {
		// Navigation logic to Phone Input View
	}

	void navigateToEmailCollection() {
		// Navigation logic to Email Collection View
	}
}
