struct Body {
    var elements: [HTMLElement]
    
    init(_ elements: () -> [HTMLElement]) {
        self.elements = elements()
    }
}

extension Body: HTMLElement {
    var html: String {
        """
        \t<body>
        
        \(elements.map { "\t\t\($0.html)\n" }.reduce("", +))
        \t</body>
        """
    }
}
