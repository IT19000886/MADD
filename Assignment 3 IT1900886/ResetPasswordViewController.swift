//
//  ResetPasswordVC.swift
//  Assignment - 3 IT19000886
//
//  Created by Harish on 30/4/22.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    func showAlert(){
         let alert = UIAlertController(title: "Password Resetted Successfully", message: "Please login with your new credentials", preferredStyle: .alert)
         
         alert.addAction(UIAlertAction(title: "Go to Login", style: .cancel, handler: { [weak self] action in
             let vc = UIStoryboard.init(name:"Main" , bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginPage")
             
             self?.navigationController?.pushViewController(vc, animated: true)
                 
             
         }))
         
         present(alert, animated: true)
         
     }
    
    @IBAction func tapResetPasswordBtn(_ sender: Any) {
        showAlert()
    }
    
    @IBAction func tapAboutBtn(_ sender: Any) {
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
