// 객체 지향 프로그래밍 : 다형성
// 플로터 처음 들어가면 나오는 위젯클래스들(해당 내용은 추후 다시 다루기)
// 다트언어=객체지향언어. 객체지향 5원칙 중 하나가 다형성

// 예시) 게임 롤
void main() {
  //
  Mundo hero1 = Mundo(100, 100);
  MsFortune hero2 = MsFortune(100, 200);
  // 히어로가 추가될 때 마다 q 스킬 추가해줘야 된다!
  // 히어로가 50종류일 때 -> q 스킬 메서드 50번 작성해줘야 함
  // 객체지향언어에서 자식클래스는 부모클래스 타입으로 형 변환이 가능!
  // 이걸 이용하면 함수 구현 시 파라미터의 타입을 부모클래스 타입으로 지정해서
  // 새로운 자식클래스가 만들어 진다고 해도 함수의 수정 없이 사용 가능!
  // 부모클래스로 형변환: 업캐스팅
  // 자식클래스로 형변환: 다운캐스팅
  Unit u1 = hero1;
  print(u1.hp);
  Unit u2 = hero2;
  u2.voice();
  hero1.q(hero2);
}

class Unit {
  int hp;
  int mp;

  void voice() {
    Unit(this.hp, this.mp);
  }
}

class Mundo extends Unit {
  Mundo(super.hp, super.mp);

  void q(Unit m) {
    m.hp = m.hp - 10;
  }

  // void q2(Yasuo y) {
  //  y.hp = y.hp - 12;
  // }

  @override
  void voice() {
    print("가고 싶은대로 간다");
  }
}

class MsFortune extends Unit {
  MsFortune(super.hp, super.mp);

  void q(Unit m) {
    m.hp = m.hp - 15;
  }

  // void q2(Yasuo y) {
  //   y.hp = y.hp - 5;
  // }

  @override
  void voice() {
    print("행운은 나의 것");
  }
}

class Yasuo extends Unit {
  Yasuo(super.hp, super.mp);

  @override
  void voice() {
    print("야스오 클릭됨");
  }
}
