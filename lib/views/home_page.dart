import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/cubit/cubit.dart';
import 'package:graduation_project/cubit/states.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff14213d),
          title: const Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          
          selectedItemColor: const Color(0xff14213d),
          elevation: 200,
          type: BottomNavigationBarType.fixed,
          currentIndex: HomeCubit.get(context).currentIndex,
          onTap: (value) {
            HomeCubit.get(context).tap(value);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_tree_outlined,
                ),
                label: "process"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.abc,
                ),
                label: "words"),
          ],
        ),
      
        body: HomeCubit.get(context).body[HomeCubit.get(context).currentIndex],
      );
    });
  }

}
