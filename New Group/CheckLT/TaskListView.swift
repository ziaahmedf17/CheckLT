import SwiftUI

struct TaskListView: View {

    @State private var isChecked = false
    @State private var tasks = Task.getDummyTasks()

    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()

            ScrollView {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    VStack {
                        HStack {
                            Text("Today")
                            Spacer()
                            Text("\(tasks.count)")
                            Image("ic-downarrow")
                        }
                        .font(.taskText)

                        ForEach($tasks) { $task in
                            HStack {
                                Button {
                                    task.isChecked.toggle()
                                } label: {
                                    Image(task.isChecked ? "ic-tasklist" : "ic-checkbox")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                }
                                Text(task.title)
                                    .font(.taskText)
                                Spacer()
                                VStack(alignment: .trailing, spacing: 3) {
                                    Text("19:00")
                                        .foregroundColor(Color("Alarm"))
                                        .font(.taskAlarmText)
                                    Image("ic-alarm")
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)

                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
            }

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        // TODO: add new task
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundStyle(Color.accentColor)
                            .padding(.bottom, 28, )
                            .padding(.trailing, 24)
                    }

                }
            }
        }.toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Image("ic-hamburger")
            }
            ToolbarItemGroup(placement: .navigationBarTrailing) {
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
