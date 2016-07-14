//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        /**

        * Manually test your code here.
        
        */
        
        
        let person = Person.init(name: "Ana", ageInYears: 39)
                   print(person.celebrateBirthday())
        
        
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////

