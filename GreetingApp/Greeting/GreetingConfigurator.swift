class GreetingConfigurator {
    static let shared = GreetingConfigurator()
    
    private init() {}
    
    func configure(with viewController: GreetingViewController) {
        let interactor = GreetingInteractor()
        let presenter = GreetingPresenter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        presenter.viewController = viewController
    }
}
