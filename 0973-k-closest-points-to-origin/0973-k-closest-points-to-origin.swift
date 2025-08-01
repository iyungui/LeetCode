import Foundation

struct Heap<T> {
    private(set) var elements: [T] = []
    private let priority: (T, T) -> Bool

    init(priority: @escaping (T, T) -> Bool) {
        self.priority = priority
    }

    var isEmpty: Bool { elements.isEmpty }
    var count: Int { elements.count }
    var peek: T? { elements.first }

    mutating func push(_ value: T) {
        elements.append(value)
        siftUp(from: elements.count - 1)
    }

    mutating func pop() -> T? {
        guard !elements.isEmpty else { return nil }
        elements.swapAt(0, elements.count - 1)
        let removed = elements.removeLast()
        siftDown(from: 0)
        return removed
    }

    private mutating func siftUp(from index: Int) {
        var child = index
        var parent = (child - 1) / 2
        while child > 0 && priority(elements[child], elements[parent]) {
            elements.swapAt(child, parent)
            child = parent
            parent = (child - 1) / 2
        }
    }

    private mutating func siftDown(from index: Int) {
        var parent = index
        while true {
            let left = 2 * parent + 1
            let right = 2 * parent + 2
            var candidate = parent
            if left < count && priority(elements[left], elements[candidate]) {
                candidate = left
            }
            if right < count && priority(elements[right], elements[candidate]) {
                candidate = right
            }
            if candidate == parent { return }
            elements.swapAt(parent, candidate)
            parent = candidate
        }
    }
}

class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        typealias PointWithDistance = ([Int], Int)  // [(x, y), distance]

        // Max Heap: prioritize larger distance
        var heap = Heap<PointWithDistance>(priority: { $0.1 > $1.1 })

        for point in points {
            let distance = point[0] * point[0] + point[1] * point[1]
            heap.push((point, distance))
            if heap.count > k {
                heap.pop()  // remove the farthest
            }
        }

        return heap.elements.map { $0.0 }
    }
}