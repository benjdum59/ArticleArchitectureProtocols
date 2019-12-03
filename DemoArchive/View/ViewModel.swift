import Foundation

struct ViewModel {
    let firstname: String?
    let lastname: String?
    let result: String?
    
    var lastnameErrorHidden: Bool {
        return !(lastname?.isEmpty ?? true)
    }
    var firstnameErrorHidden: Bool {
        return !(firstname?.isEmpty ?? false)
    }
    
    var resultHidden: Bool {
        return result == nil
    }

    init(domainModel: DomainModel) {
        firstname = domainModel.firstname
        lastname = domainModel.lastname
        result = {
            guard let fullname = domainModel.fullname else {
                return ""
            }
            return "Hello \(fullname)"
        } ()
    }
    
}

