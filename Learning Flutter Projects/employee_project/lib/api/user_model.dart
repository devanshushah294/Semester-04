class UserModel {
  late String name;
  late String salary;
  late String gender;
  late String image;

  Map<String, String> getAddMap() {
    Map<String, String> map = {};
    map["Name"] = name;
    map["Salary"] = salary;
    return map;
  }

  Map<String, String> getEditMap(id) {
    Map<String, String> map = {};
    map["Name"] = name;
    map["Salary"] = salary;
    map["id"] = id.toString();
    return map;
  }
}
