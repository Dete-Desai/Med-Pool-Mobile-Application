import 'dart:convert';
import '../../../Models/Insurance/cover_member_model.dart';
import '../API.dart';
import 'package:http/http.dart' as http;

class CoverMemberAPIRequest extends MedismartAPI {
  Future<List<CoverMemberModel>> getArticles() async {
    var data = await http.get(Uri.parse(super.coveredMembersPath),
        headers: super.headers);
    var jsonData = json.decode(data.body);

    List<CoverMemberModel> coverMember = [];
    for (var json in jsonData) {
      CoverMemberModel coverMemberModel = CoverMemberModel(
          id: json["id"],
          name: json["name"],
          scheme: json["scheme"],
          status: json["status"]);
      coverMember.add(coverMemberModel);
    }
    return coverMember;
  }
}
