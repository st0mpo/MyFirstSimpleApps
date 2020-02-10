//
//  ViewController.swift
//  NewsAPI
//
//  Created by Александр Истомин on 10.02.2020.
//  Copyright © 2020 Александр Истомин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Hit the API endpoint
        
        let urlString = "https://newsapi.org/v2/everything?q=bitcoin&from=2020-01-10&sortBy=publishedAt&apiKey=66461a2781f2425b9e4c6f019adbf2bf"
        
        let url = URL(string: urlString)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //Check for errors
            
            if error == nil && data != nil {
                
                // Parse JSON
                let decoder = JSONDecoder()
               
                
                do {
                
                let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                
                    print(newsFeed)
            }
                
                catch {
                    print("Error in JSON parsing")
                }
            
        }
        }
        // Make the API Call
        dataTask.resume()
        
    }


}


