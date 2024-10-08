import SwiftUI

struct ContentView: View {
    
    @ObservedObject var holidaysDAO = HolidaysDAO()
    
    init() {
            let appearance = UITabBarAppearance()
            appearance.backgroundColor = .tabBarEQuadrados
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    
    var body: some View {
        TabView {
            HomeView(holidaysDAO: holidaysDAO).tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Today")
                }
            }
            ChartsView(holidaysDAO: holidaysDAO).tabItem {
                VStack {
                    Image(systemName: "chart.bar.xaxis")
                    Text("Charts")
                }
            }
            TermsView().tabItem {
                VStack {
                    Image(systemName: "info.circle")
                    Text("Information")
                }
            }
        }
        .accentColor(.vermeiTchan)
    }
}


#Preview {
    ContentView()
}
