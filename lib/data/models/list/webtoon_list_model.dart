import 'package:get/get_connect/http/src/response/response.dart';

import '../item/webtoon_model.dart';

class WebtoonListModel {
  final List<WebtoonModel>? webtoonList;
  List<WebtoonModel> get getWebtoonList => webtoonList ?? [];

  WebtoonListModel({this.webtoonList});

  factory WebtoonListModel.fromJson(List<dynamic> data) {
    return WebtoonListModel(
      webtoonList: (data as List<dynamic>?)
          ?.map((e) => WebtoonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

}