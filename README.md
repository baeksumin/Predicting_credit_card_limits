## 신용카드 한도 예측

> 기간
 
2020.05-2020.06

> 프로젝트 간략 소개

credit dataset을 이용하여 신용카드 한도 예측하기

> 실행환경

R

---

### 프로젝트 구조

1. 전처리

<img width="400" alt="스크린샷 2021-01-12 오후 11 23 31" src="https://user-images.githubusercontent.com/49911177/104326651-4e458400-552d-11eb-8476-77cfbb919c57.png">      <img width="410" alt="스크린샷 2021-01-12 오후 11 30 51" src="https://user-images.githubusercontent.com/49911177/104327549-3fab9c80-552e-11eb-9e1d-303902572b99.png"><img width="400" alt="스크린샷 2021-01-12 오후 11 32 32" src="https://user-images.githubusercontent.com/49911177/104327767-78e40c80-552e-11eb-8444-e4cf31b9f225.png">

- 데이터 세트를 살펴본 후 어떤 변수를 종속변수로 할지 정해주었다.
- Limit를 종속변수로 하여 다른 변수들을 통해 Limit를 예측하는 모형을 만들기로 하였다.
- 분석에 필요하지 않을 것 같은 ID, Education, Married, Ethnicity 변수를 제거하였다.
- 상관분석을 하기 위해 수치형이 아닌 데이터를 수치형으로 바꿔주었다.



2. 상관분석

<img width="400" alt="스크린샷 2021-01-12 오후 11 35 55" src="https://user-images.githubusercontent.com/49911177/104328224-f740ae80-552e-11eb-9104-7b6c64050b33.png">      <img width="400" alt="스크린샷 2021-01-12 오후 11 37 29" src="https://user-images.githubusercontent.com/49911177/104328426-248d5c80-552f-11eb-98aa-f4419dc7d2f0.png">


3. 회귀분석
4. 결과
