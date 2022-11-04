import SwiftUI

class AppDataModel: ObservableObject {
    @Published var currentTab: Tab = .home
}

enum Tab: String {
    case home
    case search
    case settings
}
