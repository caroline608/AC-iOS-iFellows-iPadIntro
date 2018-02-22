//
//  FellowsSplitViewController.swift
//  iPadIntro
//
//  Created by C4Q on 2/22/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class FellowsSplitViewController: UISplitViewController {

     public var fellows = [Fellow]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fellows = JSONParser.parseJSONFile(filename: "fellows", type: "json")
      
    }

    
    public static func storyboardInstance() -> FellowsSplitViewController {
        let storyboard = UIStoryboard(name: "iPad", bundle: nil)
        let fellowsSplitVC = storyboard.instantiateViewController(withIdentifier: "FellowsSplitViewController") as! FellowsSplitViewController
        return fellowsSplitVC
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
