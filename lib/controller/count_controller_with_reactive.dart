import 'package:get/get.dart';

//Enum 타입일때의 대비책
  enum NUM {First,Second}

  //Class Type
  class User{
    String? name;
    int? age;
    User({this.name,this.age});
  }

  class CountControllerWithReactive extends GetxController{
   Rx<User> user = User(name: "개님",age: 25).obs; //User를 통째로 넘겨주어 파라메터식으로 받을 수 있음
  Rx<NUM> num1=NUM.First.obs;
  Rx<NUM> num2=NUM.Second.obs;
  //하나하나의 요소에 스트림을 옵소벌을 넣을 수 있음
    RxInt count = 0.obs; //int 형이 Rxint형으로 변하고 .obs를 선언 해줌으로써 유연한 상태관리가 가능함.
    //반응형 상태관리에서의 Type 은 전부 존재함
    RxBool? isFalse;
    RxString? str;
    RxDouble? doub;

    // RxList<String>? list =[].obs;

    // list.addAll(item);
    // list.add(item);

    void increase(){
      count++;
    }

    //유연한 반응형 상태 관리는 화면이 (값이) 같을때는 업데이트를 날리지 않음.
    //화면이 바뀌어야만 업데이트해준다.
    void putNumber(int num){
      //.obs 형태일 경우 count = num;이 아닌 변수(파라메터) 로 값을 넣어줌.
      count(num);
    }


    //GetxController 의 라이프 사이클
    @override
  void onInit() {
    // TODO: implement onInit
      ever(count,(_)=>print('매번 호출'));  //이벤트를 매번 호출가능하다.
      once(count, (_)=>print('한번만 호출')); //이벤트를 딱 한번 호출이 가능함.
      //검색 키보드 컨트롤러에 변화가없을때 이벤트를 호출
      debounce(count, (_)=>print('마지막 변경에 한번만 호출'),time: Duration(milliseconds: 1000));//이벤트를 마지막 한번만 호출
      //변경되고 있는동안 1초씩마다 호출가능
      interval(count, (_)=>print('변경되고 있는 동안에 호출 (1초)등'),time: Duration(milliseconds: 1000));//
    super.onInit();

  }

    //GetxController 의 라이프 사이클
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

    //GetxController 의 라이프 사이클
  @override
  // TODO: implement onDelete
  get onDelete => super.onDelete;

  }