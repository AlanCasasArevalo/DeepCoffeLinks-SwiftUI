import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var appData: AppDataModel
    
    var body: some View {
        TabView(selection: $appData.currentTab) {
            Text("Home")
                .tag(Tab.home)
                .tabItem {
                    Image(systemName: "house.fill")
                }
            SearchView()
                .environmentObject(appData)
                .tag(Tab.search)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Settings")
                .tag(Tab.settings)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

