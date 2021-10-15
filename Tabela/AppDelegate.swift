//
//  AppDelegate.swift
//  Tabela
//
//  Created by Rayana Prata Neves on 15/10/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        bounds = limites (bordas) ele da os pontos (x, y, w, h) -> (0, 0, 320, 480)
//        frame = quadro (x, y, w, h) -> (150, 230, 50, 50)
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = ViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }

}
