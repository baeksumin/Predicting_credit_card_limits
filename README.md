## 신용카드 한도 예측

> 기간
 
2020.05-2020.06

> 프로젝트 간략 소개

credit dataset을 이용하여 신용카드 한도 예측하기

> 실행환경

R

---

### 프로젝트 구조

> 1. 전처리

<img width="400" alt="스크린샷 2021-01-12 오후 11 23 31" src="https://user-images.githubusercontent.com/49911177/104326651-4e458400-552d-11eb-8476-77cfbb919c57.png">      <img width="410" alt="스크린샷 2021-01-12 오후 11 30 51" src="https://user-images.githubusercontent.com/49911177/104327549-3fab9c80-552e-11eb-9e1d-303902572b99.png"><img width="400" alt="스크린샷 2021-01-12 오후 11 32 32" src="https://user-images.githubusercontent.com/49911177/104327767-78e40c80-552e-11eb-8444-e4cf31b9f225.png">

- 데이터 세트를 살펴본 후 어떤 변수를 종속변수로 할지 정해주었다.
- Limit를 종속변수로 하여 다른 변수들을 통해 Limit를 예측하는 모형을 만들기로 하였다.
- 분석에 필요하지 않을 것 같은 ID, Education, Married, Ethnicity 변수를 제거하였다.
- 상관분석을 하기 위해 수치형이 아닌 데이터를 수치형으로 바꿔주었다.




> 2. 상관분석

<img width="400" alt="스크린샷 2021-01-12 오후 11 35 55" src="https://user-images.githubusercontent.com/49911177/104328224-f740ae80-552e-11eb-9104-7b6c64050b33.png">      <img width="400" alt="스크린샷 2021-01-12 오후 11 37 29" src="https://user-images.githubusercontent.com/49911177/104328426-248d5c80-552f-11eb-98aa-f4419dc7d2f0.png">

- 상관분석을 통해 변수 간의 상관관계를 살펴보았다.


> 3. 회귀분석

<img width="400" alt="스크린샷 2021-01-14 오후 7 57 53" src="https://user-images.githubusercontent.com/49911177/104582077-cb463a00-56a2-11eb-9419-636c68c47759.png">     
- 먼저 모든 피처를 고려하여 회귀분석을 실시하였다.

<img width="400" alt="스크린샷 2021-01-14 오후 7 58 14" src="https://user-images.githubusercontent.com/49911177/104582115-d731fc00-56a2-11eb-99de-4ac0f58487f1.png">    <img width="400" alt="스크린샷 2021-01-14 오후 7 58 27" src="https://user-images.githubusercontent.com/49911177/104582137-e022cd80-56a2-11eb-966f-7b33c4e722b9.png">     <img width="400" alt="스크린샷 2021-01-14 오후 7 58 39" src="https://user-images.githubusercontent.com/49911177/104582164-e6b14500-56a2-11eb-87c1-3fcbab46e7d2.png">
- cp값을 활용하여 5개의 피처를 선정한 뒤 회귀분석을 실시하였다.
- 회귀분석 결과 모든 피처가 유의미하다는 결과가 나왔다.
- 하지만 다중공선성 검사를 하였을 때, 몇몇 변수들의 수치가 커서 이 모델에 문제가 있다는 것을 알 수 있다.

<img width="400" alt="스크린샷 2021-01-14 오후 7 58 52" src="https://user-images.githubusercontent.com/49911177/104582198-ee70e980-56a2-11eb-939e-dc5a45bfb91b.png">     <img width="400" alt="스크린샷 2021-01-14 오후 7 59 06" src="https://user-images.githubusercontent.com/49911177/104582229-f761bb00-56a2-11eb-822a-ef638405902e.png">
- 다중공선성 문제를 해결하기 위해 상관관계가 있는 두 피처 중 하나를 제거하기로 한다.
- Rating을 제거하였을 때의 회귀분석 결과와 Balance를 제거하였을 때의 회귀분석 결과를 비교해보았다.
- 수정된 R값이 더 큰 Balance를 제거한 모델을 사용하기로 한다.


<img width="400" alt="스크린샷 2021-01-14 오후 7 59 33" src="https://user-images.githubusercontent.com/49911177/104582282-06486d80-56a3-11eb-9355-9f68052ccef2.png">     <img width="400" alt="스크린샷 2021-01-14 오후 7 59 45" src="https://user-images.githubusercontent.com/49911177/104582303-0e081200-56a3-11eb-9134-18c7e2258396.png">
- 선형성, 정규성, 등분산성을 모두 충족한다.
- 다중공선성 검사 결과에도 문제가 없다.



> 4. 결과

<img width="400" alt="스크린샷 2021-01-14 오후 8 10 40" src="https://user-images.githubusercontent.com/49911177/104583529-96d37d80-56a4-11eb-95dd-2a2ee527b656.png">
- 위와 같은 회귀식을 세울 수 있다.
