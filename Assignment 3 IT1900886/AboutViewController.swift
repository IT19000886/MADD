//
//  About View Controller.swift
//  Assignment - 3 IT19000886
//
//  Created by Harish on 30/4/22.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Any Additional Setup after this View.
        setUpNavBar()
    }
    
    func setUpNavBar(){
        
      // Title Page Setting
        let navTitle = UILabel()
        navTitle.text = "About Us"
        
        navigationItem.titleView = navTitle
        
       // Back Button
        let backImageView = UIImageView(image: UIImage(systemName:  "arrow.backward"))
          backImageView.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
          backImageView.contentMode = .scaleAspectFit
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName:  "arrow.backward") , style: .plain, target: self, action: #selector(navigateToPrevious))
        
    }
    
    @objc func navigateToPrevious(){
        navigationController?.popViewController(animated: true)
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
