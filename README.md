# iOSTemplateProject

# 1. Thông tin:

- Template cho dự án iOS
- Mô hình: MVC
- Ngôn ngữ: Swift 3.x
- Hệ điều hành: iOS 8.0 trở lên

# 2. Thư viện:

## 2.1. Quản lý:

- Cocoapods: nên dùng
- Carthage

## 2.2. Các thư viện nên dùng:

- Alamofire: networking
- ObjectMapper: parse JSON cho các model
- PromiseKit: đơn giản hóa việc sử dụng cho các hàm async
- Swinject: áp dụng pattern Dependency Injection
- MagicalRecord: hỗ trợ cho Core Data
- MBProgressHUD: hiển thị loading indicator

# 3. Cấu trúc dự án:

## Entensions:

Thư mục chứa các extension.

## Models:

Thư mục chứa Core Data entity, các class DTO. Nên dùng Mapper để map giữa entity và DTO.

```swift
class EntityMapper {
func map(from product: Product, to entity: ProductEntity) {
entity.id = product.id
entity.name = product.name
entity.price = product.price
}

func product(from entity: ProductEntity) -> Product {
return Product(id: entity.id ?? "",
name: entity.name ?? "",
price: entity.price)
}
}
```

## Repositories:

Các class CRUD tương tác với database.

```swift
class ProductRepository {
func add(_ product: Product) {

}

func all() -> [Product] {
return []
}
}
```

## Services:

Thư mục chứa các service về API và business logic của app. Nên chia mỗi service và các file liên quan ra 1 folder riêng. 

```swift
class APIService {

}
```

```swift
protocol ProductServiceProtocol {
func add(_ product: Product)
}


class ProductService: ProductServiceProtocol {
let productRepository: ProductRepository

init(productRepository: ProductRepository) {
self.productRepository = productRepository
}

func add(_ product: Product) {

}
}
```

## Views:

Thư mục chứa các storyboard, view controller và view. Nên chia mỗi chức năng ra 1 folder để dễ quản lý.

## Libararies:

Chứa các thư viện ngoài cocoapods, carthage. Đây là các thư viện cần customize thư viện gốc.

## Resources:

Chứa các file data, resource như các file html, xml, ảnh, video ...

