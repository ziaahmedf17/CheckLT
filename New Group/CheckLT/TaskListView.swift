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
            
            ScrollView{
                VStack{
                    HStack{
                        Text("Toda")
                        Spacer()
                        Text("\(tasks.count)")
                        Image("ic-downarrow")
                    }
                    .font(Font.taskText)
                    
                    ForEach(tasks){ task in
                        HStack{
                            
                        }
                    }
                }
            }
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
