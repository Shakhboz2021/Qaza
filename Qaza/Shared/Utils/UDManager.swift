//
//  UDManager.swift
//  Qaza
//
//  Created by Shakhboz Tokhirov on 26/08/21.
//

import Foundation

public enum UDManagerKeys: String {
    case language = "LANGUAGE"
}
public class UDManager {
    //MARK:- shared instance
    static let sharedInstance = UDManager()
    
    // MARK:- cleares all User defaults data
    func clearAll() {
        let domain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: domain)
        UserDefaults.standard.synchronize()
    }
    
    //MARK:- set String data to user defaults
    func setString(key: String, object: UDManagerKeys) {
        UserDefaults.standard.setValue(key, forKey: object.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    //MARK: - get String from user defaults
    func getString(object: UDManagerKeys) -> String {
        return UserDefaults.standard.string(forKey: object.rawValue) ?? ""
    }
    
    //MARK: - set Bool to user defaults
    func setBool(key: String, object: UDManagerKeys) {
        UserDefaults.standard.setValue(key, forKey: object.rawValue)
        UserDefaults.standard.synchronize()
    }
    
    //MARK: - get Bool from user defaults
    func getBool(object: UDManagerKeys) -> Bool {
        return UserDefaults.standard.bool(forKey: object.rawValue) 
    }
}
