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
           Container(
             height: 1000,
           width: 200,
           color: Colors.black,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               //mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0),
                   child:Container(
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
                   child:Container(
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
               ],
             ),
           ),
           Container(
             decoration: BoxDecoration(
               color: Colors.black12,
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
                              height: 20,
                              width: 500,
                              child: Text("Total Balance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black12),)
                          ),
                        ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: SizedBox(
                           height: 20,
                           width: 500,
                           child: Text("Goals",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black12),)
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: SizedBox(
                           height: 20,
                           width: 300,
                           child: Text("Upcoming Bills",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black12),),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Row(
                          children:[
                            Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black12),),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios,color: Colors.black12,size: 20,),
                            )
                        ]
                       ),
                     ),
                   ],
                 ),
                     Row(
                   children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: [
                             const  Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,20.0,20.0,20.0,),
                                      child: Text('\$240,399',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(250.0,30.0,8.0,20.0,),
                                      child: Text('All Accounts',style: TextStyle(fontSize: 10),),
                                    ),
                                ],
                              ),
                            const SizedBox(
                              height: 20.0,
                              child: Divider(
                                height:1 ,
                                thickness:1 ,
                                color: Colors.black12,
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
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                                  ),
                                child: const Row(
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(20.0,40.0,0.0,0.0,),
                                                  child: Text('Account type',style: TextStyle(fontSize: 18,color: Colors.white),),
                                                ),
                                               SizedBox(width: 250.0,),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(20.0,40.0,0.0,0.0,),
                                                  child: Icon(
                                                    Icons.view_sidebar,
                                                    color: Colors.white,
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
                                                 child: Text( ' \$25,000', style: TextStyle(fontSize: 24,color: Colors.white), ),
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
                                     Text( 'Previous',style: TextStyle(fontSize: 18,color: Colors.black12),),
                                   ],
                                  ),
                                  Icon( Icons.more_horiz,color: Colors.black12, ),
                                  Row(
                                    children: [
                                    Text( 'Next',style: TextStyle(fontSize: 18,),),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0.0,10.0,20.0,10.0),
                                      child: Icon( Icons.play_circle_outline_outlined, ),
                                    ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                        ),
                        child: Column(
                          children: [
                             Row(
                              children: [
                               const  Padding(
                                  padding: EdgeInsets.fromLTRB(20.0,40.0,8.0,0.0,),
                                  child: Text( '\$240,399', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0.0,40.0,200.0,0.0,),
                                  child: Container(width: 30, height: 30, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.black12,), child: const Icon( Icons.edit, )),
                                ),
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(8.0,40.0,8.0,8.0,),
                                  child: Text( 'May 2023',style: TextStyle(fontSize: 14), ),
                                ),
                              ],
                            ),
                            const Divider(height: 10.0,thickness: 2,indent: 30.0,endIndent:30.0 ,color: Colors.black12,),
                            Row(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(20.0,20.0,0.0,5.0,),
                                          child: Icon( Icons.balance_rounded, ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2.0,15.0,0.0,0.0,),
                                          child: Text( 'Target Achieved',style: TextStyle(fontSize: 14), ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(30.0,0.0,0.0,0.0,),
                                      child: Text('\$240,399',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(20.0,20.0,0.0,5.0,),
                                          child: Icon( Icons.balance_rounded, ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(2.0,20.0,0.0,0.0,),
                                          child: Text( 'This march target',style: TextStyle(fontSize: 14), ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(30.0,0.0,0.0,0.0,),
                                      child: Text('\$240,699',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: Container(
                                    height: 100,
                                   width: 300,
                                   color: Colors.white,
                                    child:SfRadialGauge(
                                      enableLoadingAnimation: true,
                                        animationDuration: 2000,
                                        axes: <RadialAxis>[
                                          RadialAxis(
                                              minimum: 0,
                                              maximum: 40,
                                            interval: 10,
                                            labelsPosition: ElementsPosition.inside,
                                            ranges: <GaugeRange>[
                                              GaugeRange(
                                               startValue:0.0,
                                                endValue: 18.4,
                                                color: Colors.amber,
                                              ),
                                              GaugeRange(
                                                startValue:18.5,
                                                endValue: 24.9,
                                                color: Colors.green,
                                              ),
                                              GaugeRange(
                                                startValue:25.0,
                                                endValue: 40.0,
                                                color: Colors.red,
                                              ),
                                            ],
                                            pointers: const<GaugePointer>[
                                            NeedlePointer(
                                              value: 22.5,
                                              needleEndWidth: 5,
                                             enableAnimation: true,
                                             ),
                                            ],
                                            annotations: const<GaugeAnnotation>[
                                              GaugeAnnotation(
                                                  widget: Text(
                                                    '22.5', style : TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                   ),
                                                  ),
                                                angle: 90.0,
                                                positionFactor: 0.5,
                                              ),
                                            ],
                                          ),
                                       ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 300,
                        width: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0,50.0,0.0,0.0,),
                                  child: Container( width: 40, height: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.black12),
                                     child: const Column(
                                      children: [
                                       Padding(
                                         padding: EdgeInsets.all(8.0),
                                         child: Text('May',style: TextStyle(fontSize: 10,),),
                                       ),
                                        Text('15',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                                const Column(
                                  children: [
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(30.0,45.0,0.0,0.0),
                                     child: Text( 'Odoo - Monthly',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(50.0,0.0,0.0,0.0),
                                     child: Text( 'Last Change, 14 may, 2022',style: TextStyle(fontSize: 12.0,), ),
                                   ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(140.0,50.0,10.0,0.0),
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
                                    child: const Center(child: Text('\$150',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10.0,50.0,0.0,0.0,),
                                  child: Container( width: 40, height: 70,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0),color: Colors.black12),
                                     child: const Column(
                                      children: [
                                       Padding(
                                         padding: EdgeInsets.all(8.0),
                                         child: Text('Jun',style: TextStyle(fontSize: 10,),),
                                       ),
                                        Text('16',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                                const Column(
                                  children: [
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(30.0,45.0,0.0,0.0),
                                     child: Text( 'M365 - Yearly',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(50.0,0.0,0.0,0.0),
                                     child: Text( 'Last Change, 17  June, 2022',style: TextStyle(fontSize: 12.0,), ),
                                   ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(140.0,50.0,10.0,0.0),
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
                                    child: const Center(child: Text('\$559',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                   ],
                 ),
                     Row(
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   // crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    const  Padding(
                       padding: EdgeInsets.fromLTRB(8.0,8.0,80.0,8.0,),
                       child: SizedBox(
                           height: 25,
                           width: 200,
                           child: Text("Recent Transaction",style: TextStyle(fontSize: 24,),)
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.fromLTRB(8.0,8.0,230.0,8.0,),
                        child: Container(
                           color: Colors.transparent,
                           height: 20,
                           width: 80,
                           child: const Row(
                             children: [
                                Text("View All", style: TextStyle(fontSize: 14,),),
                                Icon(Icons.arrow_forward_ios,size: 10.0,),
                             ],
                           ),

                          ),
                     ),

                     const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: SizedBox(
                           height: 25,
                           width: 100,
                           child: Text("Statistics",style: TextStyle(fontSize: 24,),),
                       ),
                     ),
                   ],
                 ),
                     Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: 600,
                         width: 500,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5.0), // Adjust the radius as needed
                         ),
                         child:  Column(
                           children: [
                           const  Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(30.0,20.0,15.0,0.0,),
                                  child: Text('All',style: TextStyle(fontSize: 18),),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(30.0,20.0,150.0,0.0,),
                                  child: Text('Revenue', style: TextStyle(fontSize: 18),),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(30.0,20.0,15.0,0.0,),
                                  child: Text('Expenses', style: TextStyle(fontSize: 18),),
                                ),
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:const  EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0,),
                                  child: Container(
                                    width:40,
                                    height:40,decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0,),
                                  ),
                                    child: const Icon(Icons.propane,),),
                                ),
                                const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,30.0,190.0,0.0,),
                                      child: Text('profit',style: TextStyle(fontSize: 18),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,0.0,190.0,0.0,),
                                      child: Text('Quc & Car',style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                               const  Column(children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0.0,30.0,20.0,8.0),
                                      child: Text('\$16000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0.0,0.0,20.0,8.0),
                                      child: Text('17th May, 2023',style: TextStyle(fontSize: 12,),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:const  EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0,),
                                  child: Container(
                                    width:40,
                                    height:40,decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0,),
                                  ),
                                    child: const Icon(Icons.propane,),),
                                ),
                                const Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,30.0,200.0,0.0,),
                                      child: Text('Grant',style: TextStyle(fontSize: 18),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,0.0,200.0,0.0,),
                                      child: Text('xl cate',style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                               const  Column(children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0),
                                      child: Text('\$20000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,8.0),
                                      child: Text('17th May, 2023',style: TextStyle(fontSize: 12,),),
                                    ),

                                  ],
                                ),
                              ],
                            ),
                            const Divider(height:2.0,thickness:1.0,indent:5.0,endIndent:5.0,color:Colors.black12,),
                             Row(
                               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Padding(
                                   padding:const  EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0,),
                                   child: Container(
                                     width:40,
                                     height:40,decoration: BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: BorderRadius.circular(5.0,),
                                   ),
                                     child: const Icon(Icons.propane,),),
                                 ),
                                 const Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,30.0,200.0,0.0,),
                                       child: Text('Grant',style: TextStyle(fontSize: 18),),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,0.0,200.0,0.0,),
                                       child: Text('xl cate',style: TextStyle(fontSize: 14),),
                                     ),
                                   ],
                                 ),
                                 const  Column(children: [
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0),
                                     child: Text('\$20000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,8.0),
                                     child: Text('17th May, 2023',style: TextStyle(fontSize: 12,),),
                                   ),

                                 ],
                                 ),
                               ],
                             ),
                             const Divider(height:2.0,thickness:1.0,indent:5.0,endIndent:5.0,color:Colors.black12,),
                             Row(
                               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Padding(
                                   padding:const  EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0,),
                                   child: Container(
                                     width:40,
                                     height:40,decoration: BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: BorderRadius.circular(5.0,),
                                   ),
                                     child: const Icon(Icons.propane,),),
                                 ),
                                 const Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,30.0,200.0,0.0,),
                                       child: Text('Grant',style: TextStyle(fontSize: 18),),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,0.0,200.0,0.0,),
                                       child: Text('xl cate',style: TextStyle(fontSize: 14),),
                                     ),
                                   ],
                                 ),
                                 const  Column(children: [
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0),
                                     child: Text('\$20000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,8.0),
                                     child: Text('17th May, 2023',style: TextStyle(fontSize: 12,),),
                                   ),

                                 ],
                                 ),
                               ],
                             ),
                             const Divider(height:2.0,thickness:1.0,indent:5.0,endIndent:5.0,color:Colors.black12,),
                             Row(
                               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Padding(
                                   padding:const  EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0,),
                                   child: Container(
                                     width:40,
                                     height:40,decoration: BoxDecoration(
                                     color: Colors.black12,
                                     borderRadius: BorderRadius.circular(5.0,),
                                   ),
                                     child: const Icon(Icons.propane,),),
                                 ),
                                 const Column(
                                   children: [
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,30.0,200.0,0.0,),
                                       child: Text('Grant',style: TextStyle(fontSize: 18),),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.fromLTRB(20.0,0.0,200.0,0.0,),
                                       child: Text('xl cate',style: TextStyle(fontSize: 14),),
                                     ),
                                   ],
                                 ),
                                 const  Column(children: [
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(20.0,30.0,20.0,8.0),
                                     child: Text('\$20000.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.fromLTRB(20.0,0.0,20.0,8.0),
                                     child: Text('17th May, 2023',style: TextStyle(fontSize: 12,),),
                                   ),

                                 ],
                                 ),
                               ],
                             ),
                             //k
                           ],
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
                           Padding(
                              padding: const EdgeInsets.all(8.0),
                               child: Container(
                               height: 260,
                               width: 1000,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10.0),// Adjust the radius as needed
                                ),
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
                                     titlesData:  FlTitlesData(
                                       leftTitles:  AxisTitles(
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

                                       ),
                                     ),
                                     rangeAnnotations: RangeAnnotations(
                                       horizontalRangeAnnotations: [
                                         HorizontalRangeAnnotation(
                                           y1:4.0,
                                           y2:8.0,
                                           color:Colors.red.withOpacity(0.5),

                                         ),
                                       ],
                                     ),
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
                              ),
                            const Padding(
                             padding: EdgeInsets.all(20.0),
                             child:Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               //crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(8.0,0.0,500.0,0.0,),
                                    child: Text('Expenses Break down',style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color:Colors.black12),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
                                    child: Text('Compare to last Month',style: TextStyle(color: Colors.black26),),
                                  ),
                                ],
                             )
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 260,
                               width: 1000,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                               ),
                               //color: Colors.white,
                               child:  Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(30.0,30.0,8.0,8.0,),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5.0),
                                                  color:Colors.black12,
                                                ),
                                                width: 50,
                                                height: 60,
                                                child: const Icon(Icons.ac_unit_rounded),
                                              ),
                                            ),
                                           const  Column(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.fromLTRB(0.0,30.0,8.0,8.0,),
                                                  child: Text('Text1',style: TextStyle(fontSize: 12),),
                                                ),
                                                  Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,0.0,),
                                                      child: Text('\$2500',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                    ),
                                                    Icon(Icons.arrow_forward,color:Colors.green,)
                                                  ],
                                                ),
                                                  Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                      child: Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                    ),
                                                    Icon(Icons.arrow_upward,color:Colors.red,)
                                                  ],
                                                ),
                                                //l
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(30.0,30.0,8.0,8.0,),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5.0),
                                                  color:Colors.black12,
                                                ),
                                                width: 50,
                                                height: 60,
                                                child: const Icon(Icons.ac_unit_rounded),
                                              ),
                                            ),
                                           const  Column(
                                              children: [
                                                Padding(
                                                  padding:  EdgeInsets.fromLTRB(0.0,30.0,8.0,8.0,),
                                                  child: Text('Text1',style: TextStyle(fontSize: 12),),
                                                ),
                                                  Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,0.0,),
                                                      child: Text('\$2500',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                    ),
                                                    Icon(Icons.arrow_forward,color:Colors.green,)
                                                  ],
                                                ),
                                                  Row(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                      child: Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                    ),
                                                    Icon(Icons.arrow_upward,color:Colors.red,)
                                                  ],
                                                ),
                                                //l
                                              ],
                                            ),
                                          ],
                                        ),
                                        //m
                                      ],
                                     ),
                                    const  VerticalDivider(width:5.0, thickness:1.0, indent:4.0,endIndent:4.0 ,color:Colors.black12,),
                                     Column(
                                       children: [
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.fromLTRB(30.0,30.0,8.0,8.0,),
                                               child: Container(
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(5.0),
                                                   color:Colors.black12,
                                                 ),
                                                 width: 50,
                                                 height: 60,
                                                 child: const Icon(Icons.ac_unit_rounded),
                                               ),
                                             ),
                                             const  Column(
                                               children: [
                                                 Padding(
                                                   padding:  EdgeInsets.fromLTRB(0.0,30.0,8.0,8.0,),
                                                   child: Text('Text1',style: TextStyle(fontSize: 12),),
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                     ),
                                                     Icon(Icons.arrow_forward,color:Colors.green,)
                                                   ],
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                     ),
                                                     Icon(Icons.arrow_upward,color:Colors.red,)
                                                   ],
                                                 ),
                                                 //l
                                               ],
                                             ),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.fromLTRB(30.0,30.0,8.0,8.0,),
                                               child: Container(
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(5.0),
                                                   color:Colors.black12,
                                                 ),
                                                 width: 50,
                                                 height: 60,
                                                 child: const Icon(Icons.ac_unit_rounded),
                                               ),
                                             ),
                                             const  Column(
                                               children: [
                                                 Padding(
                                                   padding:  EdgeInsets.fromLTRB(0.0,30.0,8.0,8.0,),
                                                   child: Text('Text1',style: TextStyle(fontSize: 12),),
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                     ),
                                                     Icon(Icons.arrow_forward,color:Colors.green,)
                                                   ],
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                     ),
                                                     Icon(Icons.arrow_upward,color:Colors.red,)
                                                   ],
                                                 ),
                                                 //l
                                               ],
                                             ),
                                           ],
                                         ),
                                         //m
                                       ],
                                     ),
                                     const  VerticalDivider(width:5.0, thickness:1.0, indent:4.0,endIndent:4.0 ,color:Colors.black12,),
                                     Column(
                                       children: [
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.fromLTRB(30.0,30.0,8.0,8.0,),
                                               child: Container(
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(5.0),
                                                   color:Colors.black12,
                                                 ),
                                                 width: 50,
                                                 height: 60,
                                                 child: const Icon(Icons.ac_unit_rounded),
                                               ),
                                             ),
                                             const  Column(
                                               children: [
                                                 Padding(
                                                   padding:  EdgeInsets.fromLTRB(0.0,30.0,8.0,8.0,),
                                                   child: Text('Text1',style: TextStyle(fontSize: 12),),
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                     ),
                                                     Icon(Icons.arrow_forward,color:Colors.green,)
                                                   ],
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                     ),
                                                     Icon(Icons.arrow_upward,color:Colors.red,)
                                                   ],
                                                 ),
                                                 //l
                                               ],
                                             ),
                                           ],
                                         ),
                                         Row(
                                           children: [
                                             Padding(
                                               padding: const EdgeInsets.fromLTRB(30.0,30.0,8.0,8.0,),
                                               child: Container(
                                                 decoration: BoxDecoration(
                                                   borderRadius: BorderRadius.circular(5.0),
                                                   color:Colors.black12,
                                                 ),
                                                 width: 50,
                                                 height: 60,
                                                 child: const Icon(Icons.ac_unit_rounded),
                                               ),
                                             ),
                                             const  Column(
                                               children: [
                                                 Padding(
                                                   padding:  EdgeInsets.fromLTRB(0.0,30.0,8.0,8.0,),
                                                   child: Text('Text1',style: TextStyle(fontSize: 12),),
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                                     ),
                                                     Icon(Icons.arrow_forward,color:Colors.green,)
                                                   ],
                                                 ),
                                                 Row(
                                                   children: [
                                                     Padding(
                                                       padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0,),
                                                       child: Text('\$2500',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
                                                     ),
                                                     Icon(Icons.arrow_upward,color:Colors.red,)
                                                   ],
                                                 ),
                                                 //l
                                               ],
                                             ),
                                           ],
                                         ),
                                         //m
                                       ],
                                     ),

                                     //di
                                   ],
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ],
             ),
           ),
          ],
         ),
       ),
     );
   }
 }



