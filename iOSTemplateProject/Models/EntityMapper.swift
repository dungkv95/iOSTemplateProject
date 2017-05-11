//
//  EntityMapper.swift
//  iOSTemplateProject
//
//  Created by Tuan Truong on 5/11/17.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

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
