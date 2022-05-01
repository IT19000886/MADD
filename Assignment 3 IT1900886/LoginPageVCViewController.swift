//
//  LoginPageView.swift
//  Assignment - 3 IT19000886
//
//  Created by Harish on 30/4/22.
//

import UIKit

class LoginPageVCViewController: UIViewController {

    @IBAction func didTapLoginBtn(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpPage")

        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func tapForgotPasswordBtn(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "ForgotPasswordPage")

        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapSignUpBtn(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpPage")

        navigationController?.pushViewController(vc, animated: true)
    }
   
    @IBAction func tapABoutBtn(_ sender: Any) {
        let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "AboutPage")
       
               navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Additional Setup after loading the View.
            setUpNavBar()
        }

        func setUpNavBar(){
            
          // Logo Setting
          let logoImageView = UIImageView(image: UIImage(named: "logo"))
            logoImageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
            logoImageView.contentMode = .scaleAspectFit
            
            navigationItem.rightBarButtonItem?.setTitlePositionAdjustment(.init(horizontal: 10, vertical: 20), for: UIBarMetrics.default)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: logoImageView)
            
           // Back Button Setting
            let backImageView = UIImageView(image: UIImage(systemName:  "arrow.backward"))
              backImageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
              backImageView.contentMode = .scaleAspectFit
            navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName:  "arrow.backward") , style: .plain, target: self, action: #selector(navigateToPrevious))
            
        }
        
        @objc func navigateToPrevious(){
            navigationController?.popViewController(animated: true)
        }
    
   
    /*
    // Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
