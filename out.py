# Tăng kích thước file .so mà không thay đổi nội dung logic bên trong
file_path = "libCrashSightPlugin.so"   # Tên file .so gốc
padding_size = 1024 * 10             # Số byte muốn thêm (ví dụ: 10KB)

with open(file_path, "ab") as f:     # "ab" = append ở dạng nhị phân
    f.write(b'\x00' * padding_size)  # Ghi thêm các byte null vào cuối