# ValStore

발로란트(Valorant) 게임 내 상점 정보 및 플레이어 데이터를 조회할 수 있는 Flutter 기반 애플리케이션입니다.

## 🛠 Tech Stack (기술 스택)

### Framework & Language
* **Flutter**: Cross-platform UI Framework
* **Dart**: Main programming language

### Architecture
* **Clean Architecture**: `Data`, `Domain`, `Presentation` 레이어로 분리된 구조
* **MVVM**: Presentation 레이어에서 ViewModel을 사용한 상태 관리

### Dependency Injection (의존성 주입)
* **Get It**: 서비스 로케이터 패턴을 활용한 인스턴스 관리
* **Injectable**: 코드 생성을 통한 DI 설정 자동화

### Network & Data
* **Dio**: HTTP 클라이언트 라이브러리
* **Retrofit**: Dio 기반의 REST API 클라이언트 생성
* **JSON Serializable**: JSON 데이터 모델 직렬화 자동화

### Others
* **Shared Preferences**: 로컬 데이터 저장
* **WebView Flutter**: 인앱 브라우저 구현 (로그인 등)

---

## 📂 Project Structure (프로젝트 구조)

프로젝트는 유지보수와 확장성을 고려하여 **Clean Architecture** 패턴을 따르고 있습니다.

```text
lib/
├── data/           # 데이터 소스 관리 (Remote/Local)
│   ├── base/       # 네트워크 모듈 (Dio 등) 설정
│   ├── entitlement/# 권한 관련 API 및 모델
│   ├── info/       # 플레이어 정보 관련 데이터
│   ├── skin/       # 무기 스킨 데이터 및 레포지토리
│   └── ...         (match, storefront, wallet 등)
├── domain/         # 비즈니스 로직 및 UseCase
│   ├── skin_usecase.dart
│   ├── wallet_usecase.dart
│   └── ...
├── presentation/   # UI 및 상태 관리
│   ├── base/       # BaseViewModel, BaseWidget 등 공통 컴포넌트
│   ├── components/ # 재사용 가능한 UI 카드 및 아이템
│   ├── di/         # 의존성 주입 설정
│   ├── pages/      # 주요 화면 (Home, Account, Match History 등)
│   └── viewmodel/  # 각 화면의 비즈니스 로직 처리
└── main.dart       # 앱의 시작점
```

---

## 🏗 Architecture Details

### 1. Data Layer
* `remote/`: Retrofit을 사용하여 서버와 통신하는 API 인터페이스 정의
* `model/`: 서버 응답 데이터에 맞춘 DTO(Data Transfer Object) 정의
* `repository/`: 인터페이스를 구현하며 실제 데이터를 가공하여 Domain 레이어에 전달

### 2. Domain Layer
* 플랫폼이나 데이터 출처에 의존하지 않는 순수 비즈니스 로직을 포함합니다.
* `UseCase`: 특정 기능을 수행하기 위한 최소 단위의 로직을 담당합니다.

### 3. Presentation Layer
* `ViewModel`: `BaseViewModel`을 상속받아 화면의 상태를 관리하고 비즈니스 로직을 호출합니다.
* `Widget`: 사용자에게 보여지는 UI를 담당하며, ViewModel의 상태 변화에 따라 화면을 갱신합니다.

---

## 🚀 Getting Started

1.  **의존성 설치**
    ```bash
    flutter pub get
    ```

2.  **코드 생성 (DI, JSON, Retrofit)**
    ```bash
    flutter pub run build_runner build
    ```

3.  **앱 실행**
    ```bash
    flutter run
    ```


[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://coff.ee/ydh878787)
