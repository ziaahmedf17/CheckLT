//
//  Task.swift
//  CheckLT
//
//  Created by Zi on 11/09/2025.
//

import Foundation

struct Task {
    var title: String
    static func getDummyTasks() -> [Task]{
        var tasks = [Task]()
        tasks.append(Task(title: "Check emails"))
        tasks.append(Task(title: "Discuss marketing plan"))
        tasks.append(Task(title: "Morning meeting"))
        tasks.append(Task(title: "Branding campaign"))
        return tasks
    }
}
