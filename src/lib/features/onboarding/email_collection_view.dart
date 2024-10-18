
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<EmailCollectionViewModel>.reactive(
			viewModelBuilder: () => EmailCollectionViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Stay Connected'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'To provide you with tailored services and updates, please share your email with us.',
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 10),
							TextField(
								controller: model.emailController,
								decoration: InputDecoration(
									labelText: 'Email Address',
									border: OutlineInputBorder(),
								),
								onChanged: model.onEmailChanged,
							),
							Spacer(),
							ElevatedButton(
								onPressed: model.isEmailValid ? model.onNext : null,
								child: Text('Next'),
							),
						],
					),
				),
			),
		);
	}
}

class EmailCollectionViewModel extends BaseViewModel {
	final TextEditingController emailController = TextEditingController();
	bool _isEmailValid = false;

	bool get isEmailValid => _isEmailValid;

	void onEmailChanged(String value) {
		_isEmailValid = _validateEmail(value);
		notifyListeners();
	}

	bool _validateEmail(String email) {
		// Simple email validation logic
		final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
		return emailRegex.hasMatch(email);
	}

	void onNext() {
		// Navigate to the next page in the onboarding flow
	}
}
