
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
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: <Widget>[
							TextField(
								decoration: InputDecoration(labelText: 'Username'),
								onChanged: model.setUsername,
							),
							TextField(
								decoration: InputDecoration(labelText: 'Password'),
								obscureText: true,
								onChanged: model.setPassword,
							),
							SizedBox(height: 20),
							ElevatedButton(
								onPressed: model.isBusy ? null : model.login,
								child: model.isBusy ? CircularProgressIndicator() : Text('Login'),
							),
						],
					),
				),
			),
		);
	}
}
