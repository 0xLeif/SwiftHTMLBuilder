struct OL {
    var items: [LI]
}

extension OL: HTMLElement {
    var html: String {
        """
        \t<ol>
        
        \(items.map { "\t\t\($0.html)\n" }.reduce("", +))
        \t</ol>
        """
    }
}
