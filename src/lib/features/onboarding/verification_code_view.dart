
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class VerificationCodeView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<VerificationCodeViewModel>.reactive(
			viewModelBuilder: () => VerificationCodeViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Verification Code'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Text(
								'Enter Code',
								style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
							),
							SizedBox(height: 16),
							Text(
								'We sent verification code to your phone number +65 8123 4567',
								textAlign: TextAlign.center,
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 32),
							TextField(
								decoration: InputDecoration(
									labelText: 'Verification Code',
									border: OutlineInputBorder(),
								),
								keyboardType: TextInputType.number,
								onChanged: model.onCodeChanged,
							),
							SizedBox(height: 32),
							ElevatedButton(
								onPressed: model.isCodeValid ? model.onContinue : null,
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
	String _code = '';
	bool get isCodeValid => _code.length == 6;

	void onCodeChanged(String code) {
		_code = code;
		notifyListeners();
	}

	void onContinue() {
		// Handle verification code submission
	}
}
