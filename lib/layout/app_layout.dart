// import 'package:ad_samy/layout/cubit/cubit.dart';
// import 'package:ad_samy/layout/cubit/states.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// class AppLayout extends StatelessWidget {
//   const AppLayout({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (BuildContext context)=>AppCubit(),
//       child: BlocConsumer<AppCubit,AppStates>(
//         listener: (context, state) {
//
//         },
//         builder: (context,state){
//           return Scaffold(
//             bottomNavigationBar: BottomNavigationBar(
//               backgroundColor: Colors.white,
//               iconSize: 15,
//               elevation: 0,
//               currentIndex: AppCubit.get(context).currentIndex,
//               type: BottomNavigationBarType.fixed,
//               onTap: (index){
//                 AppCubit.get(context).changeBottomNavBar(index);
//               },
//               items: AppCubit.get(context).bottomItems,
//             ),
//             body: AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
//           );
//         },
//       ),
//     );
//   }
// }
