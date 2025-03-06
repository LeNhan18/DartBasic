class Person{
  String name;
  int age ;
  //Contructor
Person(this.age,this.name);
void instroduce(){
  print('Hi, I am $name I $age years old');
}
}
void main(){
  var person =Person(18,'Nhân');
  person.instroduce();

}