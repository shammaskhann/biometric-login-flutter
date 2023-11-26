import 'package:fingerprintauthdemo/views/auth/loginview_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
      viewModelBuilder: () => LoginViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.authenticateWithBiometrics(); // Call your method here
      },
      builder: ((context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Login",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                )),
            centerTitle: true,
          ),
          body: SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: viewModel.authenticateWithBiometrics,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Authenticate: biometrics only'),
                      Icon(Icons.fingerprint),
                    ],
                  ),
                ),
              ),
            ],
          )),
        );
      }),
    );
  }
}
