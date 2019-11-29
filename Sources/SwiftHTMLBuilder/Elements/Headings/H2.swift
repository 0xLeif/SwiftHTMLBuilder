struct H2 {
    var text: String
}

extension H2: HTMLElement {
    var html: String {
        "<h2>\(text)</h2>"
    }
}
