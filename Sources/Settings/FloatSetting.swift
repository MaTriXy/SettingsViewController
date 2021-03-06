import Foundation

public class FloatSetting: Setting {
    public typealias Handler = (Float) -> Void

    public let name: String
    public let min: Float
    public let max: Float
    public let format: String
    public internal(set) var value: Float {
        didSet { self.onChangeHandler(self.value) }
    }
    public let onChangeHandler: Handler

    public init(name: String,
                initialValue: Float,
                min: Float,
                max: Float,
                format: String = "%.3f",
                onChangeHandler: @escaping Handler) {
        self.name = name
        self.min = min
        self.max = max
        self.value = initialValue
        self.format = format
        self.onChangeHandler = onChangeHandler
    }
}
