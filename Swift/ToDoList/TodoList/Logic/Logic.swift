class TaskManager {
   
    static let instance = TaskManager()
    
    private init() {
        
    }
    
    
    
    public var taskList: Array<Task> = []
   private (set) var cellTitle: String = ""
   private (set) var cellText: String = ""
    public func addTask(taskName: String, taskDescription: String,colorBox: String){
        
        taskList.append(Task(title: taskName, description: taskDescription, Color: colorBox ))
   
    }
    public func addMore(CellText: String,CellTitle:String){
      
        cellTitle = String(CellTitle)
        cellText = String(CellText)
    }
        
    
    
}



class Task {
    var title: String
    var description: String
    var Color: String

    init(title: String, description: String,Color: String) {
        self.title = title
        self.description = description
        self.Color = Color
       
    }

}

