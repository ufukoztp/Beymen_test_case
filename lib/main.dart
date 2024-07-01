import 'package:beymen_test_case/common/init/service_locator_provider.dart';
import 'package:beymen_test_case/common/router/app_router.dart';
import 'package:beymen_test_case/core/helper/app_initializer.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/cubit/my_product_list_cubit.dart';
import 'package:beymen_test_case/features/product_list/cubit/network_product_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() async {
  await AppInitilizer.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      ensureScreenSize: true,
      builder: (context,child){
        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: ServiceLocatorProvider.provide<MyProductListCubit>()),
            BlocProvider.value(value: ServiceLocatorProvider.provide<NetworkProductListCubit>()),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            title: 'Flutter Demo',
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white
              ),
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
          ),
        );
      },
    );
  }
}

