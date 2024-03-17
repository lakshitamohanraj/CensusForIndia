import 'package:censusdemo/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:censusdemo/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main (){
  return runApp(const App());
}


class App extends StatelessWidget{
  const App ({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      theme:TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:SplashScreen(),
    );
  }
}


