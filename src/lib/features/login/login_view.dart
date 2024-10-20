
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:com.com.walturn.gyde_app/features/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<LoginViewModel>.reactive(
			viewModelBuilder: () => LoginViewModel(),
			builder: (context, model, child) {
				return Scaffold(
					appBar: AppBar(
						title: Text('Login'),
					),
					body: Padding(
						padding: const EdgeInsets.all(16.0),
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							children: <Widget>[
								TextField(
									controller: model.usernameController,
									decoration: InputDecoration(labelText: 'Username'),
								),
								SizedBox(height: 16.0),
								TextField(
									controller: model.passwordController,
									decoration: InputDecoration(labelText: 'Password'),
									obscureText: true,
								),
								SizedBox(height: 32.0),
								ElevatedButton(
									onPressed: () async {
										bool isAuthenticated = await model.authenticate(
											model.usernameController.text,
											model.passwordController.text,
										);
										if (isAuthenticated) {
											Navigator.of(context).pushReplacementNamed('/home');
										} else {
											ScaffoldMessenger.of(context).showSnackBar(
												SnackBar(content: Text('Authentication Failed')),
											);
										}
									},
									child: Text('Login'),
								),
							],
						),
					),
				);
			},
		);
	}
}
