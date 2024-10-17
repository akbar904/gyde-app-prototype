
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
	const HomeView({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: SafeArea(
				child: Padding(
					padding: const EdgeInsets.symmetric(horizontal: 25),
					child: Center(
						child: Column(
							mainAxisAlignment: MainAxisAlignment.center,
							children: [
								const Text(
									'Simple Counter App',
									style: TextStyle(
										fontSize: 35,
										fontWeight: FontWeight.w900,
									),
								),
								const Gap(25),
								MaterialButton(
									color: Colors.black,
									onPressed: () {
										// Logic to increment counter
									},
									child: const Text(
										'Increment Counter',
										style: TextStyle(color: Colors.white),
									),
								),
							],
						),
					),
				),
			),
		);
	}
}
