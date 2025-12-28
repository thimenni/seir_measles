# Ứng dụng mô hình SEIR trong phân tích sự lan truyền bệnh sởi

**Môn học:** Các mô hình toán ứng dụng

**Thành viên nhóm:**
- Trần Kiều Hạnh
- Nguyễn Thị Mến

**Giảng viên hướng dẫn:** TS. Nguyễn Trọng Hiếu

Tóm tắt
- Đề tài "Ứng dụng mô hình SEIR trong phân tích sự lan truyền bệnh sởi" minh hoạ việc áp dụng mô hình SEIR (Susceptible–Exposed–Infectious–Recovered) để phân tích và mô phỏng sự lan truyền bệnh sởi dựa trên dữ liệu thực tế.

Cấu trúc thư mục
- `SEIR_measles_HCM.ipynb`: Notebook chính (Python) — toàn bộ mã nguồn báo cáo.
- `extract_vietnam_data.R`: Script R để trích xuất dữ liệu từ bài báo gốc.
- `data/measles_full.csv`: Tập dữ liệu đầu vào (ca bệnh sởi).

Yêu cầu môi trường
- Google Colab
- Dữ liệu lưu trên Google Drive
- Ngôn ngữ Python 


Hướng dẫn chạy trên Google Colab

**Bước 1: Tải notebook lên Colab**
- Mở [Google Colab](https://colab.research.google.com/)
- Chọn `File` → `Upload notebook` và tải file `SEIR_measles_HCM.ipynb`

**Bước 2: Chuẩn bị dữ liệu trên Google Drive**

Đặt file dữ liệu `measles_full.csv` vào thư mục gốc của Google Drive:
```
My Drive/
└── measles_full.csv
```

**Lưu ý:** Đường dẫn trong notebook đã được thiết lập sẵn là:
```python
df2_path = '/content/drive/My Drive/measles_full.csv'
```

**Bước 3: Chạy notebook**
- Cell đầu tiên sẽ mount Google Drive, làm theo hướng dẫn để cấp quyền
- Chạy các cell tiếp theo theo thứ tự từ trên xuống dưới
- Kiểm tra kết quả phân tích và biểu đồ
