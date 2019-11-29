struct H3 {
    var text: String
}

extension H3: HTMLElement {
    var html: String {
        "<h3>\(text)</h3>"
    }
}
