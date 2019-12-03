import Foundation

class Domain {
    
    private var repository: Repository
    
    init(repository: Repository = Repository()) {
        self.repository = repository
    }
    
    func get(_ completion: (DomainModel) -> Void) {
        repository.get { (repositoryModel) in
            completion(DomainModel(model: repositoryModel))
        }
    }
    
    func save(model: FormViewModel, _ completion: (DomainModel) -> Void) {
        repository.save(model: DomainModel(model: model)) { (model) in
            completion(DomainModel(model: model))
        }
    }
}
