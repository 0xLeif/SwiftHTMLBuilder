struct H1 {
    var text: String
}

extension H1: HTMLElement {
    var html: String {
        "<h1>\(text)</h1>"
    }
}
