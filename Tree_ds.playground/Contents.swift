

class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode){
        children.append(child)
    }
}


let bev = TreeNode("Bev")
let hot = TreeNode("Hot")
let cold = TreeNode("cold")
bev.add(hot)
bev.add(cold)

extension TreeNode {
    func dfs(export: (TreeNode)-> Void){
        export(self)
        children.forEach {
            $0.dfs(export: export)
        }
    }
}

bev.dfs { (node) in
    print(node.value)
}



