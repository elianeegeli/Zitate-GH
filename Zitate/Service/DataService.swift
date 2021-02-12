//
//  DataService.swift
//  Zitate
//
//  Created by Eliane Egeli on 06.02.21.
//

import Foundation

class DataService {
    static func getLocalData () -> [Zitat] {
        
        // Fetch all Data from local Json File
        // get URL-Path
        
        let pathString = Bundle.main.path(forResource: "zitate", ofType: "json")
        // Check ob vorhanden
        guard  pathString != nil else {
            return [Zitat] ()
        }
        
        // Creat URL object
        let url = URL(fileURLWithPath: pathString!)
        
        do {  // Create Data Object
            let data = try Data (contentsOf: url)
            // Create Decoder
            let decoder = JSONDecoder()
            
            do {
                // Decode jsaon Data
                let zitatData = try  decoder.decode([Zitat].self, from: data)
                // ID setzen
                for p in zitatData {
                    p.id = UUID()
                }
                // Return Pizza data
                return zitatData
            }
            catch {
                // Json-Decode Error
                print  (error)
            }
        }
        catch {
            // URL - Error
            print (error)
        }
        return [Zitat] ()
    }
}

