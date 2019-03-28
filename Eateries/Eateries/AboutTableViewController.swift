//
//  AboutTableViewController.swift
//  Eateries
//
//  Created by Александр on 08/03/2019.
//  Copyright © 2019 Aleksandr Istomin. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {

    let sectionHeaders = ["Мы в социальных сетях", "Наши сайты"]
    let sectionContent = [["facebook", "vk", "youtube"], ["swiftbook.ru", "forum.swiftbook.ru"]]
    let firstSectionLinks = ["https://www.facebook.com/swiftbook.ru/", "https://vk.com/swiftbook", "https://www.youtube.com/channel/UCXlCPCsB09ftBA5bQfiSWoQ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
tableView.tableFooterView = UIView(frame: CGRect.zero)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionHeaders.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionHeaders[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sectionContent[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
cell.textLabel?.text = sectionContent[indexPath.section][indexPath.row]
    
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        switch indexPath.section {
        case 0:
            switch indexPath.row {
        case 0..<firstSectionLinks.count:
                performSegue(withIdentifier: "showWebPageSegue", sender: self)
            default: break
            }
        default: break
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showWebPageSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let dvc = segue.destination as! WebViewController
                dvc.url = URL(string: firstSectionLinks[indexPath.row])
            }
        }
    }
}
