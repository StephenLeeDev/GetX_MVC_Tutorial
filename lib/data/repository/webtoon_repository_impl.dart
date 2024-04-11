import 'package:flutter/foundation.dart';
import 'package:get/get_connect/http/src/response/response.dart';

import '../../domain/repository/webtoon_repository.dart';
import '../models/list/webtoon_list_model.dart';
import '../models/list/webtoon_list_state.dart' as WebtoonListState;

class WebtoonRepositoryImpl extends WebtoonRepository {

  @override
  Future<WebtoonListState.WebtoonListState> getWebtoonList() async {

    const api = "https://webtoon-crawler.nomadcoders.workers.dev/today";

    try {

      final Response response = await get(api);

      if (response.statusCode == 200) {
        late final WebtoonListState.WebtoonListState state;

        /// Success
        final listModel = WebtoonListModel.fromJson(response.body);
        state = WebtoonListState.Success(list: listModel.getWebtoonList);

        return state;
      }
      return WebtoonListState.Fail();
    } catch (e) {
      debugPrint("$api : ${e.toString()}");
      return WebtoonListState.Fail();
    }
  }

}