import SwiftUI

@main
struct DeepCoffeLinksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    print(url)
                }
        }
    }
}
