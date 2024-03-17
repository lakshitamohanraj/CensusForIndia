import 'package:censusdemo/src/constants/colors.dart';
import 'package:censusdemo/src/constants/image_strings.dart';
import 'package:censusdemo/src/constants/sizes.dart';
import 'package:censusdemo/src/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  Welcome({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context){
    var mediaQuery=MediaQuery.of(context);
    var height=mediaQuery.size.height;
    var brightness=mediaQuery.platformBrightness;

    final isDarkMode=brightness==Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode? tSecondaryColor:tPrimaryColor,
     body:Container(
       padding:EdgeInsets.all(tDefaultSize),
       child:Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Image(image: AssetImage(tWelcomeScreenImage),
           height:height*0.6),
           Column(
             children: [
               Text(tWelcomeTitle,style: Theme.of(context).textTheme.headline2,),
               Text(tWelcomeSubTitle,style: Theme.of(context).textTheme.bodyText1,
               textAlign: TextAlign.center,),
             ],
           ),

           Row(
             children: [
               Expanded(child: OutlinedButton(onPressed: (){},

                 child: Text(tLogin.toUpperCase()),
               )
               ),
               const SizedBox(width:10.0),
               Expanded(child: ElevatedButton(onPressed: (){},

                   child: Text(tSignup.toUpperCase(),)
               )
               ),
             ],
           )
         ],
       ),
     ),
    );
  }

}
