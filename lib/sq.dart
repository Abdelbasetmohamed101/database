import 'package:database/cubit/db_cubit.dart';
import 'package:database/cubit/db_states.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter/material.dart';

class Sq extends StatelessWidget {
  const Sq({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDoCubit, ToDoStates>(
        listener: (context, state) {},
        builder: (BuildContext context, ToDoStates state) {
          return Scaffold();
        });
  }
}
