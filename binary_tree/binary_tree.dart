import 'dart:io';

import 'binary_tree_traversal.dart';

void main() {
  Node root = buildTree();
  print("Tree is built successfully");

  BinaryTreeTraversal traversal = BinaryTreeTraversal();

  print("""
          1. In order traversal (Recursive)
          2. Pre order traversal (Recursive)
          3. Post order traversal (Recursive)
          4. In order traversal (Iterative - stack)
          5. Pre order traversal (Iterative - stack)
          6. Post order traversal (Iterative - stack)
          7. Level Order traversal (Iterative - BFS - Queue)
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
      print("In order traversal (Recursive):");
      traversal.inOrderRecursiveTraversal(root);
      break;
    case 2:
      print("Pre order traversal (Recursive):");
      traversal.preOrderRecursiveTraversal(root);
      break;
    case 3:
      print("Post order traversal (Recursive):");
      traversal.postOrderRecursiveTraversal(root);
      break;
    case 4:
      print("In order traversal (Iterative):");
      traversal.inOrderIterativeTraversal(root);
    case 5:
      print("Pre order traversal (Iterative):");
      traversal.preOrderIterativeTraversal(root);
      break;
    case 6:
      print("Post order traversal (Iterative):");
      traversal.postOrderIterativeTraversal(root);
      break;
    case 7:
      print("Level Order traversal (Iterative):");
      traversal.levelOrderTraversal(root);
      break;
    case 8:
      print("All traversals:");
      print("In order traversal (Recursive):");
      traversal.inOrderRecursiveTraversal(root);
      print("Pre order traversal (Recursive):");
      traversal.preOrderRecursiveTraversal(root);
      print("Post order traversal (Recursive):");
      traversal.postOrderRecursiveTraversal(root);
      print("In order traversal (Iterative):");
      traversal.inOrderIterativeTraversal(root);
      print("Pre order traversal (Iterative):");
      traversal.preOrderIterativeTraversal(root);
      print("Post order traversal (Iterative):");
      traversal.postOrderIterativeTraversal(root);
      print("Level Order traversal (Iterative):");
      traversal.levelOrderTraversal(root);
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
