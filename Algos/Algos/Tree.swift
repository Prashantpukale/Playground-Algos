//
//  Algos.swift
//  Algos
//
//  Created by Prashant Pukale on 04/03/19.
//  Copyright © 2019 Personal. All rights reserved.
//


class BTree<T: Comparable> {
  var root: BTreeNode<T>?

  func commonAnsestorOf(node node1:BTreeNode<T>?, andNode node2:BTreeNode<T>?) -> BTreeNode<T>? {
    guard let root = root else { return nil }
    guard let node1 = node1 else { return node2 }
    guard let node2 = node2 else { return node1 }
    return BTree<T>.findLCA(root: root, node1: node1, node2: node2)
  }

  private static func findLCA(root: BTreeNode<T>, node1: BTreeNode<T>, node2: BTreeNode<T>) -> BTreeNode<T>? {
    return root.findLCA(node1: node1, node2: node2)
  }
}

extension BTree: Equatable {
  static func == (lhs: BTree<T>, rhs: BTree<T>) -> Bool {
    return lhs.root == rhs.root
  }
}

class BTreeNode<T: Comparable> {
  let value: T
  var left: BTreeNode<T>?
  var right: BTreeNode<T>?
  init(value: T) {
    self.value = value
  }

  typealias Compeltion = (( BTreeNode<T>)->())

  func traverseInorder(completion: Compeltion? ) {
    left?.traverseInorder(completion: completion)
    completion?(self)
    right?.traverseInorder(completion: completion)
  }
  func traversePreorder(completion: Compeltion? ) {
    completion?(self)
    left?.traversePreorder(completion: completion)
    right?.traversePreorder(completion: completion)
  }
  func traversePostorder(completion: Compeltion? ) {
    left?.traversePostorder(completion: completion)
    right?.traversePostorder(completion: completion)
    completion?(self)
  }
  func findLCA(node1: BTreeNode<T>, node2: BTreeNode<T>) -> BTreeNode<T>? {
    if node1.value == value || node2.value == value {
      return self
    }
    let leftLca = left?.findLCA(node1: node1, node2: node2)
    let rightLca = right?.findLCA(node1: node1, node2: node2)
    if leftLca != nil && rightLca != nil {
      return self
    }
    return leftLca == nil ? rightLca : leftLca
  }
}

extension BTreeNode: Equatable {
  static func == (lhs: BTreeNode<T>, rhs: BTreeNode<T>) -> Bool {
    return (lhs.value == rhs.value) && (lhs.left == rhs.left) && (lhs.right == rhs.right)
  }
}
