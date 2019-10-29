import 'package:bloc_counter/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  int couter = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CouterblocBloc>(
      builder: (context) => CouterblocBloc(),
      child: BlocListener<CouterblocBloc, CouterblocState>(
        listener: (context, state) {
          if (state is AddState) {
            couter = state.currentCouter;
          } else if (state is SubtractState) {
            couter = state.currentCouter;
          }
        },
        child: BlocBuilder<CouterblocBloc, CouterblocState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Counter App"),
              ),
              body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    couter.toString(),
                  ),
                ),
              ),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      heroTag: "1",
                      onPressed: () {
                        BlocProvider.of<CouterblocBloc>(context).add(
                          AddEvent(currentCouter: couter),
                        );
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      heroTag: "2",
                      onPressed: () {
                        BlocProvider.of<CouterblocBloc>(context).add(
                          AbtractEvent(currentCouter: couter),
                        );
                      },
                      child: Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
