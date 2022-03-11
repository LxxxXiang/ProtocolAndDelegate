//
//  ViewController.swift
//  ProtocolAndDelegate
//
//  Created by 廖翔 on 2022/3/11.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    

    @IBOutlet weak var tV: UITableView!
    var whichOneSelectIdndexPath = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tV.dataSource = self
        tV.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "tVC", for: indexPath) as! TVC
            cell.textLabel?.text = "543"
            cell.detailTextLabel?.text = "1234567890"
            cell.detailTextLabel?.textColor = .systemGray5
            cell.accessoryType = .disclosureIndicator
            return cell
        default:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "tVC2", for: indexPath) as! TVC2
            cell2.textLabel?.text = "748"
            cell2.detailTextLabel?.text = "0987654321"
            cell2.detailTextLabel?.textColor = .systemGray5
            cell2.accessoryType = .disclosureIndicator
            return cell2
        
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        whichOneSelectIdndexPath = indexPath.row
        print(whichOneSelectIdndexPath)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as!
        switch whichOneSelectIdndexPath {
        case 0:
         print("")
        case 1:
         print("")
        default:
            break
        }
        
    }
}

class TVC: UITableViewCell {
    
}

class TVC2: UITableViewCell {
    
}
