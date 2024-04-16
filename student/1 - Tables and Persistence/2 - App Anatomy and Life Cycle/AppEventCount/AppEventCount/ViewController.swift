import UIKit

class ViewController: UIViewController {

    @IBOutlet var launchLabel: UILabel!
    @IBOutlet var configureLabel: UILabel!
    @IBOutlet var willConnectLabel: UILabel!
    @IBOutlet var didBecomeActiveLabel: UILabel!
    @IBOutlet var willResignActiveLabel: UILabel!
    @IBOutlet var willEnterForegroundLabel: UILabel!
    @IBOutlet var didEnterBackgroundLabel: UILabel!
    
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        launchLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configureLabel.text = "appConfigurationForConnecting \(appDelegate.configurationForConnectingCount) time(s) "
        willConnectLabel.text = "sceneWillConnect \(willConnectCount) time(s)"
        didBecomeActiveLabel.text = "sceneDidBecomeActive \(willResignActiveCount) time(s)"
        willResignActiveLabel.text = "sceneWillResignActive \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "sceneWillEnterForeground \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "sceneDidEnterBackground \(didEnterBackgroundCount) times(s)"
    }


}

