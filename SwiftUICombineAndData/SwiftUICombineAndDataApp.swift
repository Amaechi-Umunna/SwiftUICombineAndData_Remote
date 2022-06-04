//
//  SwiftUICombineAndDataApp.swift
//  SwiftUICombineAndData
//
//  Created by Amaechi Chukwu on 21/05/2022.
//

import SwiftUI
import Firebase


@main
struct SwiftUICombineAndDataApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
