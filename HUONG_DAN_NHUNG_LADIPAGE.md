# HƯỚNG DẪN NHÚNG SÁCH TƯƠNG TÁC 3D VÀO LADIPAGE

Thư mục `ladipage_book_flip` đã được hoàn thiện 100% với:
- **12 trang ảnh tối ưu:** Đã chuyển đổi từ 92 MB xuống chỉ còn **1.94 MB** (giảm 97.9%), tải trang siêu nhanh trên cả 4G/5G điện thoại.
- **Hiệu ứng lật trang 3D uốn cong vật lý (Page-Flip physics):** Bìa cứng 3D, trang trong uốn cong mềm mại, gáy sách có bóng đổ chiều sâu.
- **Âm thanh lật giấy:** Tích hợp âm thanh lật nhẹ nhàng (Web Audio API nội bộ, không phụ thuộc link ngoài).
- **Hỗ trợ cảm ứng điện thoại:** Vuốt ngang hoặc chạm mép để lật, hỗ trợ nút phóng to (Zoom) và toàn màn hình (Fullscreen).
- **Tự động chuyển chế độ:**
  - Trên Máy tính/Tablet: Hiển thị sách mở 2 trang đôi (`Trang 2 - 3 / 12`).
  - Trên Điện thoại: Tự động chuyển thành 1 trang đơn sắc nét, không bị thu nhỏ hay méo hình.

---

## CÁCH 1: LẤY LINK HOSTING NHANH NHẤT (Miễn phí 100% trong 1 phút)

Để nhúng vào LadiPage qua Iframe mượt mà và không lo nặng landing page:

1. Vào trang web [https://app.netlify.com/drop](https://app.netlify.com/drop) (hoặc Vercel / GitHub Pages).
2. Kéo thả nguyên thư mục **`ladipage_book_flip`** vào màn hình trình duyệt của Netlify.
3. Chỉ sau 5 giây, Netlify sẽ cấp cho bạn 1 đường link (Ví dụ: `https://catalogue-3d-sample.netlify.app`).

---

## CÁCH 2: CÁC BƯỚC NHÚNG VÀO LADIPAGE

### Bước 1: Tạo Section trên LadiPage
* Trong trang chỉnh sửa LadiPage, bấm **Thêm Section mới**.
* Bạn có thể chọn màu nền tối (Dark) hoặc sáng tùy ý.

### Bước 2: Thêm phần tử Iframe hoặc Mã HTML
* Ở thanh công cụ bên trái của LadiPage, bấm **Thêm mới (+) -> Mã HTML** (hoặc chọn **Iframe**).
* Kéo hộp chứa ra giữa Section.

### Bước 3: Dán đoạn mã sau vào phần tử HTML của LadiPage:

```html
<div style="position: relative; width: 100%; max-width: 1150px; margin: 0 auto; overflow: hidden; border-radius: 8px;">
  <iframe 
    src="https://LINK_WEB_CUA_BAN/index.html?bg=transparent" 
    width="100%" 
    height="760px" 
    frameborder="0" 
    scrolling="no" 
    allowfullscreen="true"
    style="border: none; display: block; width: 100%; height: 760px;"
  ></iframe>
</div>

<style>
  /* Tự động chỉnh độ cao chuẩn cho màn hình điện thoại */
  @media (max-width: 767px) {
    iframe {
      height: 580px !important;
    }
  }
</style>
```

> **Mẹo hữu ích:** 
> Tham số `?bg=transparent` ở cuối link giúp nền sách hoàn toàn trong suốt, tự động ăn khớp với màu nền Section trong LadiPage của bạn!

---

## KIỂM TRA & XEM THỬ NGAY TRÊN MÁY TÍNH
* Nhấp đúp chuột vào file: **`Xem_Thu_Sach.bat`** (ở thư mục gốc) để mở trình duyệt xem thử ngay lập tức.

