//
//  AlarmViewController.swift
//  Tortura
//
//  Created by Goushik Kumar on 31/01/21.
//

import UIKit
import MKDataDetector

class AlarmViewController: UIViewController {

    @IBOutlet weak var alarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alarmTableView.delegate = self
        alarmTableView.dataSource = self
        alarmTableView.register(UINib(nibName: "AlarmTableViewCell", bundle: nil), forCellReuseIdentifier: "AlarmTableViewCell")
        let testString: String = "set an alarm after 30 minutes"
//        if let results = MKDataDetectorService.extractInformation(MKDataDetectorService)
        
//        if let results = dataDetectorService.extractInformation(fromTextBody textBody: String, withResultTypes: .date, .address) {
//            for result in results {
//                switch result.dataType {
//                    case .date:
//                    // force cast as DateAnalysisResult - create and save events, etc.
//                    case .address:
//                    // force cast as AddressAnalysisResult - get location, etc.
//                    .
//                    .
//                    // for all result types you are concerned with, i.e, your input parameters
//                }
//            }
//        }
        // extract Dates
        if let dates: [Date] = testString.dates {
            print(dates)
        }

        // extract Links
        if let links: [URL] = testString.links {
            print(links)
        }

    }

}

extension AlarmViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlarmTableViewCell") as! AlarmTableViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}
