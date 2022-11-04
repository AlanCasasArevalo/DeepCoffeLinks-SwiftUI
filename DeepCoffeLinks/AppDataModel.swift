import SwiftUI

class AppDataModel: ObservableObject {
    @Published var currentTab: Tab = .home
    
    func checkDeepLink (url: URL) -> Bool {
        guard let  host = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host else { return false }
        
        if host == Tab.home.rawValue {
            currentTab = .home
        } else if host == Tab.search.rawValue {
            currentTab = .search
        } else if host == Tab.settings.rawValue {
            currentTab = .settings
        } else {
            return false
        }
 
        return true
    }
}

enum Tab: String {
    case home
    case search
    case settings
}
