import 'dart:io';
import 'dart:math' as math;

import 'binary_tree_traversal.dart';

/**
 * Binary Tree
 * 
 * A binary tree is a tree data structure in which each node has at most two children, which are referred to as the left child and the right child.
 * 
 * Binary Tree Traversal:
 * 1. In order traversal (Recursive)
 * 2. Pre order traversal (Recursive)
 * 3. Post order traversal (Recursive)
 * 4. In order traversal (Iterative - stack)
 * 5. Pre order traversal (Iterative - stack)
 * 6. Post order traversal (Iterative - stack)
 * 7. Level Order traversal (Iterative - BFS - Queue)
 */
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
          8. Level Order traversal (Recursive)
          9. All traversals
          10. Height of the tree
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
      print("Level Order traversal (Recursive):");
      traversal.levelOrderTraversal(root);
      break;
    case 9:
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
    case 10:
      print("Height of the tree: ${heightOfTree(root)}");
      break;
    default:
      print("Invalid choice. Exiting...");
      break;
  }
}

/**
 * Node class
 * 
 * Represents a node in a binary tree
 */
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

/**
 * Height of the tree
 * 
 * The height of a binary tree is the number of edges between the tree's root and its furthest leaf.
 * 
 *      1
 *     / \
 *    2   3
 *   / \
 * 4   5
 * 
 * Height of the tree: 3
 */
int heightOfTree(Node? root) {
  if (root == null) return 0;

  int left = heightOfTree(root.left);
  int right = heightOfTree(root.right);

  int max = math.max(left, right) + 1;

  return max;
}
