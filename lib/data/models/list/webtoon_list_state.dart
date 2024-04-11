import '../item/webtoon_model.dart';

abstract class WebtoonListState {}

class Ready extends WebtoonListState {}

class Loading extends WebtoonListState {}

class Fail extends WebtoonListState {}

class Success extends WebtoonListState {
  final List<WebtoonModel> _list;
  Success({required List<WebtoonModel> list}) : _list = list;

  List<WebtoonModel> get getList => _list;
}