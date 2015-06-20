//
//  MainVC.swift
//  GroceryList
//
//  Created by Gelsy Cejudo Valencia on 18/06/15.
//  Copyright (c) 2015 Gelsy Cejudo Valencia. All rights reserved.
//

import UIKit
import CoreData

class MainVC: UIViewController {
    
    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var nItem : List? = nil
    
    
    
    
    @IBOutlet weak var entryitem: UITextField!
    @IBOutlet weak var entryNote: UITextField!
    @IBOutlet weak var entryQty: UITextField!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if nItem != nil {
            entryitem.text = nItem?.note
            entryitem.text = nItem?.note
            entryitem.text = nItem?.qty
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancelTapped(sender: AnyObject) {
        dismissVC()
        
    }
    

    @IBAction func saveTapped(sender: AnyObject) {
        
        if nItem != nil {
            editItem()
        } else {
            newItem()
        }
        
        dismissVC()
        
        
        
    }
    
    func dismissVC() {
        navigationController?.popViewControllerAnimated(true)
    }
    
    func newItem()  {
        let context = self.context
        let ent = NSEntityDescription.entityForName(("List"), inManagedObjectContext: context!)
        
        let nItem = List (entity: ent!, insertIntoManagedObjectContext: context)
        
        nItem.item = entryitem.text
        nItem.note = entryNote.text
        nItem.qty = entryQty.text
        context?.save(nil)
        
    }
    
    func editItem()  {
        nItem!.item = entryitem.text
        nItem!.item = entryNote.text
        nItem!.item = entryQty.text
        context?.save(nil)
    }
    

}

