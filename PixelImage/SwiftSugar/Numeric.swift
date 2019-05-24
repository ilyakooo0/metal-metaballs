protocol DoubleValuable {
    var toDouble: Double { get }

    static func fromDouble(_ double: Double) -> Self
}

protocol Numeric: DoubleValuable, Comparable,
    ExpressibleByIntegerLiteral {

    static func / (lhs: Self, rhs: Self) -> Self
    static func - (lhs: Self, rhs: Self) -> Self
    static func + (lhs: Self, rhs: Self) -> Self
    static func * (lhs: Self, rhs: Self) -> Self
}

protocol FastNumeric: Numeric {}

extension Double: FastNumeric {
    var toDouble: Double {
        get {
            return self
        }
    }

    static func fromDouble(_ double: Double) -> Double {
        return double
    }

}

extension Float: FastNumeric {
    var toDouble: Double {
        get {
            return Double(self)
        }
    }

    static func fromDouble(_ double: Double) -> Float {
        return Float(double)
    }

}

extension Int: FastNumeric {
    var toDouble: Double {
        get {
            return Double(self)
        }
    }

    static func fromDouble(_ double: Double) -> Int {
        return Int(double)
    }

}
