class UserModel{
  String? name;
  String? email;
  String? password;
  String? phone;
  String? uId;
  String? image;
  bool? isEmailVerified;

  UserModel({
    this.name,
    this.email,
    this.password,
    this.phone,
    this.uId,
    this.image,
    this.isEmailVerified,
  });

  UserModel.fromJson(Map<String, dynamic> json){
    name=json['name'];
    email=json['email'];
    password=json['password'];
    phone=json['phone'];
    uId=json['uId'];
    image=json['image'];
    isEmailVerified=json['isEmailVerified'];
  }

  Map<String, dynamic> toMap(){
    return {
      'name':name,
      'email':email,
      'password':password,
      'phone':phone,
      'uId':uId,
      'image':image,
      'isEmailVerified':isEmailVerified,
    };
  }
}