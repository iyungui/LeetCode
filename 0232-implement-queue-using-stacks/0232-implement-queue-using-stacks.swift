
class MyQueue {
    private var inputStack: [Int]
    private var outputStack: [Int]

    init() {
        inputStack = []
        outputStack = []
    }
    
    func push(_ x: Int) {
        inputStack.append(x)
    }
    
    func pop() -> Int {
        transferIfNeeded()

        return outputStack.removeLast()
    }
    
    func peek() -> Int {
        transferIfNeeded()

        return outputStack.last!
    }
    
    func empty() -> Bool {
        return inputStack.isEmpty && outputStack.isEmpty
    }

    private func transferIfNeeded() {
        if outputStack.isEmpty {
            while !inputStack.isEmpty {
                outputStack.append(inputStack.removeLast())
            }
        }
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */