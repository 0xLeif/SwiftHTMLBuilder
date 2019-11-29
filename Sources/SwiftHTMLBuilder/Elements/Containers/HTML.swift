@_functionBuilder
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
