//
//  ViewController.swift
//  Assignment - 3 IT19000886
//
//  Created by Harish on 30/4/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional Setup after loading the View.
    }


    @IBAction func tapButton(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginPage")
       
               navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapSignUpButton(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpPage")
       
               navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func tapAboutUsBtn(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "AboutPage")
       
               navigationController?.pushViewController(vc, animated: true)

    }
}

