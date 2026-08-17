import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/bloc/counter_bloc.dart';
import 'package:flutter_application_5/cubits/fav_cubit.dart';
import 'package:flutter_application_5/cubits/loading_cubit.dart';
import 'package:flutter_application_5/cubits/password_visible_cubit.dart';
import 'package:flutter_application_5/cubits/task_cubit.dart';
import 'package:flutter_application_5/screens/bottom_nav_bar_screen.dart';
import 'package:flutter_application_5/screens/home_screen.dart';
import 'package:flutter_application_5/screens/login_screen.dart';
import 'package:flutter_application_5/screens/task_screen.dart';

void main() {
  runApp(
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider(create: (context) => FavCubit()),

<<<<<<< HEAD
    //     BlocProvider(create: (context) => CounterCubit()),
    //     BlocProvider(create: (context) => togglePasswordVisibility()),
    //   ],

        BlocProvider(
          create: (context) => CounterBloc(),
          child: MaterialApp(home: LoginScreen())),
    
=======
        BlocProvider(create: (context) => CounterCubit()),

        BlocProvider(create: (context) => togglePasswordVisibility()),
      ],

      child: const MaterialApp(home: TaskScreen()),
    ),
>>>>>>> 137f790c02109dcbadbf0377c08b6b849d8e20ce
  );
}
