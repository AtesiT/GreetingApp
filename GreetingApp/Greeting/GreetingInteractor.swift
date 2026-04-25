protocol GreetingBusinessLogic {
    func doSomething(request: Greeting.ShowGreeting.Request)
}

protocol GreetingDataStore {
    
}

class GreetingInteractor: GreetingBusinessLogic, GreetingDataStore {
    
    var presenter: GreetingPresentationLogic?
    var worker: GreetingWorker?
    
    func doSomething(request: Greeting.ShowGreeting.Request) {
        worker = GreetingWorker()
        worker?.doSomeWork()
        
        let response = Greeting.ShowGreeting.Response()
        presenter?.presentSomething(response: response)
    }
}
