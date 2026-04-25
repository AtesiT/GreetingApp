protocol GreetingBusinessLogic {
    func doSomething(request: Greeting.Something.Request)
}

protocol GreetingDataStore {
    
}

class GreetingInteractor: GreetingBusinessLogic, GreetingDataStore {
    
    var presenter: GreetingPresentationLogic?
    var worker: GreetingWorker?
    
    func doSomething(request: Greeting.Something.Request) {
        worker = GreetingWorker()
        worker?.doSomeWork()
        
        let response = Greeting.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
