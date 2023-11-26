import 'package:fingerprintauthdemo/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'HomeView',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              centerTitle: true,
            ),
            body: Center(
                child: ElevatedButton(
              onPressed: () {
                viewmodel.logout();
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Logout'),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.logout)
                ],
              ),
            )),
          );
        });
  }
}
