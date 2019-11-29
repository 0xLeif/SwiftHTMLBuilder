struct A {
    var text: String
    var url: String
}

extension A: HTMLElement {
    var html: String {
        "<a href=\"\(url)\">\(text)</a>"
    }
}
