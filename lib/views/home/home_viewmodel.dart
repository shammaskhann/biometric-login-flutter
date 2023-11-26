import 'package:fingerprintauthdemo/app/app.locator.dart';
import 'package:fingerprintauthdemo/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  NavigationService navigationService = locator<NavigationService>();
  void logout() {
    navigationService.replaceWithLoginView();
  }
}
