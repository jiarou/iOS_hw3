//
//  AirportTableViewController.swift
//  Airport List
//
//  Created by jiarou on 2017/5/31.
//  Copyright © 2017年 teamFour. All rights reserved.
//

import UIKit

class AirportTableViewController: UITableViewController{
    
 
    let headerTitles = ["Some Data 1", "KickAss"]
    var items = [[String:String]] ()
    var Country = [String]()
    var ServedCity = [String]()
    var FullName = [String]()
    var IATA = [String]()
    var Airport = [String]()
    var setCountry = Set<String>()
    
    func loadCellAirports() ->  [[String:String]] {
         let path = Bundle.main.path(forResource: "airports", ofType: "plist")
    
        return NSArray.init(contentsOf: URL.init(fileURLWithPath: path!)) as!  [[String:String]]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.tableView.register(airportListViewCell.self, forCellReuseIdentifier: "airportListCell")
        self.items = loadCellAirports()
       print(self.items)
        let airportNumber = self.items.count
        for i in 0 ... airportNumber-1 {
        Country.append(self.items[i]["Country"]!)
        ServedCity.append(self.items[i]["ServedCity"]!)
        FullName.append(self.items[i]["ShortName"]!)
        IATA.append(self.items[i]["IATA"]!)
        Airport.append(self.items[i]["Airport"]!)
        }
       // print(ServedCity)
        //print(Country)
        OperationQueue.main.addOperation({
            self.tableView.reloadData()
        })
    

        let fullScreenSize = UIScreen.main.bounds.size
        

        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1//all_airports.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items.count//all_airports[section].count
    }
  

//    // 每個 section 的標題
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if section < Country.count {
//            return  Country[section]
//        }
//        
//        return nil
//
//        
//    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          // 取得 tableView 目前使用的 cell
        let cell = tableView.dequeueReusableCell(withIdentifier:"airportListCell", for: indexPath) as? airportListViewCell
        
//        
//        print(all_airports[indexPath.section][indexPath.row])
////        cell?.airportView.text =  "\(all_airports[indexPath.section][indexPath.row])"
            if let myLabel = cell?.airportView {
                myLabel.text = FullName[indexPath.row]
            }
//
                if let myLabel01 = cell?.IAITView {
                    myLabel01.text = IATA[indexPath.row]
                }
                if let myLabel02 = cell?.cityView {
                    myLabel02.text =
                    ServedCity[indexPath.row]
                }
        
        
            return cell!
     
//        let item = self.items[indexPath.row]
//        
//        cell.textLabel?.text = item["Airport"]
 // 顯示的內容
        

      
           //cell.airportView.text = "\(all_airports[indexPath.section][indexPath.row])"
        
//        cell.IAITView.text = "\(all_IATAs[indexPath.section][indexPath.row])"
//        cell.CityView.text = "\(all_ServedCitys[indexPath.section][indexPath.row])"
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segeDetail"{
            if let destination = segue.destination as? ShowDetailViewController{
             
                let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)
                let postdata = IATA[(indexPath?.row)!]
                let postdata1 = ServedCity[(indexPath?.row)!]
                let postdata2 = FullName[(indexPath?.row)!]
                let postdata3 = Country[(indexPath?.row)!]
                let postdataAirport = Airport[(indexPath?.row)!]
              
                destination.getIAIT = postdata
                destination.ServedCity = postdata1
                destination.FullName = postdata2
               destination.Country = postdata3
               destination.Airport = postdataAirport
                
            }
            
        }
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
