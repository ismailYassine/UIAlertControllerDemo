//
//  ViewController.swift
//  UIAlertControllerDemo
//
//  Created by Ismail on 2022-04-23.
//

import UIKit

class ViewController: UIViewController {
    
    let popUpStyleAlertButton = UIButton()
    let actionSheetStyleAlertButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        showPopUpStyleAlert()
        showActionSheetStyleAlert()
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

    
    
    func showActionSheetStyleAlert (){
        view.addSubview(actionSheetStyleAlertButton)
        actionSheetStyleAlertButton.translatesAutoresizingMaskIntoConstraints = false
        
        actionSheetStyleAlertButton.setTitle("PopUP ActionSheet Style", for: .normal)
        actionSheetStyleAlertButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        actionSheetStyleAlertButton.backgroundColor = .orange
        actionSheetStyleAlertButton.layer.cornerRadius = 10
        
        //button constraint
        actionSheetStyleAlertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionSheetStyleAlertButton.topAnchor.constraint(equalTo: popUpStyleAlertButton.bottomAnchor, constant: 5).isActive = true
        actionSheetStyleAlertButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        actionSheetStyleAlertButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        actionSheetStyleAlertButton.addTarget(self, action: #selector(showAlertActionSheettyle), for: .touchUpInside)
        
        
    }
    
    @objc func showAlertActionSheettyle(){
        let popUpAlert = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .actionSheet)
        popUpAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(popUpAlert, animated: true, completion: nil)
    }

}

