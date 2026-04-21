import Foundation

protocol GreetingConfiguratorInputProtocol {
    func configure(withView view: ViewController)
}

class GreetingConfigurator: GreetingConfiguratorInputProtocol {
    func configure(withView view: ViewController) {
        let presenter = GreetingPresenter(view: view)
        let interactor = GreetingInteractor(presenter: presenter)
        view.presenter = presenter
        presenter.interactor = interactor
    }
}
