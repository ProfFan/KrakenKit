// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/tpu/proto/tpu_embedding_output_layout.proto
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

public struct Tensorflow_Tpu_TPUEmbeddingOutputLayout {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output locations for each feature of each table.
  public var table: [Tensorflow_Tpu_TPUEmbeddingOutputLayout.TableDescriptor] = []

  /// Shape and layout information for each tensor.
  public var output: [Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Location of one copy of the feature's data.
  public struct OutputLocation {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Which output tensor this copy of the feature will go into. Must be
    /// between 0 and layout.output_size().
    public var tensorIndex: Int32 = 0

    /// Offset in dimension 0 for this feature copy. Must be between 0 and
    /// layout.output(tensor_index).dim0_size_per_sample().
    public var dim0Offset: Int32 = 0

    /// Offset in dimension 1 for this feature copy. Must be between 0 and
    /// layout.output(tensor_index).dim1_size() - table width; repeated or
    /// partially/fully overlapping values are allowed and results in the same
    /// range will be summed (with the gradients replicated in the backward
    /// pass).
    public var dim1Offset: Int32 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Description of the output placement for one feature.
  public struct FeatureDescriptor {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Typically, only one copy of each feature is used, but multiple are
    /// allowed and the same data will be copied to all of them (with the
    /// gradients summed in the backward pass).
    public var outputLocation: [Tensorflow_Tpu_TPUEmbeddingOutputLayout.OutputLocation] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Description of the output placement for features of one table.
  public struct TableDescriptor {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Output locations for each feature loaded from this table.
    public var feature: [Tensorflow_Tpu_TPUEmbeddingOutputLayout.FeatureDescriptor] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Size and layout information for 2-D tensors.
  public struct TwoDOutputTensor {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Multiplier for output dimension 0 size; used to match legacy format that
    /// stacks features within a sample in dimension 0.
    public var dim0SizePerSample: Int32 = 0

    /// The size (in dimension 1) of this output tensor.
    public var dim1Size: Int32 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Format information for a single output tensor.
  public struct EmbeddingOutputTensor {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var outputFormat: OneOf_OutputFormat? {
      get {return _storage._outputFormat}
      set {_uniqueStorage()._outputFormat = newValue}
    }

    public var twoD: Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor {
      get {
        if case .twoD(let v)? = _storage._outputFormat {return v}
        return Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor()
      }
      set {_uniqueStorage()._outputFormat = .twoD(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum OneOf_OutputFormat: Equatable {
      case twoD(Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor)

    #if !swift(>=4.1)
      public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor.OneOf_OutputFormat, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor.OneOf_OutputFormat) -> Bool {
        switch (lhs, rhs) {
        case (.twoD(let l), .twoD(let r)): return l == r
        }
      }
    #endif
    }

    public init() {}

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.tpu"

extension Tensorflow_Tpu_TPUEmbeddingOutputLayout: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TPUEmbeddingOutputLayout"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "table"),
    2: .same(proto: "output"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.table)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.output)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.table.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.table, fieldNumber: 1)
    }
    if !self.output.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.output, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout) -> Bool {
    if lhs.table != rhs.table {return false}
    if lhs.output != rhs.output {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_TPUEmbeddingOutputLayout.OutputLocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Tensorflow_Tpu_TPUEmbeddingOutputLayout.protoMessageName + ".OutputLocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tensor_index"),
    2: .standard(proto: "dim0_offset"),
    3: .standard(proto: "dim1_offset"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.tensorIndex)
      case 2: try decoder.decodeSingularInt32Field(value: &self.dim0Offset)
      case 3: try decoder.decodeSingularInt32Field(value: &self.dim1Offset)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.tensorIndex != 0 {
      try visitor.visitSingularInt32Field(value: self.tensorIndex, fieldNumber: 1)
    }
    if self.dim0Offset != 0 {
      try visitor.visitSingularInt32Field(value: self.dim0Offset, fieldNumber: 2)
    }
    if self.dim1Offset != 0 {
      try visitor.visitSingularInt32Field(value: self.dim1Offset, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.OutputLocation, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.OutputLocation) -> Bool {
    if lhs.tensorIndex != rhs.tensorIndex {return false}
    if lhs.dim0Offset != rhs.dim0Offset {return false}
    if lhs.dim1Offset != rhs.dim1Offset {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_TPUEmbeddingOutputLayout.FeatureDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Tensorflow_Tpu_TPUEmbeddingOutputLayout.protoMessageName + ".FeatureDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "output_location"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.outputLocation)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.outputLocation.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.outputLocation, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.FeatureDescriptor, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.FeatureDescriptor) -> Bool {
    if lhs.outputLocation != rhs.outputLocation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_TPUEmbeddingOutputLayout.TableDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Tensorflow_Tpu_TPUEmbeddingOutputLayout.protoMessageName + ".TableDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "feature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.feature)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.feature.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.feature, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.TableDescriptor, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.TableDescriptor) -> Bool {
    if lhs.feature != rhs.feature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Tensorflow_Tpu_TPUEmbeddingOutputLayout.protoMessageName + ".TwoDOutputTensor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "dim0_size_per_sample"),
    1: .standard(proto: "dim1_size"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.dim1Size)
      case 2: try decoder.decodeSingularInt32Field(value: &self.dim0SizePerSample)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.dim1Size != 0 {
      try visitor.visitSingularInt32Field(value: self.dim1Size, fieldNumber: 1)
    }
    if self.dim0SizePerSample != 0 {
      try visitor.visitSingularInt32Field(value: self.dim0SizePerSample, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor) -> Bool {
    if lhs.dim0SizePerSample != rhs.dim0SizePerSample {return false}
    if lhs.dim1Size != rhs.dim1Size {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Tensorflow_Tpu_TPUEmbeddingOutputLayout.protoMessageName + ".EmbeddingOutputTensor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    4: .standard(proto: "two_d"),
  ]

  fileprivate class _StorageClass {
    var _outputFormat: Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor.OneOf_OutputFormat?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _outputFormat = source._outputFormat
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
        case 4:
          var v: Tensorflow_Tpu_TPUEmbeddingOutputLayout.TwoDOutputTensor?
          if let current = _storage._outputFormat {
            try decoder.handleConflictingOneOf()
            if case .twoD(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._outputFormat = .twoD(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if case .twoD(let v)? = _storage._outputFormat {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor, rhs: Tensorflow_Tpu_TPUEmbeddingOutputLayout.EmbeddingOutputTensor) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._outputFormat != rhs_storage._outputFormat {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}