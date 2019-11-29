struct P {
    var text: String
}

extension P: HTMLElement {
    var html: String {
        "<p>\(text)</p>"
    }
}

