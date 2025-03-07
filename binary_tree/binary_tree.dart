import 'dart:io';

import 'binary_tree_traversal.dart';

void main() {
  Node root = buildTree();
  print("Tree is built successfully");

  BinaryTreeTraversal traversal = BinaryTreeTraversal();

  print("""
          1. In order traversal
          2. Pre order traversal
          3. Post order traversal
        """);

  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Invalid input. Exiting...");
    return;
  }

  int choice = int.tryParse(input) ?? -1;
  if (choice == -1) {
    print("Invalid input. Exiting...");
    return;
  }

  switch (choice) {
    case 1:
      print("In order traversal:");
      traversal.inOrderTraversal(root);
      break;
    case 2:
      print("Pre order traversal:");
      traversal.preOrderTraversal(root);
      break;
    case 3:
      print("Post order traversal:");
      traversal.postOrderTraversal(root);
      break;
    default:
      print("Invalid choice. Exiting...");
      break;
  }
}

class Node {
  int value;
  Node? left;
  Node? right;

  Node({required this.value, this.left, this.right});
}

Node buildTree() {
  print("Enter the data:");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Invalid input. Exiting...");
    return Node(value: -1, left: null, right: null);
  }

  int data = int.tryParse(input) ?? -1;
  if (data == -1) {
    return Node(value: -1, left: null, right: null);
  }

  Node root = Node(value: data, left: null, right: null);

  print("Enter left child of $data:");
  root.left = buildTree();

  print("Enter right child of $data:");
  root.right = buildTree();

  return root;
}
