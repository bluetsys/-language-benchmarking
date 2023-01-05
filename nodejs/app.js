var add = 0;
var st = Date.now();

for (var index = 0; index <= 100000000; index++) {
    add = add + index;
}

var ed = Date.now() - st;

console.log("==========================")
console.log("nodejs 테스트")
console.log(add);
console.log(ed / 1000);
