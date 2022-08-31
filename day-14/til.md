# Day 13 - 16/AUG/2022
Enumerator#produce

`Enumerator.produce(initial, &block)`, will produce an infinite sequence where each next element is calculated by applying block to previous.
initial is the first sequence element. We can use produce without initial value as well.

`Enumerator.produce(&block)`, will produce an infinite sequence. The first element of the sequence will be the result of calling the block with no args.


