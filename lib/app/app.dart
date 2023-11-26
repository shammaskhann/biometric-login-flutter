import 'package:fingerprintauthdemo/views/auth/login_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../views/home/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
  ],
)
class App {}
