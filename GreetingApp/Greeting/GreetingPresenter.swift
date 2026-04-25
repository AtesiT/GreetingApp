protocol GreetingPresentationLogic {
    func presentGreeting(response: GreetingResponse)
}

class GreetingPresenter: GreetingPresentationLogic {
    
    weak var viewController: GreetingDisplayLogic?
    
    func presentGreeting(response: GreetingResponse) {
        let greeting = "Hello, \(response.name) \(response.surname)!"
        let viewModel = GreetingViewModel(greeting: greeting)
        viewController?.displayGreeting(viewModel: viewModel)
    }
}
