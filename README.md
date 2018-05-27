# FilterMap

```bash
Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 2 s
parallel: 1
inputs: none specified
Estimated total run time: 54 s


Benchmarking comprehension...
Benchmarking concat_reduce...
Benchmarking enum...
Benchmarking recursion_concat...
Benchmarking recursion_prepend...
Benchmarking reduce...

Name                        ips        average  deviation         median         99th %
enum                     8.83 K      113.25 μs    ±17.40%         107 μs         199 μs
comprehension            8.80 K      113.60 μs     ±9.09%         110 μs         169 μs
recursion_prepend        8.10 K      123.53 μs    ±29.68%         111 μs         247 μs
reduce                   8.00 K      125.00 μs    ±47.91%         110 μs         311 μs
recursion_concat         7.70 K      129.84 μs    ±30.01%         116 μs         241 μs
concat_reduce            0.57 K     1752.71 μs     ±6.46%        1713 μs     2107.48 μs

Comparison:
enum                     8.83 K
comprehension            8.80 K - 1.00x slower
recursion_prepend        8.10 K - 1.09x slower
reduce                   8.00 K - 1.10x slower
recursion_concat         7.70 K - 1.15x slower
concat_reduce            0.57 K - 15.48x slower

Extended statistics:

Name                      minimum        maximum    sample size                     mode
enum                       101 μs        1003 μs        43.79 K                   103 μs
comprehension              108 μs         381 μs        43.72 K                   109 μs
recursion_prepend          106 μs        1741 μs        40.11 K                   107 μs
reduce                     103 μs        2659 μs        39.61 K                   104 μs
recursion_concat           108 μs        1620 μs        38.15 K                   112 μs
concat_reduce             1569 μs        2294 μs         2.85 K                  1818 μs

Memory usage statistics:

Name                      average  deviation         median         99th %
enum                     27.95 KB     ±0.00%       27.95 KB       27.95 KB
comprehension            28.19 KB     ±0.00%       28.19 KB       28.19 KB
recursion_prepend        12.36 KB     ±0.00%       12.36 KB       12.36 KB
reduce                   27.97 KB     ±0.00%       27.97 KB       27.97 KB
recursion_concat         12.36 KB     ±0.00%       12.36 KB       12.36 KB
concat_reduce          6842.81 KB     ±0.17%     6843.25 KB     6843.25 KB

Comparison:
enum                     27.95 KB
comprehension            28.19 KB - 1.01x memory usage
recursion_prepend        12.36 KB - 0.44x memory usage
reduce                   27.97 KB - 1.00x memory usage
recursion_concat         12.36 KB - 0.44x memory usage
concat_reduce          6843.25 KB - 244.81x memory usage

Extended statistics:

Name                      minimum        maximum    sample size                     mode
enum                     27.95 KB       27.95 KB         9.63 K                 27.95 KB
comprehension            28.19 KB       28.19 KB        10.04 K                 28.19 KB
recursion_prepend        12.36 KB       12.36 KB         8.90 K                 12.36 KB
reduce                   27.97 KB       27.97 KB         8.94 K                 27.97 KB
recursion_concat         12.36 KB       12.36 KB         8.77 K                 12.36 KB
concat_reduce          6520.94 KB     6843.25 KB            727               6843.25 KB
```
