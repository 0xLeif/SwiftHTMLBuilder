struct Head {
    var elements: [HTMLElement]
    
    init(_ elements: () -> [HTMLElement]) {
        self.elements = elements()
    }
}

extension Head: HTMLElement {
    var html: String {
        """
        \t<head>
        
        \(elements.map { "\t\t\($0.html)\n" }.reduce("", +))
        \t</head>
        """
    }
}
