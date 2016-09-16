import itertools

# A very simple representation for Nodes. Leaves are anything which is not a Node.
class Node(object):
  def __init__(self, ops, left, right):
    self.operator = ops
    self.left = left
    self.right = right

  def __repr__(self):
    return '(%s %s %s)' % (self.operator, self.left, self.right)

# Given a tree and a label, yields every possible augmentation of the tree by
# adding a new node with the label as a child "above" some existing Node or Leaf.
ops_valid = ['xor', 'or', 'and', 'not']

def add_leaf(ops, tree, label):
  yield Node(ops, label, tree)
  if isinstance(tree, Node):
    for ops in ops_valid:
      for left in add_leaf(ops, tree.left, label):
        yield Node(ops, left, tree.right)
    for ops in ops_valid:        
      for right in add_leaf(ops, tree.right, label):
        yield Node(ops, tree.left, right)

# Given a list of labels, yield each rooted, unordered full binary tree with
# the specified labels.
def enum_unordered(labels):
  if len(labels) == 1:
    yield labels[0]
  else:
    for tree in enum_unordered(labels[1:]):
      for new_tree in add_leaf(None, tree, labels[0]):
        yield new_tree

input_permu = itertools.permutations(['i1', 'i2', 'm2', 'm2'], 4)
for item in input_permu:
    for tree in enum_unordered(item): print tree 