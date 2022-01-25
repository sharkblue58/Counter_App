import 'package:counter/shared/cubit/cubit.dart';
import 'package:counter/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class  CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state){},
        builder: (context,state){
          return Scaffold(
            appBar:AppBar(
              title:Text(
                  'counter'
              ),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    CounterCubit.get(context).minus();


                  }, child:Text('Mini')),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('${CounterCubit.get(context).counter}',style: TextStyle(fontWeight:FontWeight.w900,fontSize:50.0),),
                  ),
                  TextButton(onPressed: (){

                    CounterCubit.get(context).plus();


                  }, child:Text('Max')),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
