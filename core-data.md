# 코어 데이터(Core Data)의 개념 

* Core Datas 는 DataBase가 아니다! ( Core Data는 ORM 매핑 프레임워크가 맞는 의미, 데이터 저장에 관한 일종의 프레임워크) 



### # Core Data란?

1) In-Memory 방식이 존재: 사용하려는 **모든 데이터**는 우선 메모리에 로딩되는 과정이 존재

   - 코어 데이터 : 읽고 쓰는 모든 데이터는 원칙적으로 메모리에 로드된 다음에 처리 (영구 저장소를 아예 사용하지 않고 순수하게 인메모리 방식으로만 사용하는 것이 가능)

     - In-Memory란? 말 그대로, Disc에 저장하지 않고 휘발성으로 테스트 같이 잠깐 이용하려고 하는 경우에 In-Memory로 사용가능

   - 다른 DB방식 : 효율성을 위해 읽기 목적의 데이터 일부만 메모리에 로드 

     

2. 엔터티(Entity)를 통해 데이터 저장 구조 정의

   - 다른 DB 방식은 일반적으로 테이블을 통해 데이터 저장 구조를 정의 

   - 엔터티(Entity) :  데이터가 저장될 구조

     - 어트리뷰트(Attribute): 엔터티의 하위 속성들을 정의하는 역할

     - 릴레이션(Relation): 엔터티끼리의 관계 정의

     - 패치속성(Fatched Properties): 템플릿 형태로 만들어 놓은 것(반복되는 요청이나 값만 바꾸어 비슷한 요청들을 묶어 놓는 것)

       

3. 용어 

![](/Users/user/Desktop/스크린샷 2021-11-17 오후 7.08.42.png)



4. 데이터를 객체로 취급 (테이블의 행, 레코드 하나하나를 독립된 객체로 사용)
   - Ex. 사원 정보의 레코드 정보 2개를 읽을 때는 2개의 사원 객체가 생성된다.



5. 데이터 접근 방법:  DAO패턴 
   - SQLite에서 DAO 클래스를 만들고 그 객체로 접근하는 것과 같이 사용 **(단, core data에서는 DAO객체를 자동으로 제공)**
6. 관리 객체(Managed Object): MO패턴
   - VO(Value Object)패턴과 동일, core data에서는 MO패턴이라 하며 MO클래스의 프로퍼티를 엔터티의 각 어트리뷰트와 직접 연결시키는 방식을 사용 (*ORM매핑)
     -  *ORM(Object Relation Mapping) 매핑: 객체와 관계형데이터 베이스를 자동으로 mapping시켜주는 방식 



### # 객체 그래프 관리자(Object Graph Manager)

Core data는 애플리케이션에서 Model계층의 객체를 관리하는데 사용하는 프레임워크이자, 라이프사이클이나 영속성 관리를 위한 기능을 제공하는 객체 그래프 관리자(Object Graph Manager)



1. 객체 그래프(Object Graph)란?

- 객체를 하나의 노드(그래프 개념)로 간주하고 서로 간의 연관 관계를 링크로 이어보면 다양하게 연결되는 복합적인 그래프 형태의 도형 

2. 특성

- 코어 데이터가 객체 그래프를 담당한다는 것은 객체끼리 연결할 수 있으며, 그 객체끼리는 영속적으로 동기화 (연결된 A, B 두 객체에서 A객체에 데이터가 삭제되면 자동으로 B객체 데이터도 삭제)



### # 코어 데이터의 구조



![](https://blog.kakaocdn.net/dn/dMSpfx/btqD7HVLyIk/bpnBit1b6iDMEuGmRotkO1/img.png)



1. 관리 객체 (Managed Object) : NSManagedObject

- table에서 레코드를 읽을 때 core data에서는 객체가 생성되는데, 이 객체를 저장하는 자료형
  - Ex. 직원들의 데이터를 다룰 때 DB에서 직원들의 정보를 읽어오면 이것을 그대로 사용하지 않고 VO인스턴스에 담아 사용, VO가 관리 객체에 해당



2. 관리 객체 컨텍스트 (Managed Object Context)

   - 핵심적인 2가지 역할

     1) MO를 가지고 CRUD역할 (Core Data에서 생성되는 모든 관리 객체는 컨텍스트에 담겨 관리)

        - 컨텍스트에 담긴 객체는 영구 저장소로 보내 저장, 삭제 가능
        - Core data는 메모리에 로드된 상태로 처리되는데, 이 때의 메모리가 "컨텍스트"를 의미한다.

     2) "영구 저장소"와 "영구 저장소 코디네이터"에 대한 관리자 역할

        - 읽기와 쓰기를 영구 저장소에 요청 (DAO패턴과 유사)

        

3. 영구 저장소 코디네이터(Persistent Store Coordinator)

-  컨텍스트와 직접 데이터를 주고 받으면서 다양한 영구 저장소들의 접근을 조정하고 입출력을 담당
- 흐름 : 컨텍스트가 데이터 요청 -> 코디네이터가 요청을 받고, 영구 저장소에서 데이터 탐색 -> 코디 네이터가 MO인스턴스 생성하여 반환



4. 관리 객체 모델 (Managed Object Model)

- 엔터티(Entity)의 구조를 정의하는 객체인 동시에 이를 바탕으로 MO패턴의 모델 클래스를 참조

-  MOM : 클래스이자 형식이고 구조를 의미

  ​        데이터를 CRUD하지 않으며 관리 객체의 각 요소를 제대로 담을 수 있도록 저장 데이터를 구조화

   MO : MOM을 바탕으로 생성된 인스턴스



5. 영구 객체 저장소  (Persistent Object Store)

- 초기에는 직접 읽을 수 있으며 디버깅에 용이한 XML저장소 타입을 사용하며, 앱을 배포할 당시 대량의 데이터를 고려하여 SQLite데이터베이스를 사용하는 것이 용이

![스크린샷 2021-11-17 오후 7.34.56](/Users/user/Desktop/스크린샷 2021-11-17 오후 7.34.56.png)



### # 코어 데이터의 한계

1. in-memory방식 : 메모리에 로딩된 객체에 대해서만 수정 가능(SQLite는 메모리에 객체 모두를 로딩하지 않아도, 최소한의 데이터만 로드)

- in-memory에서 데이터 삭제시, 영구저장소에서 데이터 read -> 객체로 생성 -> 이것을 메모리에 로딩 -> 이를 삭제하고 다시 컨텍스트를 저장소에 커밋



2. 데이터 로직에서의 한계

- 중복된 값의 입력을 방지하는 "Unique"키가 없으므로, 애플리케이션에서 비즈니스 로직을 통해 처리해야 가능



3. thread-safe하지 않음(싱글스레드 환경)

-  thread끼리 Lock기능(다른 쓰레드가 침범하지 못하는 것)이 존재하지 않음(단 락을 걸지 않음으로써 빠르게 데이터 처리가 가능)








