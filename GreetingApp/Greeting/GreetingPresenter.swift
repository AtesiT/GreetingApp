protocol GreetingPresentationLogic {
    func presentSomething(response: Greeting.ShowGreeting.Response)
}

class GreetingPresenter: GreetingPresentationLogic {
    
    weak var viewController: GreetingDisplayLogic?
    
    func presentSomething(response: Greeting.ShowGreeting.Response) {
        let viewModel = Greeting.ShowGreeting.ViewModel()
        viewController?.displayGreeting(viewModel: viewModel)
    }
}
