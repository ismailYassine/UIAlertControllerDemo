//
//  ViewController.swift
//  UIAlertControllerDemo
//
//  Created by Ismail on 2022-04-23.
//

import UIKit

class ViewController: UIViewController {
    var popUpStyleAlertButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        showPopUpStyleAlert()
    }
    
    func showPopUpStyleAlert (){
        view.addSubview(popUpStyleAlertButton)
        popUpStyleAlertButton.translatesAutoresizingMaskIntoConstraints = false
        
        popUpStyleAlertButton.setTitle("PopUP Alert Style", for: .normal)
        popUpStyleAlertButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        popUpStyleAlertButton.backgroundColor = .systemPink
        popUpStyleAlertButton.layer.cornerRadius = 10
        
        //button constraint
        popUpStyleAlertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popUpStyleAlertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        popUpStyleAlertButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        popUpStyleAlertButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        popUpStyleAlertButton.addTarget(self, action: #selector(showAlertPopUpStyle), for: .touchUpInside)
        
        
    }
    
    @objc func showAlertPopUpStyle(){
        let popUpAlert = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        popUpAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(popUpAlert, animated: true, completion: nil)
    }


}

