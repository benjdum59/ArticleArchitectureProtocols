import Foundation

class Presenter {
    private let domain: Domain
    
    init(domain: Domain = Domain()) {
        self.domain = domain
    }
    
    func get(_ completion: (ViewModel) -> Void) {
        domain.get { (domainModel) in
            completion(ViewModel(domainModel: domainModel))
        }
    }
    
    func save(model: FormViewModel, _ completion: (ViewModel) -> Void) {
        domain.save(model: model) { (model) in
            completion(ViewModel(domainModel: model))
        }
    }
}
