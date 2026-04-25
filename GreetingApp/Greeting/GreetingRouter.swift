import UIKit

@objc protocol GreetingRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol GreetingDataPassing {
    var dataStore: GreetingDataStore? { get }
}

class GreetingRouter: NSObject, GreetingRoutingLogic, GreetingDataPassing {
    
    weak var viewController: GreetingViewController?
    var dataStore: GreetingDataStore?
    
    // MARK: Routing
    /*
    func routeToSomewhere(segue: UIStoryboardSegue?) {
        if let segue = segue {
            let destinationVC = segue.destination as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
            var destinationDS = destinationVC.router!.dataStore!
            passDataToSomewhere(source: dataStore!, destination: &destinationDS)
            navigateToSomewhere(source: viewController!, destination: destinationVC)
        }
    }
    */
    
    // MARK: Navigation
    /*
    func navigateToSomewhere(source: GreetingViewController, destination: SomewhereViewController) {
        source.show(destination, sender: nil)
    }
    */
    
    // MARK: Passing data
    /*
    func passDataToSomewhere(source: GreetingDataStore, destination: inout SomewhereDataStore) {
        destination.name = source.name
    }
    */
}
