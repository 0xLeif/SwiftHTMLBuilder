struct H6 {
    var text: String
}

extension H6: HTMLElement {
    var html: String {
        "<h6>\(text)</h6>"
    }
}
