//
//  ProductService.swift
//  iOSTemplateProject
//
//  Created by Tuan Truong on 5/10/17.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

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
