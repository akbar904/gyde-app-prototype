
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthOptionsView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<AuthOptionsViewModel>.reactive(
			viewModelBuilder: () => AuthOptionsViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Authentication Options'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Text(
								'Choose an authentication method to continue',
								style: TextStyle(fontSize: 18),
								textAlign: TextAlign.center,
							),
							const SizedBox(height: 20),
							ElevatedButton(
								onPressed: model.continueWithPhone,
								child: Text('Continue with Phone'),
							),
							const SizedBox(height: 10),
							ElevatedButton(
								onPressed: model.continueWithEmail,
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
	void continueWithPhone() {
		// Logic to handle phone authentication
	}

	void continueWithEmail() {
		// Logic to handle email authentication
	}
}
