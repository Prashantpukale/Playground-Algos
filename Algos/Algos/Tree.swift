//
//  Algos.swift
//  Algos
//
//  Created by Prashant Pukale on 04/03/19.
//  Copyright © 2019 Personal. All rights reserved.
//

class BTree<T> {
  var root: BTreeNode<T>?
}

class BTreeNode<T> {
  let value: T
  var left: BTreeNode<T>?
  var right: BTreeNode<T>?
  init(value: T) {
    self.value = value
  }

  func traverseInorder(completion: ((T)->())? ) {
    left?.traverseInorder(completion: completion)
    completion?(value)
    right?.traverseInorder(completion: completion)
  }
  func traversePreorder(completion: ((T)->())? ) {
    completion?(value)
    left?.traversePreorder(completion: completion)
    right?.traversePreorder(completion: completion)
  }
  func traversePostorder(completion: ((T)->())? ) {
    left?.traversePostorder(completion: completion)
    right?.traversePostorder(completion: completion)
    completion?(value)
  }
}

