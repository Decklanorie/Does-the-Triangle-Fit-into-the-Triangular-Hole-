bool doesTriangleFit(List<int> brick, List<int> hole) {
  if (isTriangle(brick) && isTriangle(hole)) {
    if (brick[0] <= hole[0] && brick[1] <= hole[1] && brick[2] <= hole[2]) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

bool isTriangle(List<int> sides) {
  if (sides.length != 3) {
    return false;
  }
  if (sides[0] + sides[1] <= sides[2] ||
      sides[0] + sides[2] <= sides[1] ||
      sides[1] + sides[2] <= sides[0]) {
    return false;
  }

  return true;
}

void main() {
  // Example usage:
  print(doesTriangleFit([3, 4, 5], [6, 7, 8])); // Example call to test the function
}
