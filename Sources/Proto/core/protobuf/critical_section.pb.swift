// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/protobuf/critical_section.proto
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

/// Protocol buffer representing a CriticalSection.
public struct Tensorflow_CriticalSectionDef {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the critical section handle.
  public var criticalSectionName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Protocol buffer representing a CriticalSection execution.
public struct Tensorflow_CriticalSectionExecutionDef {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the critical section handle.
  public var executeInCriticalSectionName: String = String()

  /// Whether this operation requires exclusive access to its resources,
  /// (i.e., no other CriticalSections may request the same resources).
  public var exclusiveResourceAccess: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_CriticalSectionDef: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CriticalSectionDef"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "critical_section_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.criticalSectionName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.criticalSectionName.isEmpty {
      try visitor.visitSingularStringField(value: self.criticalSectionName, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_CriticalSectionDef, rhs: Tensorflow_CriticalSectionDef) -> Bool {
    if lhs.criticalSectionName != rhs.criticalSectionName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Tensorflow_CriticalSectionExecutionDef: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CriticalSectionExecutionDef"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "execute_in_critical_section_name"),
    2: .standard(proto: "exclusive_resource_access"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.executeInCriticalSectionName)
      case 2: try decoder.decodeSingularBoolField(value: &self.exclusiveResourceAccess)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.executeInCriticalSectionName.isEmpty {
      try visitor.visitSingularStringField(value: self.executeInCriticalSectionName, fieldNumber: 1)
    }
    if self.exclusiveResourceAccess != false {
      try visitor.visitSingularBoolField(value: self.exclusiveResourceAccess, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Tensorflow_CriticalSectionExecutionDef, rhs: Tensorflow_CriticalSectionExecutionDef) -> Bool {
    if lhs.executeInCriticalSectionName != rhs.executeInCriticalSectionName {return false}
    if lhs.exclusiveResourceAccess != rhs.exclusiveResourceAccess {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}