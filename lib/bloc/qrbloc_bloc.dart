import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../data/models/qrcode_model.dart';

part 'qrbloc_event.dart';
part 'qrbloc_state.dart';

class QRBloc extends Bloc<QREvent, QRState> {
  QRBloc() : super(QRInitial()) {
    on<QRLoad>((event, emit) => {emit(QRInstanceState(event.code))});
    on<QRInit>((event, emit) => emit(QRInitial()));
  }
}
