import UIKit

protocol GreetingDisplayLogic: AnyObject {
    func displayGreeting(viewModel: GreetingViewModel)
}

class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
        
    var interactor: GreetingBusinessLogic?

    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingConfigurator.shared.configure(with: self)
    }
        
    @IBAction func showGreetingPressed() {
        let request = GreetingRequest()
        interactor?.showGreeting(request: request)
    }
}

extension GreetingViewController: GreetingDisplayLogic {
    func displayGreeting(viewModel: Greeting.ShowGreeting.ViewModel) {
        greetingLabel.text = viewModel.greeting
    }
}
