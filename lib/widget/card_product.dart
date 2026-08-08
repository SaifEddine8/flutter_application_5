import 'dart:convert';

import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/cubits/fav_cubit.dart';
import 'package:flutter_application_5/cubits/loading_cubit.dart';
import 'package:flutter_application_5/models/product_model.dart';
import 'package:http/http.dart' as http;

class CardProduct extends StatelessWidget {
  ProductModel item;
  CardProduct({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Column(
            children: [
              Image.network(item.image),
              Text(item.name),
              Text(item.price),
            ],
          ),
          BlocBuilder<FavCubit,bool>(
            builder: (context, state) => 
            Positioned(
              top: 10,
              right: 10,
              child: InkWell(
                onTap: () => context.read<FavCubit>().convertFav(),
                child: Icon(
                  state
                      ? Icons.favorite
                      : Icons.favorite_outline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
