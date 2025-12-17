import 'Assigment_2.dart';
import 'dart:io';
import 'package:score_advanced/score.dart'; // lib폴더에 있어야 함

/// 1. Score와 StudentScore 클래스를 구성하기 
// 1-1 점수를 표현하는 Score 클래스를 정의하고, 이를 상속 받아 학생의 정보를 포함하는 StudentScore클래스를 구현
// 점수: int, 출력 메서드: showInfo(), 출력형태: [ 점수: 90 ]
// 학생의 점수는 이름: String, 점수: int, 출력 메서드: showInfo(), 출력형태 [ 이름: 홍길동, 점수: 90 ]
// 해당 학생의 정보를 출력해야 함. 학생이 여러명임을 정보를 주어야 한다

// 시도1: StudentScore클래스 안에 학생의 이름이 들어갈 String타입과 점수가 들어갈 int타입을 넣어주었다.
// 학생의 이름과 점수값이 들어갈 생성자를 만들어 주었다.
class StudentScore {
  String name;
  int Score;
  // 기본 생성자
  StudentScore(this.name, this.Score); // this: 이 클래스 내 변수를 초기화 하겠다는 뜻
}

void main() {
  StudentScore s1 = StudentScore("홍길동", 90);

  print("점수: $s1");
}

/*
class StudentScore {
  int<String, int> students = ['홍길동': 90, ''];
}

// 시도1: StudentScore클래스 안에 학생의 이름이 들어갈 String타입과 점수가 들어갈 int타입을 넣어주었다.
// 학생의 이름과 점수값이 들어갈 생성자를 만들어 주었다.
class StudentScore {
  String name;
  int Score;
  // 기본 생성자
  StudentScore(this.name, this.Score); // this: 이 클래스 내 변수를 초기화 하겠다는 뜻
}


// 1-2 조건. StudentScore클래스의 showInfo()메서드는 반드시 @override로 부모 메서드를 재정의해야 한다.
// 프린트 한 값을 저장해야 한다.
@override
void showInfo() { // 1-3 Score클래스의 showInfo()메서드는 점수만 출력. 
 Score si= Score(10);
 print('$Score');
}
// 1-4 StudentScore클래스는 학생 이름까지 포함하여 더 구체적인 정보를 출력.
void main() {

}
*/