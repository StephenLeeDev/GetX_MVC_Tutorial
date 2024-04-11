import '../../data/models/list/webtoon_list_state.dart' as WebtoonListState;
import '../../data/networking/get_connect_singleton.dart';

abstract class WebtoonRepository extends GetConnectSingleton {
  Future<WebtoonListState.WebtoonListState> getWebtoonList();
}