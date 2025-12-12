

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
    String txtString = await txt.raedAsString();
}