import 'dart:async';

import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/loading_cubit.dart';
import 'package:flutter_application_5/db/user_db.dart';
import 'package:flutter_application_5/widget/card_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), context.read<CounterCubit>().convertStatus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterCubit,bool>(
        builder: (context, state) => 
        SafeArea(
          child: context.read<CounterCubit>().state
              ? Column(
                
                  children: [
                    Text('loading'),
                    CircularProgressIndicator(color: Colors.black),
                  ],
                )
              : GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: productsList.length,
                  itemBuilder: ((context, index) =>
                      CardProduct(item: productsList[index])),
                ),
        ),
      ),
    );
  }
}
