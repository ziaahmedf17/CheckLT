//
//  ContentView.swift
//  CheckLT
//
//  Created by Zi on 10/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            NavigationView{
                TaskListView()
            }.tabItem{
                    Image("ic-tasklist")
                        .renderingMode(.template)
                }
            InboxView()
                .tabItem{
                    Image("ic-inbox")
                        .renderingMode(.template)
                }
            RemindersView()
                .tabItem{
                    Image("ic-reminders")
                        .renderingMode(.template)
                }
            SettingsView()
                .tabItem{
                    Image("ic-settings")
                        .renderingMode(.template)
                }
        }
    }
}

#Preview {
    ContentView()
}
