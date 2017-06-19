//
//  ShowDetailViewController.swift
//  Airport List
//
//  Created by jiarou on 2017/6/20.
//  Copyright © 2017年 teamFour. All rights reserved.
//

import UIKit

class ShowDetailViewController: UIViewController {

    @IBOutlet weak var showTitle: UINavigationItem!
    
    @IBOutlet weak var showFullName: UILabel!
    
    @IBOutlet weak var ShowAirport: UILabel!
    
    @IBOutlet weak var showCountry: UILabel!

    @IBOutlet weak var showCity: UILabel!
    var getIAIT:String!
   var ServedCity:String!
    var FullName:String!
    var Country:String!
    var Airport:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.showTitle.title = getIAIT

        self.showFullName.text = FullName
    
        self.ShowAirport.text = Airport
        self.showCity.text = ServedCity
         self.showCountry.text = Country
        
        //        var getShortName = FullName
        //        let otherRange = getShortName!.index(getShortName!.startIndex, offsetBy: 7)..<getShortName!.endIndex
        //        getShortName!.removeSubrange(otherRange)
        //
        //        print(getShortName!)
        
        // Do any additional setup after loading the view.
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
