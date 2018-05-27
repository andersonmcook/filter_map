# FilterMap

```bash
Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 2 s
parallel: 1
inputs: ten_thousand, thousand
Estimated total run time: 2.40 min


Benchmarking comprehension with input ten_thousand...
Benchmarking comprehension with input thousand...
Benchmarking concat_reduce with input ten_thousand...
Benchmarking concat_reduce with input thousand...
Benchmarking enum with input ten_thousand...
Benchmarking enum with input thousand...
Benchmarking recursion_concat with input ten_thousand...
Benchmarking recursion_concat with input thousand...
Benchmarking recursion_prepend with input ten_thousand...
Benchmarking recursion_prepend with input thousand...
Benchmarking recursion_tail with input ten_thousand...
Benchmarking recursion_tail with input thousand...
Benchmarking reduce with input ten_thousand...
Benchmarking reduce with input thousand...
Benchmarking stream with input ten_thousand...
Benchmarking stream with input thousand...

##### With input ten_thousand #####
Name                        ips        average  deviation         median         99th %
enum                     1.87 K      534.08 μs     ±6.40%         521 μs      685.14 μs
recursion_prepend        1.81 K      551.42 μs     ±5.81%         541 μs      692.52 μs
recursion_tail           1.77 K      563.61 μs     ±6.63%         558 μs         736 μs
recursion_concat         1.77 K      563.90 μs     ±6.66%         550 μs      734.53 μs
reduce                   1.74 K      574.61 μs     ±6.97%         567 μs         749 μs
comprehension            1.64 K      608.70 μs    ±16.82%         582 μs      975.20 μs
stream                   0.83 K     1205.42 μs    ±15.56%        1128 μs     1882.90 μs
concat_reduce          0.0251 K    39862.55 μs     ±6.26%    38739.50 μs    50500.58 μs

Comparison:
enum                     1.87 K
recursion_prepend        1.81 K - 1.03x slower
recursion_tail           1.77 K - 1.06x slower
recursion_concat         1.77 K - 1.06x slower
reduce                   1.74 K - 1.08x slower
comprehension            1.64 K - 1.14x slower
stream                   0.83 K - 2.26x slower
concat_reduce          0.0251 K - 74.64x slower

Extended statistics:

Name                      minimum        maximum    sample size                     mode
enum                       507 μs        1148 μs         9.34 K                   520 μs
recursion_prepend          526 μs        1091 μs         9.05 K                   539 μs
recursion_tail             540 μs        1130 μs         8.85 K                   541 μs
recursion_concat           537 μs        1123 μs         8.85 K                   549 μs
reduce                     550 μs        1147 μs         8.68 K                   551 μs
comprehension              567 μs        3658 μs         8.19 K                   568 μs
stream                    1082 μs        2394 μs         4.14 K                  1092 μs
concat_reduce            38068 μs       50540 μs            12638397 μs, 38442 μs, 38383

Memory usage statistics:

Name                 Memory usage
enum                    156.88 KB
recursion_prepend        78.76 KB - 0.50x memory usage
recursion_tail          156.88 KB - 1.00x memory usage
recursion_concat         78.76 KB - 0.50x memory usage
reduce                  156.87 KB - 1.00x memory usage
comprehension           156.90 KB - 1.00x memory usage
stream                  551.68 KB - 3.52x memory usage
concat_reduce        179002.48 KB - 1140.99x memory usage

**All measurements for memory usage were the same**

##### With input thousand #####
Name                        ips        average  deviation         median         99th %
reduce                  18.52 K       53.99 μs    ±14.60%          53 μs          82 μs
recursion_prepend       18.51 K       54.04 μs    ±12.03%          53 μs          81 μs
enum                    18.47 K       54.14 μs    ±14.10%          52 μs       82.41 μs
recursion_concat        17.95 K       55.72 μs    ±11.99%          54 μs          82 μs
recursion_tail          17.85 K       56.01 μs    ±19.92%          53 μs          98 μs
comprehension           17.84 K       56.07 μs    ±13.39%          55 μs          86 μs
stream                   9.18 K      108.98 μs     ±8.01%         107 μs         155 μs
concat_reduce            3.90 K      256.28 μs     ±9.76%         247 μs         351 μs

Comparison:
reduce                  18.52 K
recursion_prepend       18.51 K - 1.00x slower
enum                    18.47 K - 1.00x slower
recursion_concat        17.95 K - 1.03x slower
recursion_tail          17.85 K - 1.04x slower
comprehension           17.84 K - 1.04x slower
stream                   9.18 K - 2.02x slower
concat_reduce            3.90 K - 4.75x slower

Extended statistics:

Name                      minimum        maximum    sample size                     mode
reduce                      52 μs         966 μs        90.55 K                    53 μs
recursion_prepend           52 μs         976 μs        90.46 K                    53 μs
enum                        51 μs        1164 μs        90.26 K                    52 μs
recursion_concat            54 μs         959 μs        87.77 K                    54 μs
recursion_tail              52 μs        1029 μs        87.23 K                    53 μs
comprehension               53 μs        1106 μs        87.22 K                    54 μs
stream                     105 μs         364 μs        45.53 K                   106 μs
concat_reduce              230 μs        1357 μs        19.40 K                   246 μs

Memory usage statistics:

Name                      average  deviation         median         99th %
reduce                    4.20 KB     ±0.00%        4.20 KB        4.20 KB
recursion_prepend         0.93 KB     ±0.00%        0.93 KB        0.93 KB
enum                      8.74 KB     ±0.00%        8.74 KB        8.74 KB
recursion_concat          0.93 KB     ±0.00%        0.93 KB        0.93 KB
recursion_tail            4.20 KB     ±0.00%        4.20 KB        4.20 KB
comprehension             4.20 KB     ±0.00%        4.20 KB        4.20 KB
stream                   50.58 KB     ±6.57%       51.27 KB       51.27 KB
concat_reduce          1487.06 KB     ±0.55%     1487.46 KB     1487.46 KB

Comparison:
reduce                    4.20 KB
recursion_prepend         0.93 KB - 0.22x memory usage
enum                      8.74 KB - 2.08x memory usage
recursion_concat          0.93 KB - 0.22x memory usage
recursion_tail            4.20 KB - 1.00x memory usage
comprehension             4.20 KB - 1.00x memory usage
stream                   51.27 KB - 12.22x memory usage
concat_reduce          1487.46 KB - 354.55x memory usage

Extended statistics:

Name                      minimum        maximum    sample size                     mode
reduce                    4.20 KB        4.20 KB        11.84 K                  4.20 KB
recursion_prepend         0.93 KB        0.93 KB        13.37 K                  0.93 KB
enum                      8.74 KB        8.74 KB        12.31 K                  8.74 KB
recursion_concat          0.93 KB        0.93 KB        13.34 K                  0.93 KB
recursion_tail            4.20 KB        4.20 KB        11.08 K                  4.20 KB
comprehension             4.20 KB        4.20 KB        11.96 K                  4.20 KB
stream                   20.42 KB       51.27 KB         9.13 K                 51.27 KB
concat_reduce          1299.46 KB     1487.46 KB         2.55 K               1487.46 KB
```
