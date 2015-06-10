//
//  SecondViewController.swift
//  To Do List
//
//  Created by Tina Loh on 6/9/15.
//  Copyright (c) 2015 Appfish. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var item: UITextField!
    
    
    @IBAction func addButton(sender: AnyObject) {
        toDoList.append(item.text)
        item.text = ""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        item.resignFirstResponder()
        return true
    }
    
    
}

