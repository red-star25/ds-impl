import 'dart:io';

void main() {
  buildTree();
  print("Tree is built successfully");
}

class Node {
  int value;
  Node? left;
  Node? right;

  Node({required this.value, this.left, this.right});
}

Node? buildTree() {
  print("Enter the data:");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Invalid input. Exiting...");
    return null;
  }

  int data = int.tryParse(input) ?? -1;
  if (data == -1) {
    return null;
  }

  Node root = Node(value: data, left: null, right: null);

  print("Enter left child of $data:");
  root.left = buildTree();

  print("Enter right child of $data:");
  root.right = buildTree();

  return root;
}
