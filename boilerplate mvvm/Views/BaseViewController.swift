//
//  BaseViewController.swift
//  boilerplate mvvm
//
//  Created by Ultra Voucher on 11/08/20.
//  Copyright © 2020 ryomar. All rights reserved.
//

import UIKit
import JGProgressHUD
import RxSwift
import RxCocoa
import Cleanse

class BaseViewController: UIViewController{

    let LoadingIndicator = JGProgressHUD(style: .dark)
    let disposeBag = DisposeBag()
//    var viewModel : T!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadingIndicator.textLabel.text = "Loading"
//        viewModel = try! ComponentFactory.of(ViewModelComponent.self).build(())
        
    }
    
    func ShowMessage(title : String, errorMessage : String) {
        let uialert = UIAlertController(title: title, message: errorMessage
                                   , preferredStyle: UIAlertController.Style.alert)
                           uialert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                           self.present(uialert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
