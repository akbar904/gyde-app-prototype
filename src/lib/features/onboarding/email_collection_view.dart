
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class EmailCollectionViewModel extends BaseViewModel {
	// Add any logic or data handling here if needed
}

class EmailCollectionView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<EmailCollectionViewModel>.reactive(
			viewModelBuilder: () => EmailCollectionViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Email Collection'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								'Stay Connected',
								style: TextStyle(
									fontSize: 24,
									fontWeight: FontWeight.bold,
								),
							),
							SizedBox(height: 16),
							Text(
								'To provide you with tailored services and updates, please share your email with us.',
								style: TextStyle(fontSize: 16),
							),
							SizedBox(height: 32),
							TextField(
								decoration: InputDecoration(
									labelText: 'Email Address',
									border: OutlineInputBorder(),
								),
							),
							Spacer(),
							Align(
								alignment: Alignment.bottomRight,
								child: ElevatedButton(
									onPressed: () {
										// Navigate to the next page
									},
									child: Text('Next'),
								),
							),
						],
					),
				),
			),
		);
	}
}
