import UIKit

final class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Timc", surname: "Cook")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }

}

