//
//  FetchData.swift
//  Currency
//
//  Created by Александр Истомин on 26.10.2020.
//

import SwiftUI

class FetchData: ObservableObject {
    
    @Published var conversionData : [Currency] = []
    @Published var base = "USD"
    
    init() {
        fetch()
    }
    
    func  fetch(){
        
        let url = "https://api.exchangeratesapi.io/latest?base=\(base)"
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, _) in
            
            
            guard let JSONData = data else { return }
            
            do {
                let conversion = try JSONDecoder().decode(Conversion.self, from: JSONData)
                DispatchQueue.main.async {
                    
                    self.conversionData = conversion.rates.compactMap({(key, value) -> Currency? in
                        return Currency(currencyName: key, currencyValue: value)
                    })
                }
            }
            catch {
                print(error.localizedDescription)
            }
        }
        .resume()
    }
    
    func updateData(base: String){
        self.base = base
        self.conversionData.removeAll()
            fetch()
    }
}
