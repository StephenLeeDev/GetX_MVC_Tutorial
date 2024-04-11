class WebtoonModel {

  String id;
  String title;
  String thumb;

	WebtoonModel.fromJson(Map<String, dynamic> map):
		id = map["id"],
		title = map["title"],
		thumb = map["thumb"];

}
