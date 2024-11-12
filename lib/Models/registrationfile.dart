class regestmodel{
  bool user;
  regestmodel({required this.user});
  factory regestmodel.fromjson(Map data){
    return regestmodel(user: data['status']);
  }
}