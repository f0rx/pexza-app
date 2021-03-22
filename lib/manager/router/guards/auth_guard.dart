import 'package:auto_route/auto_route.dart';
import 'package:pexza/manager/locator/locator.dart';

class AuthGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(ExtendedNavigatorState<RouterBase> navigator,
      String routeName, Object arguments) async {
    print("Printing from [AuthGuard.dart], RouteName: $routeName");
    return true;
    // return getIt<AuthFacade>().currentUser.isSome();
  }
}
