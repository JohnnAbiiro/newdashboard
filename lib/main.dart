import 'package:flutter/material.dart';
import 'pages/sideBarTextIcon.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
void main(){
  runApp(
  const   MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Myapp(),
    ),
  );
}
 class Myapp extends StatelessWidget {
   const Myapp({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      // backgroundColor: Colors.black12,
       body: SingleChildScrollView(
         child: Row(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Expanded(
             flex:2,
             child: Container(
               color: const Color(0xff312626),
               height:970,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 //mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                     child:Expanded(
                       child: Container(
                         height:40,
                         width:200,
                         decoration: BoxDecoration(
                           color: Colors.redAccent,
                           borderRadius: BorderRadius.circular(4.0),
                         ),
                         child:  const Row(
                           children: [
                             Padding(
                               padding: EdgeInsets.fromLTRB(8.0,0.0,10.0,0.0),
                               child: Icon(
                                 Icons.home,
                                 color:Colors.white,
                               ),
                             ),
                             Text( "Overview",style: TextStyle( fontSize: 18,color: Colors.white,),),],),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: sideBarTextIcon( height: 60,width: 200,colors:Colors.transparent,iconData: Icons.pool_rounded,
                       text: 'Projects',fontSize: 18.0,textColor:Colors.white ,color:Colors.white ,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: sideBarTextIcon( height: 60,width: 200,colors:Colors.transparent,iconData: Icons.transfer_within_a_station_rounded,
                       text: 'Transactions',fontSize: 18.0,textColor:Colors.white ,color:Colors.white ,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: sideBarTextIcon( height: 60,width: 200,colors:Colors.transparent,iconData: Icons.balance,
                       text: 'Bills',fontSize: 18.0,textColor:Colors.white ,color:Colors.white ,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: sideBarTextIcon( height: 60,width: 200,colors:Colors.transparent,iconData: Icons.expand_circle_down_rounded,
                       text: 'Expenses',fontSize: 18.0,textColor:Colors.white ,color:Colors.white ,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: sideBarTextIcon( height: 60,width: 200,colors:Colors.transparent,iconData: Icons.golf_course,
                       text: 'Goals',fontSize: 18.0,textColor:Colors.white ,color:Colors.white ,),
                   ),
                   const SizedBox(height: 300,),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                     child:Expanded(
                       child: Container(
                         height:40,
                         width:200,
                         decoration: BoxDecoration(
                           color: Colors.redAccent,
                           borderRadius: BorderRadius.circular(4.0),
                          ),
                           child:  const Row(
                             children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(8.0,0.0,10.0,0.0),
                                child: Icon(
                                 Icons.logout,
                                 color:Colors.white,
                             ),
                              ),
                               Text( "Logout",style: TextStyle( fontSize: 18,color: Colors.white,),),],),
                            ),
                     ),
                     ),
                 ],
               ),
             ),
           ),
           Expanded(
             flex: 10,
             child: Container(
               decoration: BoxDecoration(
                 color: const Color(0xffe9eaef),
                 borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                 border: Border.all(
                   color: Colors.white12, // Border color
                   width: 2.0, // Border width
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                     const Row(
                     children: [
                       Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 25,
                                width: 500,
                                child: Center(child: Text("Total Balance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:  Color(0xff868686)),))
                            ),
                          ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: SizedBox(
                             height: 25,
                             width: 500,
                             child: Center(child: Text("Goals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:  Color(0xff868686)),))
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.fromLTRB(25.0,8.0,8.0,8.0,),
                         child: SizedBox(
                             height: 25,
                             width: 300,
                             child: Text("Upcoming Bills",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:  Color(0xff868686),),),
                         ),
                       ),
                       Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Row(
                            children:[
                              Text("View all",style: TextStyle(fontSize: 20,color:  Color(0xff868686),),),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.arrow_forward_ios,color:  Color(0xff868686),size: 15,),
                              )
                          ]
                         ),
                       ),
                     ],
                   ),
                       Row(
                     children: [
                       const SizedBox(width:20.0,),
                      Container(
                        height: 300,
                        width: 500,
                          decoration: BoxDecoration(
                            color: const Color(0xfffffff9),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                               const  Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20.0,15.0,20.0,10.0,),
                                        child: Text('\$240,399',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff868686)),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(250.0,20.0,8.0,10.0,),
                                        child: Text('All Accounts',style: TextStyle(fontSize: 12),),
                                      ),
                                  ],
                                ),
                              const SizedBox(
                                height: 30.0,
                                child: Divider(
                                  height:1 ,
                                  thickness:1 ,
                                  color: Color(0xff868686),
                                  endIndent: 50.0,
                                  indent: 20.0,
                                ),
                              ),
                             Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 150,
                                  width: 460,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff5a9b6),
                                      borderRadius: BorderRadius.circular(5.0), //
                                    ),
                                  child: const Row(
                                    children: [
                                       Column(
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                             Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(20.0,20.0,0.0,0.0,),
                                                    child: Text('Account type',style: TextStyle(fontSize: 18,color: Colors.white),),
                                                  ),
                                                  SizedBox(width: 220.0,),
                                                  Padding(
                                                    padding: EdgeInsets.fromLTRB(10.0,20.0,0.0,0.0,),
                                                    child: Image(
                                                      image:AssetImage('images/images.png'),
                                                      width:50,
                                                      height:50,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                             Padding(
                                              padding: EdgeInsets.fromLTRB(20.0,5.0,0.0,0.0,),
                                              child: Text('Debit card',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                                            ),
                                             Row(
                                               children: [
                                                 Padding(
                                                   padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                   child: Text('**********************345',style: TextStyle(fontSize: 14,color: Colors.white60),),
                                                 ),
                                                 SizedBox(width: 100,),
                                                 Padding(
                                                   padding: EdgeInsets.all(8.0),
                                                   child: Text( ' \$25,000', style: TextStyle(fontSize: 20,color: Colors.white), ),
                                                 ),
                                                 Padding(
                                                   padding: EdgeInsets.all(8.0),
                                                   child: Icon( Icons.arrow_circle_up_sharp, color: Colors.white,),
                                                 )
                                               ],
                                             ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                     children: [
                                       Padding(
                                         padding: EdgeInsets.fromLTRB(20.0,5.0,0.0,5.0),
                                         child: Icon( Icons.skip_previous,color: Colors.black12,),
                                       ),
                                       Text( 'Previous',style: TextStyle(fontSize: 18,color: Color(0xff868686),),),
                                     ],
                                    ),
                                    Icon( Icons.more_horiz,color: Color(0xff868686), ),
                                    Row(
                                      children: [
                                      Text( 'Next',style: TextStyle(fontSize: 18,color:Color(0xff868686)),),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0.0,10.0,20.0,10.0),
                                        child: Icon( Icons.play_circle_outline_outlined,color:Color(0xff868686), ),
                                      ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                       const SizedBox(width:20.0,),
                      Container(
                          height: 300,
                          width: 500,
                          decoration: BoxDecoration(
                            color: const Color(0xfffffff9),
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                          ),
                          child: Column(
                            children: [
                               Row(
                                children: [
                                 const  Padding(
                                    padding: EdgeInsets.fromLTRB(20.0,15.0,8.0,0.0,),
                                    child: Text( '\$240,399', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0.0,15.0,200.0,10.0,),
                                    child: Container(width: 30, height: 30, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.black12,), child: const Icon( Icons.edit, )),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(8.0,15.0,8.0,10.0,),
                                    child: Text( 'May 2023',style: TextStyle(fontSize: 14, color:Color(0xff868686),), ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30.0, child: Divider(
                                height:1 ,
                                thickness:1 ,
                                color: Color(0xff868686),
                                endIndent: 50.0,
                                indent: 20.0,
                              ),),
                              Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(5.0,10.0,0.0,5.0,),
                                            child: Icon( Icons.balance_rounded, ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(5.0,10.0,0.0,0.0,),
                                            child: Text( 'Target Achieved',style: TextStyle(fontSize: 14, color:Color(0xff868686)),),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0,),
                                        child: Text('\$240,399',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff868686)),),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(2.0,60.0,0.0,5.0,),
                                            child: Icon( Icons.balance_rounded, ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(2.0,60.0,0.0,0.0,),
                                            child: Text( 'This march target',style: TextStyle(fontSize: 14,color:Color(0xff868686)), ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(5.0,0.0,0.0,0.0,),
                                        child: Text('\$240,699',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 150,
                                        width: 350,
                                        child: SfRadialGauge(
                                          enableLoadingAnimation: true,
                                            animationDuration: 2000,
                                            axes: <RadialAxis>[
                                              RadialAxis(
                                                  minimum: 0,
                                                  maximum: 20,
                                                  interval: 10,
                                                labelsPosition: ElementsPosition.inside,
                                                ranges: <GaugeRange>[
                                                  GaugeRange(
                                                   startValue:0.0,
                                                    endValue: 12.0,
                                                    color: Colors.red,
                                                  ),
                                                  GaugeRange(
                                                    startValue:12.0,
                                                    endValue: 20.0,
                                                    color: Colors.grey,
                                                  ),
                                                ],
                                                pointers: const<GaugePointer>[
                                                NeedlePointer(
                                                  value: 12,
                                                  needleEndWidth: 5,
                                                 enableAnimation: true,
                                                 ),
                                                ],
                                                annotations: const<GaugeAnnotation>[
                                                  GaugeAnnotation(
                                                      widget: Row (
                                                         children: [
                                                 Text('0', style : TextStyle( fontSize: 14,fontWeight: FontWeight.bold, ),),
                                                       ],
                                                      ),
                                                    angle: 90.0,
                                                    positionFactor: 0.5,
                                                  ),
                                                ],
                                              ),
                                           ],
                                        ),
                                      ),
                                      const Text('Target Achievement'),
                                    ],

                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                       const SizedBox(width:20.0,),
                      Container(
                          height: 300,
                          width: 500,
                          decoration: BoxDecoration(
                            color: const Color(0xfffffff9),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                            const  SizedBox(height:30,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0,20.0,0.0,0.0,),
                                    child: Container( width: 40, height: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.black12),
                                       child: const Column(
                                        children: [
                                         Padding(
                                           padding: EdgeInsets.all(8.0),
                                           child: Text('May',style: TextStyle(fontSize: 10,color:Color(0xff868686)),),
                                         ),
                                          Text('15',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color:Color(0xff868686)),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0),
                                       child: Text( 'Odoo - Monthly',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686)),),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(50.0,0.0,0.0,0.0),
                                       child: Text( 'Last Change, 14 may, 2022',style: TextStyle(fontSize: 12.0,color:Color(0xff868686)), ),
                                     ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(100.0,0.0,10.0,0.0),
                                    child: Container( height: 50,width: 80,decoration:  BoxDecoration( color: Colors.white,
                                      border: const Border(
                                        top: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                      child: const Center(child: Text('\$150',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff868686)),)),
                                    ),
                                  ),
                                ],
                              ),
                            const  SizedBox(height:30,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(30.0,30.0,0.0,0.0,),
                                    child: Container( width: 40, height: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.black12),
                                      child: const Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('May',style: TextStyle(fontSize: 10,color:Color(0xff868686)),),
                                          ),
                                          Text('15',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color:Color(0xff868686)),),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(20.0,25.0,0.0,0.0),
                                        child: Text( 'Odoo - Monthly',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686)),),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(50.0,0.0,0.0,0.0),
                                        child: Text( 'Last Change, 14 may, 2022',style: TextStyle(fontSize: 12.0,color:Color(0xff868686)), ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(100.0,30.0,10.0,0.0),
                                    child: Container( height: 50,width: 80,decoration:  BoxDecoration( color: Colors.white,
                                      border: const Border(
                                        top: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                        right: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                        bottom: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                        left: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                      child: const Center(child: Text('\$150',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff868686)),)),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                       const SizedBox(width:20.0,),
                     ],
                   ),
                   const SizedBox(height:20.0,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const SizedBox(width:20.0,),
                      Container(
                           height: 550,
                           width: 500,
                           decoration: BoxDecoration(
                             color: const Color(0xfffffff9),
                             borderRadius: BorderRadius.circular(15.0), // Adjust
                           ),
                           child:  Column(
                             children: [
                              const Row(
                                children:[
                                 SizedBox(height:30,),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                                    child: Text('Recent Transaction', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color:Color(0xff868686)),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                                      child:Row(
                                        children: [
                                          SizedBox(width:100),
                                          Text('View all', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686))), SizedBox(width:10),
                                          Icon(Icons.arrow_forward_ios,size: 15.0,color:Color(0xff868686)),
                                        ],
                                      ),
                                  ),
                                ], // Heading for revenue
                              ),
                             const  Row(
                                children: [
                                   SizedBox(width: 20.0,),
                                    Text('All',style: TextStyle(fontSize: 18,color:Color(0xff868686),),),
                                  SizedBox(width: 80.0, height: 20,),
                                     Text('Revenue', style: TextStyle(fontSize: 18,color:Color(0xff868686),),),
                                  SizedBox(width: 160.0,),
                                     Text('Expenses', style: TextStyle(fontSize: 18, color:Color(0xff868686),),),
                                ],
                              ),
                             const SizedBox(height: 10,),
                              Row(
                                children: [
                                 const  SizedBox(width: 20.0,),
                                  Container(
                                      width:40,
                                      height:40,decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(5.0,),
                                    ),
                                      child: const Icon(Icons.account_balance_wallet_outlined,),),
                                       const  SizedBox(width: 60.0,),
                                  const Column(
                                    children: [
                                      Text('Profit',style: TextStyle(fontSize: 18,color:Color(0xff868686),),),
                                     Text('Quc & Car',style: TextStyle(fontSize: 12, color:Color(0xff868686)),),
                                    ],
                                  ),
                                  const SizedBox(width: 170.0,),
                                  const  Column(children: [
                                         Text('\$16000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                        Text('17th May, 2023',style: TextStyle(fontSize: 12,color:Color(0xff868686)),),
                                    ],
                                  ),
                                ],
                              ),
                               const SizedBox(height: 10,),
                              Row(
                                children: [
                                  const  SizedBox(width: 20.0,),
                                   Container(
                                      width:40,
                                      height:40,decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(5.0,),
                                    ),
                                      child: const Icon(Icons.propane,),),
                                    const SizedBox(width: 60.0,),
                                  const Column(
                                    children: [
                                       Text('Grant',style: TextStyle(fontSize: 18, color:Color(0xff868686),),),
                                        Text('xl cate',style: TextStyle(fontSize: 12, color:Color(0xff868686),),),
                                    ],
                                  ),
                                  const SizedBox(width: 180.0,),
                                 const  Column(children: [
                                      Text('\$20000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                      Text('17th May, 2023',style: TextStyle(fontSize: 12,color:Color(0xff868686)),),
                                    ],
                                  ),
                                ],
                              ),
                              const Divider(height:2.0,thickness:1.0,indent:5.0,endIndent:5.0,color:Colors.black12,),
                               const SizedBox(height: 10,),
                               Row(
                                 children: [
                                   const  SizedBox(width: 20.0,),
                                    Container(
                                       width:40,
                                       height:40,decoration: BoxDecoration(
                                       color: Colors.black12,
                                       borderRadius: BorderRadius.circular(5.0,),
                                     ),
                                       child: const Icon(Icons.propane,),),
                                   const SizedBox(width: 60.0,),
                                   const Column(
                                     children: [
                                       Text('Grant',style: TextStyle(fontSize: 18, color:Color(0xff868686),),),
                                       Text('xl cate',style: TextStyle(fontSize: 14, color:Color(0xff868686),),),
                                     ],
                                   ),
                                   const SizedBox(width: 180.0,),
                                   const  Column(children: [
                                    Text('\$20090.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                     Text('17th May, 2023',style: TextStyle(fontSize: 12,color:Color(0xff868686),),),
                                   ],
                                   ),
                                 ],
                               ),
                               const Divider(height:2.0,thickness:1.0,indent:5.0,endIndent:5.0,color:Colors.black12,),
                               const SizedBox(height: 10,),
                               Row(
                                 children: [
                                   const  SizedBox(width: 20.0,),
                                   Container(
                                       width:40,
                                       height:40,decoration: BoxDecoration(
                                       color: Colors.black12,
                                       borderRadius: BorderRadius.circular(5.0,),
                                     ),
                                       child: const Icon(Icons.propane,),),
                                   const SizedBox(width: 60.0,),
                                   const Column(
                                     children: [
                                      Text('Grant',style: TextStyle(fontSize: 18, color:Color(0xff868686),),),
                                       Text('xl cate',style: TextStyle(fontSize: 12, color:Color(0xff868686),),),
                                     ],
                                   ),
                                   const SizedBox(width: 180.0,),
                                   const  Column(children: [
                                     Text('\$20000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                     Text('17th May, 2023',style: TextStyle(fontSize: 12,color:Color(0xff868686),),),
                                   ],
                                   ),
                                 ],
                               ),
                               const Divider(height:2.0,thickness:1.0,indent:5.0,endIndent:5.0,color:Colors.black12,),
                               const  SizedBox(width: 10.0,),
                               Row(
                                 children: [
                                   const  SizedBox(width: 20.0,),
                                    Container(
                                       width:40,
                                       height:40,decoration: BoxDecoration(
                                       color: Colors.black12,
                                       borderRadius: BorderRadius.circular(5.0,),
                                     ),
                                       child: const Icon(Icons.propane,),),
                                   const SizedBox(width: 60.0,),
                                   const Column(
                                     children: [
                                      Text('Grant',style: TextStyle(fontSize: 18, color:Color(0xff868686),),),
                                      Text('xl cate',style: TextStyle(fontSize: 12, color:Color(0xff868686),),),
                                     ],
                                   ),
                                   const SizedBox(width: 180.0,),
                                   const  Column(children: [
                                     Text('\$40000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                     Text('17th May, 2023',style: TextStyle(fontSize: 12,color:Color(0xff868686),),),
                                   ],
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ),
                       const SizedBox(width:20.0,),
                          Column(
                           children: [
                             Container(
                                 height: 300,
                                 width: 1020,
                                 decoration: BoxDecoration(
                                   color: const  Color(0xfffffff9),
                                   borderRadius: BorderRadius.circular(10.0),// Adjust the radius as needed
                                  ),
                                   child: Column(
                                     children: [
                                   const SizedBox(height: 20.0,),
                                   const  Text('Statistics',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Color(0xff868686),),),
                                       Expanded(
                                         child: BarChart(
                                           BarChartData(
                                             barGroups: [
                                               BarChartGroupData(x: 2,
                                                 barRods: [
                                                   BarChartRodData(toY: 40,),
                                                   BarChartRodData(toY: 40,),
                                                 ],
                                               ),
                                               BarChartGroupData(x: 4,
                                                 barRods: [
                                                   BarChartRodData(toY: 30,),
                                                   BarChartRodData(toY: 30,),
                                                 ],
                                               ),
                                               BarChartGroupData(x: 6,
                                                 barRods: [
                                                   BarChartRodData(toY: 20,),
                                                   BarChartRodData(toY: 20,),
                                                 ],
                                               ),
                                               BarChartGroupData(x: 8,
                                                 barRods: [
                                                   BarChartRodData(toY: 10,),
                                                   BarChartRodData(toY: 10,),
                                                 ],
                                               ),
                                             ],
                                             alignment: BarChartAlignment.spaceAround,
                                             groupsSpace: 20,
                                             titlesData: const FlTitlesData(
                                              /* leftTitles:  AxisTitles(
                                                 axisNameWidget: const Text('Data on left'),
                                                 axisNameSize: 20,
                                                 drawBelowEverything: false,
                                                 sideTitles: SideTitles(
                                                   //reservedSize:40,
                                                   showTitles:true,
                                                   getTitlesWidget: (double value, TitleMeta meta ){
                                                     return Text (meta.formattedValue, style: const TextStyle(
                                                       color: Colors.blue,
                                                       fontWeight: FontWeight.bold,
                                                     ),);
                                                   },
                                                   // interval: 4.0,
                                                 ),
                                               ),*/
                                             ),
                                            /* rangeAnnotations: RangeAnnotations(
                                               horizontalRangeAnnotations: [
                                                 HorizontalRangeAnnotation(
                                                   y1:4.0,
                                                   y2:8.0,
                                                   color:Colors.red.withOpacity(0.5),
                                                 ),
                                               ],
                                             ),*/
                                             //backgroundColor: Colors.purple.withOpacity(0.15),
                                             barTouchData: BarTouchData(
                                               //enabled: false,
                                               mouseCursorResolver: ( FlTouchEvent event, BarTouchResponse? response){
                                                 if(response == null || response.spot == null){
                                                   return SystemMouseCursors.grab;
                                                 }
                                                 return SystemMouseCursors.click;
                                               },
                                               touchTooltipData: BarTouchTooltipData(
                                                 tooltipRoundedRadius: 3.0,
                                                 tooltipMargin: 5.0,
                                                 tooltipHorizontalAlignment: FLHorizontalAlignment.center,
                                                 maxContentWidth: 400,
                                                 fitInsideHorizontally: true,
                                                 fitInsideVertically: true,
                                               ),
                                             ),
                                           ),
                                           ),
                                         ),
                                     ],
                                    ),
                                  ),
                             const SizedBox(height:20.0,),
                             Container(
                                 height: 360,
                                 width: 1020,
                                 decoration: BoxDecoration(
                                   color: const Color(0xfffffff9),
                                   borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                                 ),
                                 //color: Colors.white,
                                child: Column(
                                  children: [
                                const  Expanded(
                                    flex: 2,
                                    child: Row(
                                        children:[
                                          SizedBox(width:30,),
                                          Text('Expenses Break down',style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.black12),),
                                          SizedBox(width:600,),
                                          Text('Compare to last Month',style: TextStyle(color: Colors.black26),),
                                        ],
                                      ),
                                  ),
                                    Expanded(
                                      flex: 10,
                                      child: Row(
                                        children: [
                                         const SizedBox(width:20,),
                                          Expanded(
                                            child: Column(
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color:Colors.black12,
                                                        ),
                                                        width: 50,
                                                        height: 60,
                                                        child: const Icon(Icons.ac_unit_rounded),
                                                      ),
                                                     const SizedBox(width:30,),
                                                   const  Column(
                                                      children: [
                                                        SizedBox(height:45,),
                                                        Text('Container',style: TextStyle(fontSize: 12),),
                                                          Row(
                                                          children: [
                                                            SizedBox(width:20,height:10,),
                                                            Text('\$2500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                            SizedBox(width:20,),
                                                            Icon(Icons.arrow_forward,color:Colors.green,)
                                                          ],
                                                        ),
                                                          Row(
                                                          children: [
                                                            SizedBox(width:40,),
                                                             Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                            SizedBox(width:20,),
                                                            Icon(Icons.arrow_upward,color:Colors.red,)
                                                          ],
                                                        ),
                                                        ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  children: [
                                                   Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color:Colors.black12,
                                                        ),
                                                        width: 50,
                                                        height: 60,
                                                        child: const Icon(Icons.ac_unit_rounded),
                                                      ),
                                                    const SizedBox(width:30,),
                                                    const  Column(
                                                      children: [
                                                        SizedBox(height:45,),
                                                        Text('Container',style: TextStyle(fontSize: 12),),
                                                        Row(
                                                          children: [
                                                            SizedBox(width:20,height:10,),
                                                            Text('\$2500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                            SizedBox(width:20,),
                                                            Icon(Icons.arrow_forward,color:Colors.green,)
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            SizedBox(width:40,),
                                                            Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                            SizedBox(width:20,),
                                                            Icon(Icons.arrow_upward,color:Colors.red,)
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                            ),
                                          ),
                                          const VerticalDivider(width:5.0, thickness:1.0, indent:4.0,endIndent:4.0 ,color:Colors.black12,),
                                          const SizedBox(width:40,),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color:Colors.black12,
                                                        ),
                                                        width: 50,
                                                        height: 60,
                                                        child: const Icon(Icons.ac_unit_rounded),
                                                      ),
                                                      const SizedBox(width:30,),
                                                      const  Column(
                                                        children: [
                                                          SizedBox(height:45,),
                                                          Text('Container',style: TextStyle(fontSize: 12),),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:20,height:10,),
                                                              Text('\$2500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_forward,color:Colors.green,)
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:40,),
                                                              Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_upward,color:Colors.red,)
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color:Colors.black12,
                                                        ),
                                                        width: 50,
                                                        height: 60,
                                                        child: const Icon(Icons.ac_unit_rounded),
                                                      ),
                                                      const SizedBox(width:30,),
                                                      const  Column(
                                                        children: [
                                                          SizedBox(height:45,),
                                                          Text('Container',style: TextStyle(fontSize: 12),),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:20,height:10,),
                                                              Text('\$2500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_forward,color:Colors.green,)
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:40,),
                                                              Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_upward,color:Colors.red,)
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const  VerticalDivider(width:5.0, thickness:1.0, indent:4.0,endIndent:4.0 ,color:Colors.black12,),
                                          const SizedBox(width:20,),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color:Colors.black12,
                                                        ),
                                                        width: 50,
                                                        height: 60,
                                                        child: const Icon(Icons.ac_unit_rounded),
                                                      ),
                                                      const SizedBox(width:30,),
                                                      const  Column(
                                                        children: [
                                                          SizedBox(height:45,),
                                                          Text('Container',style: TextStyle(fontSize: 12),),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:20,height:10,),
                                                              Text('\$2500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_forward,color:Colors.green,)
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:40,),
                                                              Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_upward,color:Colors.red,)
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(5.0),
                                                          color:Colors.black12,
                                                        ),
                                                        width: 50,
                                                        height: 60,
                                                        child: const Icon(Icons.ac_unit_rounded),
                                                      ),
                                                      const SizedBox(width:30,),
                                                      const  Column(
                                                        children: [
                                                          SizedBox(height:45,),
                                                          Text('Container',style: TextStyle(fontSize: 12),),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:20,height:10,),
                                                              Text('\$2500',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_forward,color:Colors.green,)
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              SizedBox(width:40,),
                                                              Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                              SizedBox(width:20,),
                                                              Icon(Icons.arrow_upward,color:Colors.red,)
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                               ),

                           ],
                         ),
                     ],
                   ),
                 ],
               ),
             ),
           ),
          ],
         ),
       ),
     );
   }
 }



