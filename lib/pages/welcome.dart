import "package:flutter/material.dart";
import "../utilities/color.dart";
import "../utilities/theme.dart";

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEB1D36),
        body: Padding(
          padding: const EdgeInsets.all(39),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height:110 ,),
              Center(child: Image.asset('DonorinLogo.png', width: 204, height: 78.38,),),
              Spacer(),
              Padding(padding: const EdgeInsets.only(top: 3), //152
                child: Column(children: [
                  Text("come On Board.", style: headWelcome,),
                  Text("Create a free account\nand donate your blood", style: descriptionText,)
                ]),
              ),
              Spacer(),
              Padding(padding: const EdgeInsets.only(top: 52), //152
                child: Row(children: [
                  TextButton(onPressed: () => {}, child: Text("Register", style: btnTextSgn,), style: TextButton.styleFrom(
                    backgroundColor: warmButtonColor,
                    minimumSize: Size(141, 39),
                    shape: RoundedRectangleBorder( // <--- use this
                      borderRadius: BorderRadius.all(
                        Radius.circular(28),
                      ),
                    ), 
                  )),
                  Spacer(),
                  TextButton(onPressed: () => {}, child: Text("Sign In", style: btnTextSgn,),
                    style: TextButton.styleFrom(
                      backgroundColor: whiteColor,
                      minimumSize: Size(141, 44),
                      shape: RoundedRectangleBorder( // <--- use this
                        borderRadius: BorderRadius.all(
                          Radius.circular(28),
                        ),
                      ), 
                    )
                  )
                ]),
              )
            ],
          )
        ),
      ),
    );
  }
}