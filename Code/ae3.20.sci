// 1. Khai báo tham số cụ thể (0 < r < 1)
r = 0.7;
w0 = %pi / 4;

// 2. Định nghĩa biến phức z và hàm truyền X1(z)
z = poly(0, 'z');
num = (r * sin(w0)) * z;
den = z^2 - (2 * r * cos(w0)) * z + r^2;

// Tạo hệ thống tuyến tính rời rạc ('d' = discrete)
H = syslin('d', num, den);

// 3. Vẽ giản đồ điểm cực - điểm không
clf();
plzr(H);
title("Giản đồ Pole-Zero của X1(z) với r = " + string(r) + ", w0 = pi/4");
