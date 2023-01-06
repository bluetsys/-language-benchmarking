void main() {
  var add = 0; 
  var count = 1; 

  final stopwatch = Stopwatch()..start();
  for( count = 1 ; count <= 100000000; count++ ) { 
    add = add + count; 
  }
  stopwatch..stop();
  print('==========================');
  print('dart');
  print(add);
  print(stopwatch.elapsedMilliseconds / 1000);
}
