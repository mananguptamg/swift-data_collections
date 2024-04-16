import UIKit

class AthleteFormViewController: UIViewController {
    
    struct PropertyKeys {
        static let unwindToListSegue = "unwindToAthleteTableViewController"
    }
    
    var athlete: Athlete?
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var leagueTextField: UITextField!
    @IBOutlet var teamTextField: UITextField!
    
    init?(coder: NSCoder, athlete: Athlete?) {
        self.athlete = athlete
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        guard let athlete = athlete else {
            return
        }
        
        nameTextField.text = athlete.name
        ageTextField.text = String(athlete.age)
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
    }
    
    @IBAction func save(_ sender: Any) {
        guard let name = nameTextField.text,
            let ageString = ageTextField.text,
            let age = Int(ageString),
            let league = leagueTextField.text,
            let team = teamTextField.text else { return }
                
        athlete = Athlete(name: name, age: age, league: league, team: team)
        
        performSegue(withIdentifier: PropertyKeys.unwindToListSegue, sender: self)
    }
    
}
