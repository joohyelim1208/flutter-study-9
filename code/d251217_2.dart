void main() {
  //
  print("프로그램 실행됨");
  // Human h1 = Human("강성훈", age: 20, gender: "MALE", hairColor: "Black", skinColor: "WHITH");
  
  // 오타가 날 수도 있는데 자동으로 채워지니 오류가 줄어들게 된다! 
  // 뭐가 들어갈지 바로 보여서 편하다
  Human h1 = Human.whiteSkin(
    "강성훈",
    age: 20,
    gender: "MALE",
    hairColor: "Black",
    child: Human("dd", age: 9, gender: "MALE"),
  ); // null할 것은 안 넣어도 됨.
  Human h2 = Human.blackSkin(
    "이지원",
    age: 20,
    gender: "MALE",
    hairColor: "Black",
    child: Human.yellowSkin("dd", age: 9, gender: "MALE"),
  );
}

// 소스코드를 올리면 메모리에 객체가 올라감

// 생성자
// 웹에서 이미지를 가져오는 것이든, 파일에서 가져오는 것이든 간단히 표현 가능
// 객체의 속성을 초기화하는 특별한 함수
// 함수 => 네임드 파라미터, 위치 파라미터 사용 가능!

// 네임드 생성자
// 객체를 생성하면서 특정한 값을 할당하거나 특정한 기능을 수행하게 하고 싶을 때 사용
// 특정한 역할을 한다는걸 객체 생성을 알기 쉽게 하기 위해서
// 생성자에 이름을 붙일 수 있음!

class Human {
  // 클래스 구성요소: 속성(어떤 값을 가지는지 먼저 설계), 메서드(어떤 기능을 구현할거냐), 생성자(값들을 어떻게 초기화 할거냐)
  String name;
  int age;
  String gender;
  String? hairColor; // 머리가 없는 사람은 null이 되도록
  Human? child;
  String skinColor;
  Human.blackSkin(
    this.name, {
    required this.age,
    required this.gender,
    this.hairColor,
    this.child,
    
  }) : this.skinColor = "BLACK" 
  // 생성자의 원래 전체 문법은 길었는데 바뀐 문법
   Human.whiteSkin(
    this.name, {
    required this.age,
    required this.gender,
    this.hairColor,
    this.child,
    required this.skinColor,
    
  }) : this.skinColor = "WHITE" 
   Human.yellowSkin(
    this.name, {
    required this.age,
    required this.gender,
    this.hairColor,
    this.child,
    required this.skinColor,
    
  }) : this.skinColor = "YELLOW" 
}
