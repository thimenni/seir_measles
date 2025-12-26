# file trích xuất dữ liệu bệnh sởi tại TP.HCM từ dữ liệu nguồn bài báo
library(surveillance)

# working directory
setwd("c:/Users/Men/OneDrive/Máy tính/mô hình toán/code_1/measlesVietnam_agestratified_model")
# obs size 912x80 
# 20 tỉnh, mỗi tỉnh đc kết hợp theo 4 nhóm tuổi (0-4, 5-14, 15-24, 25+)

# load data
measles_sts <- readRDS("measles_sts.rds")

# trích xuất ma trận observed
observed_data <- measles_sts@observed
print(dim(observed_data))  # [1] 912 80
print(head(colnames(observed_data)))  # xem tên cột đầu tiên

# tạo chuỗi ngày từ 2018-01-01 (912 ngày)
start_date <- as.Date("2018-01-01")
date_seq <- seq(start_date, by = "day", length.out = nrow(observed_data))

# gộp vào data.frame
measles_full <- data.frame(date = date_seq, observed_data)

# lưu ra CSV gốc
write.csv(measles_full, "measles_full.csv", row.names = FALSE)

cat("Kích thước:", nrow(measles_full), "x", ncol(measles_full), "\n")
cat("Từ:", min(measles_full$date), "→", max(measles_full$date), "\n")
cat("Tổng ca bệnh toàn dataset:", sum(measles_full[,-1], na.rm = TRUE), "\n")

### NX: 
# Kích thước: 912 × 81
# Tổng ca bệnh: 26047
# Khoảng thời gian: 2018-01-01 → 2020-12-31
