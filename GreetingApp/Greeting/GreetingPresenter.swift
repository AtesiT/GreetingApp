import Foundation

//  Слой содержит структуру, которая будет хранить состояние всего модуля
struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    unowned private let view: GreetingViewInputProtocol
    
    required init(view: any GreetingViewInputProtocol) {
        self.view = view
    }
    
    func didTapShowGreetingButton() {
        
    }
    
    
}
