library(ISLR)

data(Credit)
head(Credit)
?Credit

str(Credit)
Credit$Gender<-as.numeric(Credit$Gender)
Credit$Student<- as.numeric(Credit$Student)
Credit$Married<- as.numeric(Credit$Married)
Credit$Ethnicity<- as.numeric(Credit$Ethnicity)
str(Credit)
Credit<-Credit[,c(-1,-7,-10,-11)]
str(Credit)

A<- cor(Credit)
A
library(car)
scatterplotMatrix(A)

fit<-lm(Limit~.,data=Credit)
summary(fit)
library(leaps)
library(corrplot)

fit_limit<-lm(Limit~.,data=Credit)
summary(fit_limit)

sub.fit_limit<-regsubsets(Limit~.,data=Credit)
best.summary<- summary(sub.fit_limit)
names(best.summary)
which.min(best.summary$rss)

par(mfrow=c(1,2))
plot(best.summary$cp, xlab="numver of features", ylab="cp")
plot(sub.fit_limit, scale="Cp")
#5개일때 cp값이 최소이다. income,rating,cards,student,balance

which.min(best.summary$bic)
which.max(best.summary$adjr2)
# 둘 다 5개의 피처를 제안하였다.

plot(best.summary$bic, xlab="number of features",ylab="bic")
plot(sub.fit_limit, scale="bic")
#5개일때 income,rating,cards,student,balance

fit_limit.5<- lm(Limit~Income+Rating+Cards+Student+Balance, data=Credit)
summary(fit_limit.5)

vif(fit_limit.5)
#10보다 크면 문제가 있다. 5개의 피처 중 rating, balance의 수가 너무 크다.

plot(Credit$Rating, Credit$Balance, xlab="Rating", ylab="Balance")
#양적 상관관계가 나타난다. 둘 중 한 피처를 제거하기로 함.

rating<-lm(Limit~Income+Cards+Student+Balance,data=Credit)
summary(rating)
#rating 제거했을 때 회귀분석

balance<-lm(Limit~Income+Rating+Cards+Student,data=Credit)
summary(balance)
#balance 제거했을 때 회귀분석

#수정 r제곱 값이 rating을 제거한 모델에서 더 크기 때문에 rating을 제거하기로 한다.

par(mfrow=c(2,2))
plot(rating)
#진단용 도표 작성


vif(rating)
#값이 모두 작아서 다중 공선성 문제 없음.

best.fit<-lm(Limit~Income+Cards+Student+Balance, data=Credit)
summary(best.fit)

best.fit
