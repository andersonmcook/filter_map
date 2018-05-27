# FilterMap

```Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 2 s
parallel: 1
inputs: none specified
Estimated total run time: 1.05 min


Benchmarking comprehension...
Benchmarking concat_reduce...
Benchmarking enum...
Benchmarking recursion_concat...
Benchmarking recursion_prepend...
Benchmarking reduce...
Benchmarking stream...

Name                        ips        average  deviation         median         99th %
recursion_concat         9.15 K      109.32 μs     ±9.11%         106 μs         158 μs
enum                     9.01 K      111.02 μs    ±13.08%         107 μs         174 μs
reduce                   9.00 K      111.11 μs    ±10.66%         107 μs         161 μs
recursion_prepend        8.62 K      115.98 μs    ±11.49%         113 μs         171 μs
comprehension            8.56 K      116.84 μs     ±8.20%         114 μs         168 μs
stream                   4.36 K      229.42 μs    ±11.58%         221 μs         342 μs
concat_reduce            0.58 K     1713.82 μs     ±8.75%        1679 μs     2186.60 μs

Comparison:
recursion_concat         9.15 K
enum                     9.01 K - 1.02x slower
reduce                   9.00 K - 1.02x slower
recursion_prepend        8.62 K - 1.06x slower
comprehension            8.56 K - 1.07x slower
stream                   4.36 K - 2.10x slower
concat_reduce            0.58 K - 15.68x slower

Extended statistics:

Name                      minimum        maximum    sample size                     mode
recursion_concat           104 μs         697 μs        45.44 K                   105 μs
enum                       102 μs         461 μs        44.70 K                   103 μs
reduce                     103 μs         378 μs        44.68 K                   104 μs
recursion_prepend          106 μs        1025 μs        42.79 K                   112 μs
comprehension              111 μs         424 μs        42.47 K                   112 μs
stream                     209 μs         689 μs        21.68 K                   214 μs
concat_reduce             1578 μs        3239 μs         2.92 K                  1583 μs

Memory usage statistics:

Name                      average  deviation         median         99th %
recursion_concat         12.36 KB     ±0.00%       12.36 KB       12.36 KB
enum                     27.95 KB     ±0.00%       27.95 KB       27.95 KB
reduce                   27.97 KB     ±0.00%       27.97 KB       27.97 KB
recursion_prepend        12.36 KB     ±0.00%       12.36 KB       12.36 KB
comprehension            28.19 KB     ±0.00%       28.19 KB       28.19 KB
stream                  116.78 KB     ±1.36%      116.88 KB      116.88 KB
concat_reduce          6842.48 KB     ±0.30%     6843.25 KB     6843.25 KB

Comparison:
recursion_concat         12.36 KB
enum                     27.95 KB - 2.26x memory usage
reduce                   27.97 KB - 2.26x memory usage
recursion_prepend        12.36 KB - 1.00x memory usage
comprehension            28.19 KB - 2.28x memory usage
stream                  116.88 KB - 9.46x memory usage
concat_reduce          6843.25 KB - 553.69x memory usage

Extended statistics:

Name                      minimum        maximum    sample size                     mode
recursion_concat         12.36 KB       12.36 KB         9.60 K                 12.36 KB
enum                     27.95 KB       27.95 KB         9.73 K                 27.95 KB
reduce                   27.97 KB       27.97 KB         9.87 K                 27.97 KB
recursion_prepend        12.36 KB       12.36 KB         9.43 K                 12.36 KB
comprehension            28.19 KB       28.19 KB         9.70 K                 28.19 KB
stream                   72.57 KB      116.88 KB         5.36 K                116.88 KB
concat_reduce          6304.88 KB     6843.25 KB            702               6843.25 KB
```
