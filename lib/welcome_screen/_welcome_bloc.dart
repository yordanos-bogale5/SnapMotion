// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeModel extends Equatable {
  const WelcomeModel();

  WelcomeModel copyWith(){
    return const WelcomeModel();
  }

  @override
  List<Object?> get props => [];
}

class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {
  WelcomeBloc(WelcomeState intialState) : super(intialState){
    on<WelcomeInitialEvent>(_onIntialize);
  }

  _onIntialize(
    WelcomeInitialEvent event,
    Emitter<WelcomeState> emit,
  ) async {}
}

class WelcomeState extends Equatable {
  WelcomeState({this.welcomeModelObj});

  WelcomeModel? welcomeModelObj;

  @override
  List<Object?> get props => [welcomeModelObj];
  WelcomeState copyWith({WelcomeModel? welcomeModelObj}){
    return WelcomeState(
      welcomeModelObj: welcomeModelObj ?? this.welcomeModelObj,
    );
}
}

class WelcomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class WelcomeInitialEvent extends WelcomeEvent {
  @override
  List<Object?> get props => [];
}