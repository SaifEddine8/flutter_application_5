import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/fav_cubit.dart';
import 'package:flutter_application_5/cubits/loading_cubit.dart';
import 'package:flutter_application_5/screens/bottom_nav_bar_screen.dart';
import 'package:flutter_application_5/screens/home_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavCubit()),

        BlocProvider(create: (context) => CounterCubit()),
      ],

      child: const MaterialApp(home: BottomNavBarScreen()),
    ),
  );
}
