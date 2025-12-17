void main() {
  //
  printABC(10, "BBB", "CCC");
  // print("BBB", 10, "BBB"); => int 순서 안맞아서 안됨

  // 네임드는 사용할 때 파라미터 순서 상관 없음!
  printDEF(d: 10, e: "EEE", f: "FFF");
  printDEF(e: "EEE", d: 10, f: "FFF");

  // 위치는 순서대로 사용. 네임드는 순서대로 안해도 됨. ?널러블은 지정 안해줘도 됨
  printGHI("123", h: 10);
}

// 앞에는 위치 파라미터, 뒤에는 네임드(반드시 필요하다는 뜻)파라미터 섞어서 사용가능
void printGHI(String g, {required int h, String? f}) {
  print("g: $g, h: $h, i: $i");
}

// 함수의 파라미터
// 1. 위치 파라미터 -> 소괄호 안에 바로 타입과 변수명 선언!
// 사용할 땐 반드시 파라미터 선언된 순서대로만 사용!
void printABC(int a, String b, String c) {
  //
  print("a: $a, b: $b, c: $c");
}

// 2. 네임드 파라미터
// required 키워드는 함수 사용 시 반드시 넘겨줘야 한다는 키워드! 반드시 앞에 붙여줘야 됨
void printDEF({required int d, required String e, required String f}) {
  print("d: $d, e: $e, f: $f");
}
