//
//  ProductListViewController.swift
//  iOSTemplateProject
//
//  Created by Tuan Truong on 5/11/17.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    var productService: ProductServiceProtocol! // can use DI container to inject dependency

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
