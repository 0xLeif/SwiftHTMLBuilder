protocol HTMLElement {
    var html: String { get }
}

struct HTML {
    var head: Head?
    var body: Body?
    var extraElements: [HTMLElement]
    
    init(_ elements: () -> [HTMLElement]) {
        let e = elements()
        let html = e.filter { $0 is HTML }
        let head = e.filter { $0 is Head }
        let body = e.filter { $0 is Body }
        
        if !html.isEmpty {
            print("HTML: \(html)")
        }
        
        self.head = head.first as? Head
        self.body = body.first as? Body
        self.extraElements = e
    }
}

extension HTML: HTMLElement {
    var html: String {
        """
        <!DOCTYPE html>
        <html>
        \(head?.html ?? "")
        \(body?.html ?? "")
        </html>
        """
    }
}

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

struct H1 {
    var text: String
}

extension H1: HTMLElement {
    var html: String {
        "<h1>\(text)</h1>"
    }
}


struct P {
    var text: String
}

extension P: HTMLElement {
    var html: String {
        "<p>\(text)</p>"
    }
}

struct Title {
    var text: String
}

extension Title: HTMLElement {
    var html: String {
        "<title>\(text)</title>"
    }
}

struct A {
    var text: String
    var url: String
}

extension A: HTMLElement {
    var html: String {
        "<a href=\"\(url)\">\(text)</a>"
    }
}
