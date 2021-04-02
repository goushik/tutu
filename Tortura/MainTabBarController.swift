//
//  MainTabBarController.swift
//  Tortura
//
//  Created by Goushik Kumar on 31/01/21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
           UITabBar.appearance().barTintColor = .systemBackground
           tabBar.tintColor = .label
           setUpTabs()
    }
    
    private func setUpTabs() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let alarmViewController = storyboard.instantiateViewController(withIdentifier: "AlarmViewController") as! AlarmViewController

          viewControllers = [
            createNavController(for: alarmViewController, title: NSLocalizedString("Alarm", comment: ""), image: UIImage(systemName: "clock")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),

          ]
      }
    

    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
          return navController
      }

}
