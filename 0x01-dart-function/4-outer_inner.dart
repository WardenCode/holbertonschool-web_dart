void outer(String name, String id) {
  String inner() {
    List<String> splitted_name = name.split(' ');
    String code_name = "${splitted_name[1][0]}.${splitted_name[0]}";
    return "Hello Agent ${code_name} your id is ${id}";
  }

  print(inner());
}
