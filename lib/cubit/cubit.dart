import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/components/process_view_body.dart';
import 'package:graduation_project/components/words_view_body.dart';
import 'package:graduation_project/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit():super(IntialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  List<Widget> body = const [
    ProcessViewBody(),
    WordsViewBody(),
  ];
  int currentIndex = 0 ;

  void tap(int index) {
    currentIndex = index;
    emit(TransportState());
  }
}