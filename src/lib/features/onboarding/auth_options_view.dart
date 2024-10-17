
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<AuthenticationViewModel>.reactive(
			viewModelBuilder: () => AuthenticationViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Gyde'),
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
							SizedBox(height: 16),
							ElevatedButton(
								onPressed: model.navigateToPhoneInput,
								child: Text('Continue with Phone'),
							),
							SizedBox(height: 16),
							Text(
								'Continue with Email',
								style: Theme.of(context).textTheme.headline6,
							),
							SizedBox(height: 16),
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

class AuthenticationViewModel extends BaseViewModel {
	void navigateToPhoneInput() {
		// Implementation of navigation to Phone Input Page
	}

	void navigateToEmailCollection() {
		// Implementation of navigation to Email Collection Page
	}
}
