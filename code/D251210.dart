
/// 클래스의 구성 요소
/// 
/// 1. 속성(멤버 변수) - 클래스 안에 속해있는 변수
/// 
/// 2. 메서드 : 함수가 클래스 안에 있으면 메서드라고 부름
/// 
/// 3. 생성자 : 객체를 생성하는 특별한 함수
/// 
/// 프로그램 시작 전 : 소스코드가 보조기억장치에 저장되어 있음
/// 
/// main

class  className {}

// 클래스 : 정보. 어떤 값을 넣을건지 정의하는 것. 메모리에 정보만 올라감
class  Score {
  int Score;
  Score(this.Score);  
}

// 객체 : 값. 클래스에 값이 들어가 있는 것
void main() {
  print("hi");
  Score s1 = Score(10);
  Score s2 = Score(20);
  Score s3 = Score(30);
}