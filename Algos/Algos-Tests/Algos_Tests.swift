//
//  Algos_Tests.swift
//  Algos-Tests
//
//  Created by Prashant Pukale on 04/03/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import XCTest
@testable import Algos

class Algos_Tests: XCTestCase {

    private var tree1: BTree<Int> {
        let rootNode = BTreeNode<Int>(value: 100)
        let left1 = BTreeNode<Int>(value: 50)
        let right1 = BTreeNode<Int>(value: 150)
        rootNode.left = left1
        rootNode.right = right1
        let treeNode = BTree<Int>()
        treeNode.root = rootNode
        return treeNode
    }
    private var tree2: BTree<Int> {
        let rootNode = BTreeNode<Int>(value: 100)
        let left1 = BTreeNode<Int>(value: 50)
        let left2 = BTreeNode<Int>(value: 25)
        rootNode.left = left1
        left1.left = left2
        let treeNode = BTree<Int>()
        treeNode.root = rootNode
        return treeNode
    }
    private var tree3: BTree<Int> {
        let rootNode = BTreeNode<Int>(value: 100)
        let right1 = BTreeNode<Int>(value: 150)
        let right2 = BTreeNode<Int>(value: 200)
        rootNode.right = right1
        right1.right = right2
        let treeNode = BTree<Int>()
        treeNode.root = rootNode
        return treeNode
    }
    

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInOrderSimple() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var inOrderArray = [50,100,150]
        var index=0
        tree1.root?.traverseInorder() { value in
            XCTAssertTrue( value == inOrderArray[index])
            index += 1
        }
    }
    
    func testInOrderSimpleAllLeft() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var inOrderArray = [25,50,100]
        var index=0
        tree2.root?.traverseInorder() { value in
            XCTAssertTrue( value == inOrderArray[index])
            index += 1
        }
    }
    
    func testInOrderSimpleAllRight() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var inOrderArray = [100,150,200]
        var index=0
        tree3.root?.traverseInorder() { value in
            XCTAssertTrue( value == inOrderArray[index])
            index += 1
        }
    }
    
    func testPreOrderSimple() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var preOrderArray = [100,50,150]
        var index=0
        tree1.root?.traversePreorder() { value in
            XCTAssertTrue( value == preOrderArray[index])
            index += 1
        }
    }
    
    func testPreOrderSimpleAllLeft() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var preOrderArray = [100,50,25]
        var index=0
        tree2.root?.traversePreorder() { value in
            XCTAssertTrue( value == preOrderArray[index])
            index += 1
        }
    }
    
    func testPreOrderSimpleAllRight() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var preOrderArray = [100,150,200]
        var index=0
        tree3.root?.traversePreorder() { value in
            XCTAssertTrue( value == preOrderArray[index])
            index += 1
        }
    }
    
    
    func testPostOrderSimple() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var postOrderArray = [50,150,100]
        var index=0
        tree1.root?.traversePostorder() { value in
            XCTAssertTrue( value == postOrderArray[index])
            index += 1
        }
    }
    
    func testPostOrderSimpleAllLeft() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var postOrderArray = [25,50,100]
        var index=0
        tree2.root?.traversePostorder() { value in
            XCTAssertTrue( value == postOrderArray[index])
            index += 1
        }
    }
    
    func testPostOrderSimpleAllRight() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        var postOrderArray = [200,150,100]
        var index=0
        tree3.root?.traversePostorder() { value in
            XCTAssertTrue( value == postOrderArray[index])
            index += 1
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
