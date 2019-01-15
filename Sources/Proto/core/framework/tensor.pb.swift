// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/tensor.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Protocol buffer representing a tensor.
public struct Tensorflow_TensorProto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var dtype: Tensorflow_DataType {
    get {return _storage._dtype}
    set {_uniqueStorage()._dtype = newValue}
  }

  /// Shape of the tensor.  TODO(touts): sort out the 0-rank issues.
  public var tensorShape: Tensorflow_TensorShapeProto {
    get {return _storage._tensorShape ?? Tensorflow_TensorShapeProto()}
    set {_uniqueStorage()._tensorShape = newValue}
  }
  /// Returns true if `tensorShape` has been explicitly set.
  public var hasTensorShape: Bool {return _storage._tensorShape != nil}
  /// Clears the value of `tensorShape`. Subsequent reads from it will return its default value.
  public mutating func clearTensorShape() {_uniqueStorage()._tensorShape = nil}

  /// Version number.
  ///
  /// In version 0, if the "repeated xxx" representations contain only one
  /// element, that element is repeated to fill the shape.  This makes it easy
  /// to represent a constant Tensor with a single value.
  public var versionNumber: Int32 {
    get {return _storage._versionNumber}
    set {_uniqueStorage()._versionNumber = newValue}
  }

  /// Serialized raw tensor content from either Tensor::AsProtoTensorContent or
  /// memcpy in tensorflow::grpc::EncodeTensorToByteBuffer. This representation
  /// can be used for all tensor types. The purpose of this representation is to
  /// reduce serialization overhead during RPC call by avoiding serialization of
  /// many repeated small items.
  public var tensorContent: Data {
    get {return _storage._tensorContent}
    set {_uniqueStorage()._tensorContent = newValue}
  }

  /// DT_HALF, DT_BFLOAT16. Note that since protobuf has no int16 type, we'll
  /// have some pointless zero padding for each value here.
  public var halfVal: [Int32] {
    get {return _storage._halfVal}
    set {_uniqueStorage()._halfVal = newValue}
  }

  /// DT_FLOAT.
  public var floatVal: [Float] {
    get {return _storage._floatVal}
    set {_uniqueStorage()._floatVal = newValue}
  }

  /// DT_DOUBLE.
  public var doubleVal: [Double] {
    get {return _storage._doubleVal}
    set {_uniqueStorage()._doubleVal = newValue}
  }

  /// DT_INT32, DT_INT16, DT_INT8, DT_UINT8.
  public var intVal: [Int32] {
    get {return _storage._intVal}
    set {_uniqueStorage()._intVal = newValue}
  }

  /// DT_STRING
  public var stringVal: [Data] {
    get {return _storage._stringVal}
    set {_uniqueStorage()._stringVal = newValue}
  }

  /// DT_COMPLEX64. scomplex_val(2*i) and scomplex_val(2*i+1) are real
  /// and imaginary parts of i-th single precision complex.
  public var scomplexVal: [Float] {
    get {return _storage._scomplexVal}
    set {_uniqueStorage()._scomplexVal = newValue}
  }

  /// DT_INT64
  public var int64Val: [Int64] {
    get {return _storage._int64Val}
    set {_uniqueStorage()._int64Val = newValue}
  }

  /// DT_BOOL
  public var boolVal: [Bool] {
    get {return _storage._boolVal}
    set {_uniqueStorage()._boolVal = newValue}
  }

  /// DT_COMPLEX128. dcomplex_val(2*i) and dcomplex_val(2*i+1) are real
  /// and imaginary parts of i-th double precision complex.
  public var dcomplexVal: [Double] {
    get {return _storage._dcomplexVal}
    set {_uniqueStorage()._dcomplexVal = newValue}
  }

  /// DT_RESOURCE
  public var resourceHandleVal: [Tensorflow_ResourceHandleProto] {
    get {return _storage._resourceHandleVal}
    set {_uniqueStorage()._resourceHandleVal = newValue}
  }

  /// DT_VARIANT
  public var variantVal: [Tensorflow_VariantTensorDataProto] {
    get {return _storage._variantVal}
    set {_uniqueStorage()._variantVal = newValue}
  }

  /// DT_UINT32
  public var uint32Val: [UInt32] {
    get {return _storage._uint32Val}
    set {_uniqueStorage()._uint32Val = newValue}
  }

  /// DT_UINT64
  public var uint64Val: [UInt64] {
    get {return _storage._uint64Val}
    set {_uniqueStorage()._uint64Val = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Protocol buffer representing the serialization format of DT_VARIANT tensors.
public struct Tensorflow_VariantTensorDataProto {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the type of objects being serialized.
  public var typeName: String = String()

  /// Portions of the object that are not Tensors.
  public var metadata: Data = SwiftProtobuf.Internal.emptyData

  /// Tensors contained within objects being serialized.
  public var tensors: [Tensorflow_TensorProto] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_TensorProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TensorProto"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dtype"),
    2: .standard(proto: "tensor_shape"),
    3: .standard(proto: "version_number"),
    4: .standard(proto: "tensor_content"),
    13: .standard(proto: "half_val"),
    5: .standard(proto: "float_val"),
    6: .standard(proto: "double_val"),
    7: .standard(proto: "int_val"),
    8: .standard(proto: "string_val"),
    9: .standard(proto: "scomplex_val"),
    10: .standard(proto: "int64_val"),
    11: .standard(proto: "bool_val"),
    12: .standard(proto: "dcomplex_val"),
    14: .standard(proto: "resource_handle_val"),
    15: .standard(proto: "variant_val"),
    16: .standard(proto: "uint32_val"),
    17: .standard(proto: "uint64_val"),
  ]

  fileprivate class _StorageClass {
    var _dtype: Tensorflow_DataType = .dtInvalid
    var _tensorShape: Tensorflow_TensorShapeProto? = nil
    var _versionNumber: Int32 = 0
    var _tensorContent: Data = SwiftProtobuf.Internal.emptyData
    var _halfVal: [Int32] = []
    var _floatVal: [Float] = []
    var _doubleVal: [Double] = []
    var _intVal: [Int32] = []
    var _stringVal: [Data] = []
    var _scomplexVal: [Float] = []
    var _int64Val: [Int64] = []
    var _boolVal: [Bool] = []
    var _dcomplexVal: [Double] = []
    var _resourceHandleVal: [Tensorflow_ResourceHandleProto] = []
    var _variantVal: [Tensorflow_VariantTensorDataProto] = []
    var _uint32Val: [UInt32] = []
    var _uint64Val: [UInt64] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _dtype = source._dtype
      _tensorShape = source._tensorShape
      _versionNumber = source._versionNumber
      _tensorContent = source._tensorContent
      _halfVal = source._halfVal
      _floatVal = source._floatVal
      _doubleVal = source._doubleVal
      _intVal = source._intVal
      _stringVal = source._stringVal
      _scomplexVal = source._scomplexVal
      _int64Val = source._int64Val
      _boolVal = source._boolVal
      _dcomplexVal = source._dcomplexVal
      _resourceHandleVal = source._resourceHandleVal
      _variantVal = source._variantVal
      _uint32Val = source._uint32Val
      _uint64Val = source._uint64Val
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &_storage._dtype)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._tensorShape)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._versionNumber)
        case 4: try decoder.decodeSingularBytesField(value: &_storage._tensorContent)
        case 5: try decoder.decodeRepeatedFloatField(value: &_storage._floatVal)
        case 6: try decoder.decodeRepeatedDoubleField(value: &_storage._doubleVal)
        case 7: try decoder.decodeRepeatedInt32Field(value: &_storage._intVal)
        case 8: try decoder.decodeRepeatedBytesField(value: &_storage._stringVal)
        case 9: try decoder.decodeRepeatedFloatField(value: &_storage._scomplexVal)
        case 10: try decoder.decodeRepeatedInt64Field(value: &_storage._int64Val)
        case 11: try decoder.decodeRepeatedBoolField(value: &_storage._boolVal)
        case 12: try decoder.decodeRepeatedDoubleField(value: &_storage._dcomplexVal)
        case 13: try decoder.decodeRepeatedInt32Field(value: &_storage._halfVal)
        case 14: try decoder.decodeRepeatedMessageField(value: &_storage._resourceHandleVal)
        case 15: try decoder.decodeRepeatedMessageField(value: &_storage._variantVal)
        case 16: try decoder.decodeRepeatedUInt32Field(value: &_storage._uint32Val)
        case 17: try decoder.decodeRepeatedUInt64Field(value: &_storage._uint64Val)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._dtype != .dtInvalid {
        try visitor.visitSingularEnumField(value: _storage._dtype, fieldNumber: 1)
      }
      if let v = _storage._tensorShape {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if _storage._versionNumber != 0 {
        try visitor.visitSingularInt32Field(value: _storage._versionNumber, fieldNumber: 3)
      }
      if !_storage._tensorContent.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._tensorContent, fieldNumber: 4)
      }
      if !_storage._floatVal.isEmpty {
        try visitor.visitPackedFloatField(value: _storage._floatVal, fieldNumber: 5)
      }
      if !_storage._doubleVal.isEmpty {
        try visitor.visitPackedDoubleField(value: _storage._doubleVal, fieldNumber: 6)
      }
      if !_storage._intVal.isEmpty {
        try visitor.visitPackedInt32Field(value: _storage._intVal, fieldNumber: 7)
      }
      if !_storage._stringVal.isEmpty {
        try visitor.visitRepeatedBytesField(value: _storage._stringVal, fieldNumber: 8)
      }
      if !_storage._scomplexVal.isEmpty {
        try visitor.visitPackedFloatField(value: _storage._scomplexVal, fieldNumber: 9)
      }
      if !_storage._int64Val.isEmpty {
        try visitor.visitPackedInt64Field(value: _storage._int64Val, fieldNumber: 10)
      }
      if !_storage._boolVal.isEmpty {
        try visitor.visitPackedBoolField(value: _storage._boolVal, fieldNumber: 11)
      }
      if !_storage._dcomplexVal.isEmpty {
        try visitor.visitPackedDoubleField(value: _storage._dcomplexVal, fieldNumber: 12)
      }
      if !_storage._halfVal.isEmpty {
        try visitor.visitPackedInt32Field(value: _storage._halfVal, fieldNumber: 13)
      }
      if !_storage._resourceHandleVal.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._resourceHandleVal, fieldNumber: 14)
      }
      if !_storage._variantVal.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._variantVal, fieldNumber: 15)
      }
      if !_storage._uint32Val.isEmpty {
        try visitor.visitPackedUInt32Field(value: _storage._uint32Val, fieldNumber: 16)
      }
      if !_storage._uint64Val.isEmpty {
        try visitor.visitPackedUInt64Field(value: _storage._uint64Val, fieldNumber: 17)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_TensorProto, rhs: Tensorflow_TensorProto) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._dtype != rhs_storage._dtype {return false}
        if _storage._tensorShape != rhs_storage._tensorShape {return false}
        if _storage._versionNumber != rhs_storage._versionNumber {return false}
        if _storage._tensorContent != rhs_storage._tensorContent {return false}
        if _storage._halfVal != rhs_storage._halfVal {return false}
        if _storage._floatVal != rhs_storage._floatVal {return false}
        if _storage._doubleVal != rhs_storage._doubleVal {return false}
        if _storage._intVal != rhs_storage._intVal {return false}
        if _storage._stringVal != rhs_storage._stringVal {return false}
        if _storage._scomplexVal != rhs_storage._scomplexVal {return false}
        if _storage._int64Val != rhs_storage._int64Val {return false}
        if _storage._boolVal != rhs_storage._boolVal {return false}
        if _storage._dcomplexVal != rhs_storage._dcomplexVal {return false}
        if _storage._resourceHandleVal != rhs_storage._resourceHandleVal {return false}
        if _storage._variantVal != rhs_storage._variantVal {return false}
        if _storage._uint32Val != rhs_storage._uint32Val {return false}
        if _storage._uint64Val != rhs_storage._uint64Val {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_VariantTensorDataProto: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VariantTensorDataProto"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "type_name"),
    2: .same(proto: "metadata"),
    3: .same(proto: "tensors"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.typeName)
      case 2: try decoder.decodeSingularBytesField(value: &self.metadata)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.tensors)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.typeName.isEmpty {
      try visitor.visitSingularStringField(value: self.typeName, fieldNumber: 1)
    }
    if !self.metadata.isEmpty {
      try visitor.visitSingularBytesField(value: self.metadata, fieldNumber: 2)
    }
    if !self.tensors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tensors, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_VariantTensorDataProto, rhs: Tensorflow_VariantTensorDataProto) -> Bool {
    if lhs.typeName != rhs.typeName {return false}
    if lhs.metadata != rhs.metadata {return false}
    if lhs.tensors != rhs.tensors {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
