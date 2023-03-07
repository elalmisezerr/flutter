class Person{
  late String userName;
  late String passWord;

  Person(String userName,String passWord){

  }
  Person.withInfo(String userName,String passWord){
    this.userName=userName;
    this.passWord=passWord;
  }


}