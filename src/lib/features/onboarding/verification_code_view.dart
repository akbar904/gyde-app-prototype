
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder.reactive(
			viewModelBuilder: () => VerificationCodeViewModel(),
			builder: (context, viewModel, child) => Scaffold(
				appBar: AppBar(
					title: Text('Verification Code'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Enter Code',
								style: Theme.of(context).textTheme.headline4,
							),
							SizedBox(height: 8.0),
							Text('We sent verification code to your phone number +65 8123 4567'),
							SizedBox(height: 16.0),
							TextField(
								decoration: InputDecoration(
									labelText: 'Verification Code',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.number,
								onChanged: viewModel.onCodeChanged,
							),
							SizedBox(height: 24.0),
							ElevatedButton(
								onPressed: viewModel.verifyCode,
								child: Text('Continue'),
							),
						],
					),
				),
			),
		);
	}
}

class VerificationCodeViewModel extends BaseViewModel {
	String _verificationCode = '';

	void onCodeChanged(String code) {
		_verificationCode = code;
		notifyListeners();
	}

	void verifyCode() {
		// Here you can add the logic to verify the code
		print('Verifying code: $_verificationCode');
		// Navigate to the next page in the onboarding flow
	}
}
