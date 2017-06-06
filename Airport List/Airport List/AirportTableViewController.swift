//
//  AirportTableViewController.swift
//  Airport List
//
//  Created by jiarou on 2017/5/31.
//  Copyright © 2017年 teamFour. All rights reserved.
//

import UIKit

class AirportTableViewController: UITableViewController{
   
    
    var items = [[String:String]] ()
    var Country: [String] = ["United States", "Germany","Russia", "China", "Australia", "Singapore", "United Kingdom", "France", "Japan", "Malaysia", "Taiwan", "Netherlands", "Thailand", "South Korea", "Philippines", "Canada", "Hong Kong"]

    
    //airport
    var   UnitedStates_Airport: [String] = Array()
    var   Germany_Airport: [String] = Array()
     var  Russia_Airport: [String] = Array()
     var  China_Airport: [String] = Array()
     var  Australia_Airport: [String] = Array()
     var  Singapore_Airport: [String] = Array()
    var   United_Kingdom_Airport: [String] = Array()
     var  France_Airport: [String] = Array()
     var  Japan_Airport: [String] = Array()
     var  Malaysia_Airport: [String] = Array()
    var   Taiwan_Airport: [String] = Array()
    var   Netherlands_Airport: [String] = Array()
    var   Thailand_Airport: [String] = Array()
    var   South_Korea_Airport: [String] = Array()
    var   Philippines_Airport: [String] = Array()
    var   Canada_Airport: [String] = Array()
    var   Hong_Kong_Airport: [String] = Array()

    //iATA
    var   UnitedStates_IATA: [String] = Array()
    var   Germany_IATA: [String] = Array()
    var  Russia_IATA: [String] = Array()
    var  China_IATA: [String] = Array()
    var  Australia_IATA: [String] = Array()
    var  Singapore_IATA: [String] = Array()
    var   United_Kingdom_IATA: [String] = Array()
    var  France_IATA: [String] = Array()
    var  Japan_IATA: [String] = Array()
    var  Malaysia_IATA: [String] = Array()
    var   Taiwan_IATA: [String] = Array()
    var   Netherlands_IATA: [String] = Array()
    var   Thailand_IATA: [String] = Array()
    var   South_Korea_IATA: [String] = Array()
    var   Philippines_IATA: [String] = Array()
    var   Canada_IATA: [String] = Array()
    var   Hong_Kong_IATA: [String] = Array()
    //ServeredCity
    var   UnitedStates_ServedCity: [String] = Array()
    var   Germany_ServedCity: [String] = Array()
    var  Russia_ServedCity: [String] = Array()
    var  China_ServedCity: [String] = Array()
    var  Australia_ServedCity: [String] = Array()
    var  Singapore_ServedCity: [String] = Array()
    var   United_Kingdom_ServedCity: [String] = Array()
    var  France_ServedCity: [String] = Array()
    var  Japan_ServedCity: [String] = Array()
    var  Malaysia_ServedCity: [String] = Array()
    var   Taiwan_ServedCity: [String] = Array()
    var   Netherlands_ServedCity: [String] = Array()
    var   Thailand_ServedCity: [String] = Array()
    var   South_Korea_ServedCity: [String] = Array()
    var   Philippines_ServedCity: [String] = Array()
    var   Canada_ServedCity: [String] = Array()
    var   Hong_Kong_ServedCity: [String] = Array()
    var ServeredCity_array: [String] = ["UnitedStates_ServeredCity","Germany_ServeredCity","Russia_ServeredCity","China_ServeredCity","Australia_ServeredCity", "Singapore_ServeredCity","United_Kingdom_ServeredCity","France_ServeredCity","Japan_ServeredCity","Malaysia_ServeredCity","Taiwan_ServeredCity","Netherlands_ServeredCity","Thailand_ServeredCity","South_Korea_ServeredCity","Philippines_ServeredCity","Canada_ServeredCity","Hong_Kong_ServeredCity"]
    var all_airports: [[String] ] = Array()
    var all_IATAs: [[String] ] = Array()
    var all_ServedCitys: [[String] ] = Array()

    var setCountry = Set<String>()
    func loadCellAirports() ->  [[String:String]] {
         let path = Bundle.main.path(forResource: "airports", ofType: "plist")
    
        return NSArray.init(contentsOf: URL.init(fileURLWithPath: path!)) as!  [[String:String]]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         self.items = loadCellAirports()
        let airportNumber = self.items.count
        for i in 0 ... airportNumber-1{
            setCountry.insert(self.items[i]["Country"]!)
        }
   
        for i in 0 ... airportNumber-1{
           
            if  self.items[i]["Country"] == "United States" {
                UnitedStates_Airport.append(self.items[i]["Airport"]!)
                UnitedStates_IATA.append(self.items[i]["IATA"]!)
                UnitedStates_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Germany"{
                Germany_Airport.append(self.items[i]["Airport"]!)
                Germany_IATA.append(self.items[i]["IATA"]!)
                Germany_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Australia"{
               Australia_Airport.append(self.items[i]["Airport"]!)
                Australia_IATA.append(self.items[i]["IATA"]!)
                Australia_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Singapore"{
                Singapore_Airport.append(self.items[i]["Airport"]!)
                Singapore_IATA.append(self.items[i]["IATA"]!)
                Singapore_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="United Kingdom"{
                United_Kingdom_Airport.append(self.items[i]["Airport"]!)
                United_Kingdom_IATA.append(self.items[i]["IATA"]!)
                United_Kingdom_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="France"{
                France_Airport.append(self.items[i]["Airport"]!)
                France_IATA.append(self.items[i]["IATA"]!)
                France_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Japan"{
                Japan_Airport.append(self.items[i]["Airport"]!)
                Japan_IATA.append(self.items[i]["IATA"]!)
                Japan_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Malaysia"{
                Malaysia_Airport.append(self.items[i]["Airport"]!)
                Malaysia_IATA.append(self.items[i]["IATA"]!)
                Malaysia_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Taiwan"{
               Taiwan_Airport.append(self.items[i]["Airport"]!)
                Taiwan_IATA.append(self.items[i]["IATA"]!)
                Taiwan_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Netherlands"{
                Netherlands_Airport.append(self.items[i]["Airport"]!)
                Netherlands_IATA.append(self.items[i]["IATA"]!)
                Netherlands_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Thailand"{
                Thailand_Airport.append(self.items[i]["Airport"]!)
                Thailand_IATA.append(self.items[i]["IATA"]!)
                Thailand_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="South Korea"{
                South_Korea_Airport.append(self.items[i]["Airport"]!)
                South_Korea_IATA.append(self.items[i]["IATA"]!)
                South_Korea_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Philippines"{
                Philippines_Airport.append(self.items[i]["Airport"]!)
                Philippines_IATA.append(self.items[i]["IATA"]!)
                Philippines_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Canada"{
                Canada_Airport.append(self.items[i]["Airport"]!)
                Canada_IATA.append(self.items[i]["IATA"]!)
                Canada_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Hong Kong"{
                Hong_Kong_Airport.append(self.items[i]["Airport"]!)
                Hong_Kong_IATA.append(self.items[i]["IATA"]!)
                Hong_Kong_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="Russia"{
                Russia_Airport.append(self.items[i]["Airport"]!)
                Russia_IATA.append(self.items[i]["IATA"]!)
                Russia_ServedCity.append(self.items[i]["ServedCity"]!)
            }else if self.items[i]["Country"]=="China"{
                China_Airport.append(self.items[i]["Airport"]!)
                China_IATA.append(self.items[i]["IATA"]!)
                China_ServedCity.append(self.items[i]["ServedCity"]!)
            }

         
        }

        all_airports = [ UnitedStates_Airport ] + [ Germany_Airport ]
        all_airports.append(Russia_Airport)
        all_airports.append(China_Airport)
        all_airports.append(Australia_Airport)
        all_airports.append(Singapore_Airport)
        all_airports.append(United_Kingdom_Airport)
        all_airports.append(France_Airport)
        all_airports.append(Japan_Airport)
        all_airports.append(Malaysia_Airport)
        all_airports.append(Taiwan_Airport)
        all_airports.append(Thailand_Airport)
        all_airports.append(South_Korea_Airport)
        all_airports.append(Philippines_Airport)
        all_airports.append(Canada_Airport)
        all_airports.append(Hong_Kong_Airport)
        
        all_IATAs = [ UnitedStates_IATA ] + [ Germany_IATA]
        all_IATAs.append(Russia_IATA)
        all_IATAs.append(China_IATA)
        all_IATAs.append(Australia_IATA)
        all_IATAs.append(Singapore_IATA)
        all_IATAs.append(United_Kingdom_IATA)
        all_IATAs.append(France_IATA)
        all_IATAs.append(Japan_IATA)
        all_IATAs.append(Malaysia_IATA)
        all_IATAs.append(Taiwan_IATA)
        all_IATAs.append(Thailand_IATA)
        all_IATAs.append(South_Korea_IATA)
        all_IATAs.append(Philippines_IATA)
        all_IATAs.append(Canada_IATA)
        all_IATAs.append(Hong_Kong_IATA)
       
        all_ServedCitys = [ UnitedStates_ServedCity] + [ Germany_ServedCity]
        all_ServedCitys.append(Russia_ServedCity)
        all_ServedCitys.append(China_ServedCity)
        all_ServedCitys.append(Australia_ServedCity)
        all_ServedCitys.append(Singapore_ServedCity)
        all_ServedCitys.append(United_Kingdom_ServedCity)
        all_ServedCitys.append(France_ServedCity)
        all_ServedCitys.append(Japan_ServedCity)
        all_ServedCitys.append(Malaysia_ServedCity)
        all_ServedCitys.append(Taiwan_ServedCity)
        all_ServedCitys.append(Thailand_ServedCity)
        all_ServedCitys.append(South_Korea_ServedCity)
        all_ServedCitys.append(Philippines_ServedCity)
        all_ServedCitys.append(Canada_ServedCity)
        all_ServedCitys.append(Hong_Kong_ServedCity)

        let fullScreenSize = UIScreen.main.bounds.size
        
        // 建立 UITableView 並設置原點及尺寸
        let myTableView = UITableView(frame: CGRect(
            x: 0, y: 20,
            width: fullScreenSize.width,
            height: fullScreenSize.height - 20),
                                      style: .grouped)
        
        // 註冊 cell
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "airportListCell")
        
        // 設置委任對象
        myTableView.delegate = self
        myTableView.dataSource = self
        
        // 分隔線的樣式
        myTableView.separatorStyle = .singleLine
        
        // 分隔線的間距 四個數值分別代表 上、左、下、右 的間距
        myTableView.separatorInset =
            UIEdgeInsetsMake(0, 20, 0, 20)
        
        // 是否可以點選 cell
        myTableView.allowsSelection = true
        
        // 是否可以多選 cell
        myTableView.allowsMultipleSelection = false
        
        // 加入到畫面中
        self.view.addSubview(myTableView)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return all_airports[section].count
    }
    
//    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        switch section {
//        case 0:
//            return "Personal"
//            
//        case 1:
//            return "Preferences"
//            
//        default:
//            return "Work Experience"
//        }
//    }

    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "airportListCell", for: indexPath)
        let item = self.items[indexPath.row]
        
        cell.textLabel?.text = item["Airport"]


        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
