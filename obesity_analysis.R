
# 1. 載入資料與套件
library(readr)
library(ggplot2)
library(randomForest)
data <- read_csv("C:/你的路徑/obesity_clean.csv")

# 2. 年齡分組
data$Age_Group <- cut(data$Age, breaks=c(0,20,30,40,50,60,100),
                      labels=c("0-20","21-30","31-40","41-50","51-60","60+"))

# 3. 年齡層與肥胖分布圖
ggplot(data, aes(x=Age_Group, fill=NObeyesdad)) +
  geom_bar(position="dodge") +
  labs(title="年齡層與肥胖分類分布圖", x="年齡層", y="人數") +
  theme_minimal()

# 4. 家族史與肥胖比例圖
ggplot(data, aes(x=family_history_with_overweight, fill=NObeyesdad)) +
  geom_bar(position="fill") +
  labs(title="家族史與肥胖比例", x="家族史", y="百分比") +
  scale_y_continuous(labels=scales::percent) +
  theme_minimal()

# 5. 隨機森林模型與變數重要性圖
data$NObeyesdad <- as.factor(data$NObeyesdad)
set.seed(123)
rf <- randomForest(NObeyesdad ~ Age + Height + Weight + FCVC + NCP + CH2O + FAF + TUE + Gender + family_history_with_overweight, 
                   data = data, importance=TRUE, ntree=200)
varImpPlot(rf)
