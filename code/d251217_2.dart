void main() {
  //
  print("프로그램 실행됨");
  Human h1 = Human("강성훈", age: 20, gender: "MALE", hairColor: "Black");
  Human h2 = Human(
    "이지원",
    age: 20,
    gender: "MALE",
    child: Human("dd", age: 9, gender: "MALE"),
  ); // null할 것은 안 넣어도 됨.
}

// 소스코드를 올리면 메모리에 객체가 올라감

// 생성자
// 객체의 속성을 초기화하는 특별한 함수
// 함수 => 네임드 파라미터, 위치 파라미터 사용 가능!

class Human {
  // 클래스 구성요소: 속성(어떤 값을 가지는지 먼저 설계), 메서드(어떤 기능을 구현할거냐), 생성자(값들을 어떻게 초기화 할거냐)
  String name;
  int age;
  String gender;
  String? hairColor; // 머리가 없는 사람은 null이 되도록
  Human? child;
  Human(
    this.name, {
    required this.age,
    required this.gender,
    this.hairColor,
    this.child,
  }); // 생성자.
  // 생성자의 원래 전체 문법은 길었는데 바뀐 문법
}
