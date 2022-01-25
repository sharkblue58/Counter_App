
import 'package:bloc/bloc.dart';
import 'package:counter/shared/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CounterCubit extends Cubit<CounterStates>

{

  CounterCubit() : super(CounterIntialstate());
  static CounterCubit get (context)=> BlocProvider.of(context);


  int counter =0;
  void minus()
  {
    counter--;
    emit(CounterMinusstate());
  }
  void plus()
  {
    counter++;
    emit(CounterPlusstate());
  }

}