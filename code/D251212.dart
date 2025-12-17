

import 'dart:io';

class Score {
  // 1. 속성 : 점수(숫자) score; 등 많이 씀
  int point;
  // 2. 메서드 : 점수(속성 중 하나)를 출력하는 기능
  // 반환타입 함수이름(매개변수) {실행할 코드}
  void showInfo() {
    print("점수: $point");
  }
  // 3. 생성자 : 점수를 초기화
  Score(this.point);
}

class StudentScore extends Score {
    // Score 클래스의 구성요소가 포함됨
    // 😲상속은 반드시 하나의 클래스만 가능! 
    // 현재 속성 : point, 메서드: showInfo를 가지고 있다
    String name;
    // @override => 어노테이션 => 코드의 메타데이터 => 안 붙여도 실행하는데 문제는 없음 => 재정의 했다는 것을 다른 개발자나 자신에게 보기 편하게 하려고 하는 것. 사용 권장!!
    @override
    void showInfo() {
       print("이름: $name, 점수: $point");
    }
    // 생성자(속성 초기화) (부모의 것이다 super. Score에 있는걸 다시 가져온다는 뜻)
    StudentScore(this.name,super.point);
}

void main() async{
    // 1. 파일객체 생성
    File txt = File("students.txt");
    // 2. 문자열로 불러오기
    // txt.readAsStringSync(); 도 있는데 애니메이션 있을 때 끊김. // TODO 심화에서 한번 더 다루기
    // ㄴ Flutter에서는 사용X Dart에서는 사용가능
    String txtString = await txt.readAsString();
    // 홍길동,90
    // 김철수,80
    // 1. 개행 단위로 구분
    // ["홍길동,90", "김철수,80"]
    final joolDeul = txtString.split('\n'); // List<String> 으로 구분된다고 뜸
    // 2. 각 줄이 나뉘었으니 이제 , 콤마 단위로 구분
    // for in 문 => 우측의 리스트를 좌측의 변수에 하나씩 담는다!
    List<StudentScore> haksangdeul = [];
    for (String jool in joolDeul) {
        // ["홍길동", "90"]
        // ["김철수", "80"]  
        final jinjjaBunli = jool.split(',');
        final erum = jinjjaBunli[0];
        final jeumSoo = jinjjaBunli[1];
        final sutjaJeumSoo = int.parse(jeumSoo);
        final studentScore = StudentScore(erum, sutjaJeumSoo);
        haksangdeul.add(studentScore);
    }
    print("어떤 학생의 점수를 확인하시겠습니까?");
    String sayongjaIpRuk = stdin.readLineSync()!; // 빈 값이 들어올 수 없다고 명시
    // 학생들 이라는 리스트에 담긴 학생 이름과 사용자입력 이라는 입력값과 비교해서
    // 있는지 여부 확인
    // haksangdeul : [StudentScore("홍길동", 90), StudentScore("김철수",80)]
    // for문이 끝나고 나서 있는지 없는지 확인해야되서

    StudentScore? chatneunHaksang = null;
    // bool itdda = false; 이거 대신에 위에 씀
    for (StudentScore haksang in haksangdeul) {
        if(sayongjaIpRuk == haksang.name) {
            chatneunHaksang = haksang;
            // itdda = true; bool 지워서 주석처리
            break; // 더이상 비교할 필요 없다.
        }
    }
    if(chatneunHaksang == null) {
        
        print("잘못된 학생이름을 입력하였습니다");
    } else {
        print("찾는 학생의 이름: ${chatneunHaksang.name}, 찾는 학생의 점수: ${chatneunHaksang.point}");
        // print(); 있다없다 여부만 출력이 가능해서 쓸 수 없다 그래서 위에 추가
    }
}