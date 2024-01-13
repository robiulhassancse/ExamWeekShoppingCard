// ignore_for_file: sized_box_for_whitespace

import 'dart:ffi';

import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

 var _count =1;

  var imageList =[
  {"image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJpkR-vqkT6kXOUJWHWUzCiEQLOku75x0dUA&usqp=CAU",},
    {"image":"https://pagemaker.b-cdn.net/media/81012/500x500.jpg",},
  {"image":"https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fHww"},
  ];
  var productTitles=[
    'Karam zipper',
    'jam zipper',
    'laram zipper',
  ];
  var prices=[
    '\$51',
    '\$5',
    '\$20',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black26,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search),),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 500,
      //         child: ListView.builder(
      //             itemCount: 30,
      //             itemBuilder: (context,index){
      //           return Container(
      //             // height: double.infinity,
      //             // child: Row(
      //             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             //   children: [
      //             //     Image.asset('assets/images/r.jpg',height: 100,width: 100,fit: BoxFit.cover,),
      //             //    Spacer(),
      //             //     SizedBox(height: 10,),
      //             //     IconButton(onPressed: (){}, icon: Icon(Icons.search),),
      //             //   ],
      //             // ),
      //             child: Card(
      //               elevation: 10,
      //               child: ListTile(
      //
      //                 leading: Image.asset('assets/images/r.jpg',),
      //                 title: Text('Robiul'),
      //                 subtitle: Text('Color'),
      //
      //               ),
      //             ),
      //           );
      //         }),
      //       ),
      //     ],
      //   ),
      // )
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 580,
              color: const Color(0xFFF6F5F5),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('My Bag',style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                        const SizedBox(height: 10,),
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 140,
                              // color: Colors.white,

                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 5,
                                    offset: Offset(2,4),
                                    blurRadius: 10,
                                  ),
                                ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/r.jpg',width: 150,height: 200,fit: BoxFit.cover,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              // crossAxisAlignment: CrossAxisAlignment.baseline,
                                              children: [
                                                const Text('Pullover',style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                                const SizedBox(
                                                  width: 100,
                                                ),
                                                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
                                                // Text('Color: Black Size: L'),
                                              ],
                                            ),
                                            const Text('Color: Black Size: L'),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            // InkWell(
                                            //   onTap: (){},
                                            //   child: Container(
                                            //     height: 30,
                                            //     width: 30,
                                            //     alignment: Alignment.center,
                                            //     // padding: EdgeInsets.only(bottom: 30),
                                            //     decoration: BoxDecoration(
                                            //       borderRadius: BorderRadius.circular(50),
                                            //       color: Colors.white,
                                            //     ),
                                            //     child: Center(child: Text('+',style: TextStyle(
                                            //       fontSize: 24,
                                            //       color: Colors.grey,
                                            //     ),),),
                                            //   ),
                                            // ),

                                          InkWell(
                                            onTap: (){},
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          alignment: Alignment.center,
                                                          decoration: BoxDecoration(
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 10,
                                                                color: Colors.black12,
                                                                spreadRadius: 5,
                                                                offset: Offset(2,5),
                                                              ),
                                                            ],
                                                            borderRadius: BorderRadius.circular(50),
                                                            color: Colors.white,
                                                          ),
                                                          child: IconButton(onPressed: (){},icon: const Icon(Icons.remove,color: Colors.grey,),),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(width: 10,),
                                                    Text(_count.toString(),style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.w400,
                                                    ),),
                                                    const SizedBox(width: 10,),
                                                    InkWell(
                                                      onTap: (){

                                                        setState(() {
                                                          _count++;
                                                        });
                                                      },
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            height: 40,
                                                            width: 40,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius: 10,
                                                                  color: Colors.black12,
                                                                  spreadRadius: 5,
                                                                  offset: Offset(2,5),
                                                                ),
                                                              ],
                                                              borderRadius: BorderRadius.circular(50),
                                                              color: Colors.white,
                                                            ),
                                                            child: IconButton(onPressed: (){},icon: const Icon(Icons.add,color: Colors.grey,)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 60,),
                                                    const Text('51\$',style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 22,
                                                    ),),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                          ],
                                        ),
                                      ],

                                    ),
                                  ),
                                ],

                              ),
                            ),
                          ),
                        ),
                    const SizedBox(height: 15,),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 140,
                          // color: Colors.white,

                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 5,
                                  offset: Offset(2,4),
                                  blurRadius: 10,
                                ),
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/r.jpg',width: 150,height: 200,fit: BoxFit.cover,),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                                          children: [
                                            const Text('T-Shirt',style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                            const SizedBox(
                                              width: 100,
                                            ),
                                            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
                                            // Text('Color: Black Size: L'),
                                          ],
                                        ),
                                        const Text('Color: Black   Size: L'),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        // InkWell(
                                        //   onTap: (){},
                                        //   child: Container(
                                        //     height: 30,
                                        //     width: 30,
                                        //     alignment: Alignment.center,
                                        //     // padding: EdgeInsets.only(bottom: 30),
                                        //     decoration: BoxDecoration(
                                        //       borderRadius: BorderRadius.circular(50),
                                        //       color: Colors.white,
                                        //     ),
                                        //     child: Center(child: Text('+',style: TextStyle(
                                        //       fontSize: 24,
                                        //       color: Colors.grey,
                                        //     ),),),
                                        //   ),
                                        // ),

                                        InkWell(
                                          onTap: (){},
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 10,
                                                              color: Colors.black12,
                                                              spreadRadius: 5,
                                                              offset: Offset(2,5),
                                                            ),
                                                          ],
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.white,
                                                        ),
                                                        child: IconButton(onPressed: (){},icon: const Icon(Icons.remove,color: Colors.grey,),),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Text(_count.toString(),style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                  ),),
                                                  const SizedBox(width: 10,),
                                                  InkWell(
                                                    onTap: (){
                                                      _count++;
                                                      setState(() {

                                                      });
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          alignment: Alignment.center,
                                                          decoration: BoxDecoration(
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 10,
                                                                color: Colors.black12,
                                                                spreadRadius: 5,
                                                                offset: Offset(2,5),
                                                              ),
                                                            ],
                                                            borderRadius: BorderRadius.circular(50),
                                                            color: Colors.white,
                                                          ),
                                                          child: IconButton(onPressed: (){},icon: const Icon(Icons.add,color: Colors.grey,)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 60,),
                                                  const Text('53\$',style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 22,
                                                  ),),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],

                                ),
                              ),
                            ],

                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          height: 140,
                          // color: Colors.white,

                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 5,
                                  offset: Offset(2,4),
                                  blurRadius: 10,
                                ),
                              ]
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/r.jpg',width: 150,height: 200,fit: BoxFit.cover,),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.baseline,
                                          children: [
                                            const Text('Sport Dress',style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                            const SizedBox(
                                              width: 70,
                                            ),
                                            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
                                            // Text('Color: Black Size: L'),
                                          ],
                                        ),
                                        const Text('Color: Black   Size: L'),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        // InkWell(
                                        //   onTap: (){},
                                        //   child: Container(
                                        //     height: 30,
                                        //     width: 30,
                                        //     alignment: Alignment.center,
                                        //     // padding: EdgeInsets.only(bottom: 30),
                                        //     decoration: BoxDecoration(
                                        //       borderRadius: BorderRadius.circular(50),
                                        //       color: Colors.white,
                                        //     ),
                                        //     child: Center(child: Text('+',style: TextStyle(
                                        //       fontSize: 24,
                                        //       color: Colors.grey,
                                        //     ),),),
                                        //   ),
                                        // ),

                                        InkWell(
                                          onTap: (){},
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                          boxShadow: const [
                                                            BoxShadow(
                                                              blurRadius: 10,
                                                              color: Colors.black12,
                                                              spreadRadius: 5,
                                                              offset: Offset(2,5),
                                                            ),
                                                          ],
                                                          borderRadius: BorderRadius.circular(50),
                                                          color: Colors.white,
                                                        ),
                                                        child: IconButton(onPressed: (){},icon: const Icon(Icons.remove,color: Colors.grey,),),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Text(_count.toString(),style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                  ),),
                                                  const SizedBox(width: 10,),
                                                  InkWell(
                                                    onTap: (){
                                                      _count++;
                                                      setState(() {

                                                      });
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          height: 40,
                                                          width: 40,
                                                          alignment: Alignment.center,
                                                          decoration: BoxDecoration(
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 10,
                                                                color: Colors.black12,
                                                                spreadRadius: 5,
                                                                offset: Offset(2,5),
                                                              ),
                                                            ],
                                                            borderRadius: BorderRadius.circular(50),
                                                            color: Colors.white,
                                                          ),
                                                          child: IconButton(onPressed: (){},icon: const Icon(Icons.add,color: Colors.grey,)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 60,),
                                                  const Text('43\$',style: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 22,
                                                  ),),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],

                                ),
                              ),
                            ],

                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Total amount',style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),),
                        SizedBox(width: 220,),
                        Text('124\$',style: TextStyle(
                          fontSize: 20,
                        ),),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      // height: 10,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10,),
                        child: ElevatedButton(
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: const EdgeInsets.all(15),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: (){
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Congratulations'),),);
                        }, child: const Text('Check Out',),),
                      ),
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

