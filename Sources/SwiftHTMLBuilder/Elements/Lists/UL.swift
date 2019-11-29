struct UL {
    var items: [LI]
}

extension UL: HTMLElement {
    var html: String {
        """
        \t<ul>
        
        \(items.map { "\t\t\($0.html)\n" }.reduce("", +))
        \t</ul>
        """
    }
}
