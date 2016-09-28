//: Playground - noun: a place where people can play

/// For example,
/// Given [1,2,3,4,5], you should return [2,1,4,3,5]

class ListNode {
    var val:Int?
    var next:ListNode?
}

func swapPairs(head:ListNode?) -> ListNode?{
    if head == nil {
        return head
    }
    guard let topHead = head?.next else {
        return head
    }
    
    var currentNode = head?.next
    head?.next = currentNode?.next
    currentNode?.next = head
    currentNode = currentNode?.next
    
    while (currentNode?.next != nil && currentNode?.next?.next != nil) {
        let originalNextNode = currentNode?.next
        //1
        currentNode?.next = originalNextNode?.next
        //2
        originalNextNode?.next = originalNextNode?.next?.next
        //3
        currentNode?.next?.next = originalNextNode
        //4
        currentNode = currentNode?.next?.next
    }
    return topHead
}
