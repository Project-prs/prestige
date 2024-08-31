import 'package:flutter/material.dart';
import 'package:prestige/Screens/Saved/Saved_Components/saved_place_bloc.dart';

class SavedPlaceBody extends StatefulWidget {
  const SavedPlaceBody({super.key});

  @override
  State<SavedPlaceBody> createState() => _SavedPlaceBodyState();
}

class _SavedPlaceBodyState extends State<SavedPlaceBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(children: List.generate(3, (index) => SavedPlaceBloc())),
    );
  }
}
