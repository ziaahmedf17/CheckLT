//
//  TaskList.swift
//  CheckLT
//
//  Created by Zi on 10/09/2025.
//

import SwiftUI

struct TaskListView: View {
    var tasks = Task.getDummyTasks()
    
    var body: some View {
        
        ZStack{
            Color("Background")
                .ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("ic-hamburger")
                }
                
                ToolbarItem(placement: .principal){
                    Text("Today")
                        .font(.navTitle)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image("ic-dots")
                }
            }
            .navigationTitle("Today")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TaskListView()
}
