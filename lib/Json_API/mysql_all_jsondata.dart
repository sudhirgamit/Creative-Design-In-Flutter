class Student{
  String id;
  String name;
  String mobile;
  String email;

  Student({this.id,this.name,this.mobile,this.email});

  factory Student.fromJson(Map<String, dynamic> json){
    return Student(
      id: json['id'] as String,
      name: json['name'] as String,
      mobile: json['mobile'] as String,
      email: json['email'] as String
    );
  }
}