//
//  SmartKeyApp.swift
//  SmartKey
//
//  Created by Mor Ohana on 11/3/22.
//

import SwiftUI
import Firebase





@main
struct SmartKeyApp: App {
    
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject  var portfolioListViewModel: PortfolioViewModel = PortfolioViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                LoginView()
            }
            .environmentObject(portfolioListViewModel)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
    [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
    
}
