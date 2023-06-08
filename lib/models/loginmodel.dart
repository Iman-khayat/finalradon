class Login{
  final String username;
  final String password;
  final String hashedDate;
  Login({
    required this.username,required this.password,required this.hashedDate
  });

  factory Login.fromJson(dynamic json){
return Login(
   username:json['username'],
   password:json['password'],
   hashedDate: json['hashedDate']
);
  }
  
}