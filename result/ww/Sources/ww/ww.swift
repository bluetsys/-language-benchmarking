import Foundation

@main
public struct ww {
    public private(set) var text = "Hello, World!"

    public static func main() {
        print(ww().text)
        var add: Int64  = 0
        let st = DispatchTime.now()
        for index: Int64 in 1...100000000 {
            add = add + index
        }
        let ed = DispatchTime.now()
        let nanoTime = ed.uptimeNanoseconds - st.uptimeNanoseconds

        print("==========================")
        print("swift")
        print(add)
        print(Double(nanoTime) / 1_000_000_000 )
    }
}
