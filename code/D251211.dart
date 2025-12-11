
import 'dart:io';

import 'D251210.dart';

void main() async{ //async를 걸어줘야 함.
  // 파일 불러와서 "OO님의 성적은 00점 입니다" 형태로 출력
  // 1. 파일 불러오기. students.txt 파일의 정보. 이름과 점수를 분해해서 보기
  // 절대경로 vs 상대경로  절대: 최상위경로 C드라이브 부터 파일이 위치한 곳 까지의 경로. 단점 너무 길다, 내 데스크탑에 있는 파일명이라 공유하려면 바꿔줘야함
  // 절대경로: 루트 (윈도우는 C드라이브)에서부터 파일 위치까지 총 경로
  // ../ 상위폴더를 뜻함! 다른 폴더에 있는 파일 가져올 때. File('../students.txt');
  // 상대경로: 현재위치에서의 경로. 현재경로는 터미널에서의 위치
  // File('students.txt'); // (path);는 파일의 경로를 뜻함. 이 파일은 9폴더에 같이 있으므로 ../ 안 써줘도 됨
  File txtFile = File('students.txt'); // 객체를 생성하면 메모리 어딘가에 경로가 생성되는데
  // !! txt 파일 안에 딴게 들어가 있으면 출력 안됨!!!
  // 패키지를 가져온단 개념이라 위에 'dart:io'
  String content = await txtFile.readAsString(); // 하드디스크에 있는걸 메모리에 불러옴. 이걸 IO라고 함.
  // 하드 <-> 메모리 왔다갔다 시간이 좀 걸림. await를 쓰면 현재 데이터를 불러온다 라고 생각하면 됨
  // print(content); 하면 학생들 목록이 출력됨

  // 2. 일단 첫번째 줄 불러오기
  // split 함수
  // - String 클래스가 가지고 있는 메서드
  // - 인자로 넘겨준 문자열을 기준으로 분리해서 List에 담아줌
  // Lines : ["홍길동,90", "김철수,80", "지은성,100", ...] 
  List<String> lines = content.split('\n'); // 띄어쓰기라는게 없어서 써줌
  // 아래 변수를 for 문 밖에서 추가해줌
  List<String> nameList = []; // for문 까지 써준 후 추가
  List<int> scoreList = []; // "
  // 2 student객체들을 담아줄 것을 추가
  List<Student> studentsList = [];

  for(String nameAndScore in lines) {
      // ! final lines = content.split('\n'); 뭘 써줘야 할지 모르겠으면 일단 final을 써준 뒤 마우스로 속성을 확인하고 바꿔주면 됨!
  // print(lines[174]); // 이름, 점수 첫번째 목록 불러와서 출력 
  // String gildong = lines[0]; (for문 적고 주석처리 해줌)

  // 3. 이름과 점수 구분짓기
  // final nameAndScoreList = gildong.split(',');
  List<String> nameAndScoreList = nameAndScore.split(',');
  // 이름만 출력하려면 nameAndScoreList : ["홍길동", "90"] 숫자가 아니라 문자열로 인식을 하기 때문에 ""붙여줘야 함
  // print(nameAndScoreList[0]);
  // print(nameAndScoreList[1]);
  String name = nameAndScoreList[0];
  // int.parse(문자열) => 숫자가 들어가 있는 문자열을 숫자형태(int)로 바꿔줌
  // "ABC"라는 문자열을 파싱해서 에러났을 때 null이 반환되는데, null일 땐 0을 abc라는 변수에 넣어라!
  // int ABC = int.tryParse("ABC") ?? 0;
  int Score = int.tryParse(nameAndScoreList[1]) ?? 0;
  nameList.add(name);
  scoreList.add(Score); // 홍길동 아래 90 단 나뉘어서 출력됨
  print(name);
  print(Score);
  // 다시 똑같이 반복을 할 때 for문 
  
  // 2 이름과 점수를 담아 객체 만들기
  Student s = Student(name, Score);
  studentsList.add(s); // 2 학생의 정보가 담긴 객체들이 리스트 안에 들어감
  }
  // 이름과 점수가 각각 다른리스트에서 관리된다면
  // 만약 점수 리스트에서 값이 제거된다면
  // 이름리스트와 점수리스트 간 index들이 맞지 않음!
  // 그래서 하나의 클래스에 이름과 점수를 함께 담을 수 있게 구현해서
  // 그 클래스 객체에 이름과 점수를 함께 담은 후
  // 리스트에 그 객체를 저장한다
  // 그 클래스 이름은 Student로 지정

  // for문 밖에서 출력
  print(nameList);
  print(scoreList); // 이름, 점수가 각각 반복되며 한단 씩 출력됨
  /*
홍길동
90
김철수
80
지은성
100
주혜림
100
김동준
100
박진
100
최승현
0
이지원
95
  */
 scoreList.removeAt(0);
 nameList[2];
 scoreList[2];

}
// 2 클래스 타입을 만들어줌
class Student {
  String name;
  int Score;
  Student(this.name, this.Score);
}

// 일단 주석으로 할 것들 다 적으면서 하기. 
// "슈도코드" : 의사결정 코드