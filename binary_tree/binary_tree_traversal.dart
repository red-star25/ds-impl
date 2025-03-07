import 'binary_tree.dart';

class BinaryTreeTraversal {
  void inOrderTraversal(Node? node) {
    if (node == null) return;
    inOrderTraversal(node.left);
    print(node.value);
    inOrderTraversal(node.right);
  }

  void preOrderTraversal(Node? node) {
    if (node == null) return;
    print(node.value);
    preOrderTraversal(node.left);
    preOrderTraversal(node.right);
  }

  void postOrderTraversal(Node? node) {
    if (node == null) return;
    postOrderTraversal(node.left);
    postOrderTraversal(node.right);
    print(node.value);
  }
}
