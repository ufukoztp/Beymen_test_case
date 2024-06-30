import 'package:beymen_test_case/common/router/app_routes.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/view/my_product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/single_child_widget.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: AppRoutes.myProductList.routeName,
    routes: [
      _generateGoRoute(
          route: AppRoutes.myProductList.routeName,
          view: (parameter) =>  MyProductListView()),
      _generateGoRoute(
          route: AppRoutes.barkodReader.routeName,
          view: (parameter) =>  Container()),

    ],
    redirect: (context, state) async {
    },
  );

  static GoRoute
  _generateGoRoute<View extends Widget, Parameter extends Object>({
    required String route,
    required View Function(Parameter? parameter) view,
    List<RouteBase>? subRoutes,
    List<SingleChildWidget>? blocProviders,
    bool isShellRoute = false,
  }) {
    return GoRoute(
      name: route,
      path: route,
      routes: subRoutes ?? [],
      pageBuilder: (BuildContext context, GoRouterState state) {
        final argumentExtra = state.extra as Parameter?;

        final child = blocProviders != null
            ? MultiBlocProvider(
          providers: blocProviders,
          child: view(argumentExtra),
        )
            : view(argumentExtra);

        return MaterialPage(child: child);
      },
    );
  }

  static goNamed(String routeName, {Object? extra}) {
    router.goNamed(routeName, extra: extra);
  }

  static Future<bool?> navigatePushNamed(String routeName,
      {Object? extra, Map<String, String>? pathParameters}) async {
    return router.pushNamed(routeName,
        extra: extra, pathParameters: pathParameters ?? {});
  }

  static navigatePushReplacementNamed(String routeName, {Object? extra}) {
    router.pushReplacementNamed(routeName, extra: extra);
  }

  static void pop({dynamic value}) {
    return router.pop(value);
  }
}
