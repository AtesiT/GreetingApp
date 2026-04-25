import UIKit

protocol GreetingDisplayLogic: AnyObject {
    func displaySomething(viewModel: Greeting.ShowGreeting.ViewModel)
}

class GreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
        
    var interactor: GreetingBusinessLogic?
    var router: (NSObjectProtocol & GreetingRoutingLogic & GreetingDataPassing)?
    
    // MARK: Object lifecycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: Routing
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
        
    @IBAction func showGreetingPressed() {
        
    }
    
    private func doSomething() {
        let request = Greeting.ShowGreeting.Request()
        interactor?.doSomething(request: request)
    }
    
    // MARK: Setup
    private func setup() {
        let viewController = self
        let interactor = GreetingInteractor()
        let presenter = GreetingPresenter()
        let router = GreetingRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}

extension GreetingViewController: GreetingDisplayLogic {
    func displaySomething(viewModel: Greeting.ShowGreeting.ViewModel) {
        
    }
}
