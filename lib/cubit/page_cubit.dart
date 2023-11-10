import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'page_state.dart';

class PageCubit extends Cubit<int> {
  PageCubit() : super(0);

  void setPage(int newPage) {
    emit(newPage);
  }
}
