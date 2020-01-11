import Foundation

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init(){
        
    }
    
    public var isEmpty:Bool{
        head == nil
    }
    
    //push ： 往链表的头部插入元素
    public mutating func push(_ value: Value){
        head = Node(value: value, next: head)
        
        //当尾节点为nil时，说明头尾节点都是head
        if tail == nil {
            tail = head
        }
    }
    
    //append 往链表的尾部接元素
    public mutating func append(_ value: Value){
        tail?.next = Node(value: value)
        
    }
}

extension LinkedList: CustomStringConvertible{
    public var description: String{
        
        guard let head = head else {
            return "Empty List"
        }
        
        return String(describing: head)
    }
}
