import 'dart:collection';

import 'binary_tree.dart';

class BinaryTreeTraversal {
  /**
   * Left -> Root -> Right
   */
  void inOrderRecursiveTraversal(Node? node) {
    if (node == null) return;
    inOrderRecursiveTraversal(node.left); // Left
    if (node.value != -1) print(node.value); // Root
    inOrderRecursiveTraversal(node.right); // Right
  }

  void preOrderRecursiveTraversal(Node? node) {
    if (node == null) return;
    if (node.value != -1) print(node.value); // Root
    preOrderRecursiveTraversal(node.left); // Left
    preOrderRecursiveTraversal(node.right); // Right
  }

  void postOrderRecursiveTraversal(Node? node) {
    if (node == null) return;
    postOrderRecursiveTraversal(node.left); // Left
    postOrderRecursiveTraversal(node.right); // Right
    if (node.value != -1) print(node.value); // Root
  }

  void inOrderIterativeTraversal(Node? node) {
    if (node == null) return;

    List<Node> stack = [];
    Node? current = node;

    while (current != null || stack.isNotEmpty) {
      while (current != null) {
        stack.add(current);
        current = current.left;
      }

      current = stack.removeLast();
      if (current.value != -1) {
        print(current.value);
      }
      current = current.right;
    }
  }

  void preOrderIterativeTraversal(Node? node) {
    if (node == null) return;

    List<Node?> stack = [];
    stack.add(node);

    while (stack.isNotEmpty) {
      Node? current = stack.removeLast();
      if (current?.value != -1) {
        print(current?.value);
      }

      if (current?.right != null) stack.add(current?.right);
      if (current?.left != null) stack.add(current?.left);
    }
  }

  void postOrderIterativeTraversal(Node? node) {
    if (node == null) return;

    List<Node?> stack1 = [];
    List<Node?> stack2 = [];

    stack1.add(node);

    while (stack1.isNotEmpty) {
      Node? current = stack1.removeLast();
      stack2.add(current);

      if (current?.left != null) stack1.add(current?.left);
      if (current?.right != null) stack1.add(current?.right);
    }

    while (stack2.isNotEmpty) {
      int value = stack2.removeLast()?.value ?? -1;
      if (value != -1) {
        print(value);
      }
    }
  }

  void levelOrderTraversal(Node? node) {
    if (node == null) return;

    Queue<Node?> queue = Queue<Node?>();
    queue.add(node);

    while (queue.isNotEmpty) {
      Node? current = queue.removeFirst();
      if (current != null) {
        if (current.value != -1) {
          print(current.value);
        }
        queue.add(current.left);
        queue.add(current.right);
      }
    }
  }
}
