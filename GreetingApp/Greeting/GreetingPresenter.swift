protocol GreetingPresentationLogic {
    func presentSomething(response: Greeting.Something.Response)
}

class GreetingPresenter: GreetingPresentationLogic {
    
    weak var viewController: GreetingDisplayLogic?
    
    func presentSomething(response: Greeting.Something.Response) {
        let viewModel = Greeting.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
