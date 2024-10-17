
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:com.com.walturn.gyde_app/features/login/login_viewmodel.dart';

class LoginView extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return ViewModelBuilder<LoginViewModel>.reactive(
			viewModelBuilder: () => LoginViewModel(),
			builder: (context, model, child) => Scaffold(
				appBar: AppBar(
					title: Text('Login'),
				),
				body: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: [
							TextField(
								controller: model.emailController,
								decoration: InputDecoration(
									labelText: 'Email',
								),
							),
							SizedBox(height: 16),
							TextField(
								controller: model.passwordController,
								decoration: InputDecoration(
									labelText: 'Password',
								),
								obscureText: true,
							),
							SizedBox(height: 16),
							ElevatedButton(
								onPressed: model.authenticateUser,
								child: Text('Login'),
							),
						],
					),
				),
			),
		);
	}
}
