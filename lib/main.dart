import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/layout/app_layout/app_layout.dart';
import 'package:project1/layout/home_layout/cubit/home_layout_cubit.dart';
import 'package:project1/module/home_post/cubit/home_post_cubit.dart';
import 'package:project1/module/login/cubit/login_cubit.dart';
import 'package:project1/shared/cubit/app_cubit.dart';
import 'shared/bloc_observer.dart';
import 'shared/localization/language_constants.dart';
import 'shared/network/local/cache_helper.dart';
import 'shared/network/remote/dio_helper.dart';
import 'shared/routes/routes.dart';

// mskanksdkndlskns
void main() {
  BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      DioHelper.init();
      await CacheHelper.init();

      var a = CacheHelper.getData(key: LAGUAGE_CODE);
      print(a);
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => HomePostCubit()..getHomePost(),
        ),
        BlocProvider(
          create: (context) => HomeLayoutCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            // localizationsDelegates:  ,//AppLocalizations.localizationsDelegates,
            // supportedLocales: AppLocalizations.supportedLocales,
            // locale: Locale('en', 'US'), // AppCubit.get(context).localLang,
            // theme: l//ightTheme,
            // darkTheme: darkTheme,
            themeMode: ThemeMode.light,
            // initialRoute: ResetPasswordScreen.routeName,
            routes: routes,
            initialRoute: AppLayout.routeName,
            // home: AppLayout(),
          );
        },
      ),
    );
  }
}
