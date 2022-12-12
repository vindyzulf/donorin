import 'package:donorin/utilities/color.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:donorin/utilities/theme.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}




class _DashboardScreenState extends State<DashboardScreen> {
  bool isExpanded = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
           NavigationRail(
            selectedIndex: _selectedIndex,
            extended: isExpanded,
            backgroundColor: redColor,
            unselectedIconTheme:
                IconThemeData(color: whiteColor, opacity: 1),
            unselectedLabelTextStyle: TextStyle(
              color: whiteColor,
            ),

            selectedIconTheme:
                IconThemeData(color: Colors.redAccent),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home), 
                label: Text("Home", style: descriptionText)
              ),
              NavigationRailDestination(
                icon: Icon(Icons.add_chart), 
                label: Text("Input Screening Results", style: descriptionText,)
              ),
              NavigationRailDestination(
                icon: Icon(Icons.newspaper), 
                label: Text("Add News", style: descriptionText,)
                
              ),
          ], 
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(60.0), 
              child: SingleChildScrollView(
                child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      }, 
                      icon: Icon(Icons.menu),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            width: 300.0,
                            child: Card(
                              color: redColor,
                              child: Column(
                                children: [
                                    Row(
                                      children: [
                                        Icon(
                                          color: whiteColor,
                                          Icons.bloodtype, 
                                          size: 26.0,
                                          ),
                                          SizedBox(width: 15.0,
                                          ),
                                          Text(
                                            "User Screening Results", 
                                            style: descriptionSign
                                            ),
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Body Temperature: 36.6°C",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Blood Pressure: 120/79",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Hemoglobin Levels: 130 g/L",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Body Weight: 60 kg",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                            style: flatButtonStylePos,
                                            onPressed: () { },
                                            child: Text('Accept', style: btnTextSgn,),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                            style: flatButtonStyleNeg,
                                            onPressed: () { },
                                            child: Text('Reject', style: btnTextSgn,),
                                          ),
                                        ),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                          ),
                          ),
                        ),

                        Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            width: 300.0,
                            child: Card(
                              color: redColor,
                              child: Column(
                                children: [
                                    Row(
                                      children: [
                                        Icon(
                                          color: whiteColor,
                                          Icons.bloodtype, 
                                          size: 26.0,
                                          ),
                                          SizedBox(width: 15.0,
                                          ),
                                          Text(
                                            "User Screening Results", 
                                            style: descriptionSign
                                            ),
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Body Temperature: 36.6°C",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Blood Pressure: 120/79",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Hemoglobin Levels: 130 g/L",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Body Weight: 60 kg",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),

                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                            style: flatButtonStylePos,
                                            onPressed: () { },
                                            child: Text('Accept', style: btnTextSgn,),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                            style: flatButtonStyleNeg,
                                            onPressed: () { },
                                            child: Text('Reject', style: btnTextSgn,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          ),
                        ),

                        Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            width: 300.0,
                            child: Card(
                              color: redColor,
                              child: Column(
                                children: [
                                    Row(
                                      children: [
                                        Icon(
                                          color: whiteColor,
                                          Icons.bloodtype, 
                                          size: 26.0,
                                          ),
                                          SizedBox(width: 15.0,
                                          ),
                                          Text(
                                            "User Screening Results", 
                                            style: descriptionSign
                                            ),
                                      ],
                                    ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Body Temperature: 36.6°C",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Blood Pressure: 120/79",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Hemoglobin Levels: 130 g/L",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                      "Body Weight: 60 kg",
                                      style: descriptionText,
                                      textAlign: TextAlign.end,
                                      ),

                                      Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                            style: flatButtonStylePos,
                                            onPressed: () { },
                                            child: Text('Accept', style: btnTextSgn,),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: TextButton(
                                            style: flatButtonStyleNeg,
                                            onPressed: () { },
                                            child: Text('Reject', style: btnTextSgn,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                          ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
          ),
           ))
         ],
       ),
     );
  }
}