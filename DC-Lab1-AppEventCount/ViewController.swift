//
//  ViewController.swift
//  DC-Lab1-AppEventCount
//
//  Created by Антон Адамсон on 21.04.2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: outlets
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
    //MARK: счетчики для событий
    var willConnectToCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0
    
    //MARK: создание доступа для переменных из AppDelegate
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The App has launching \(appDelegate.launchingCount) time(s)"
        configurationForConnectingLabel.text = "The App has launching \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "The App has launching \(willConnectToCount) time(s)"
        sceneDidBecomeActiveLabel.text = "The App has launching \(sceneDidBecomeActiveCount) time(s)"
        sceneWillResignActiveLabel.text = "The App has launching \(sceneWillResignActiveCount) time(s)"
        sceneWillEnterForegroundLabel.text = "The App has launching \(sceneWillEnterForegroundCount) time(s)"
        sceneDidEnterBackgroundLabel.text = "The App has launching \(sceneDidEnterBackgroundCount) time(s)"
    }
}

