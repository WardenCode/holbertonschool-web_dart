import '6-password.dart';

class User extends Password {
  late int id;
  late String name;
  late int age;
  late double height;

  User(
      {required int id,
      required String name,
      required int age,
      required double height,
      required String user_password})
      : super(password: user_password) {
    this.id = id;
    this.name = name;
    this.age = age;
    this.height = height;
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
      };

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: '',
    );
  }

  String get user_password {
    return super.password;
  }

  set user_password(String password) {
    super.password = password;
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${super.isValid()})";
  }
}
