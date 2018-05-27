# FilterMap

```bash
Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 2 s
parallel: 1
inputs: ten_thousand, thousand
Estimated total run time: 2.10 min


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
Benchmarking reduce with input ten_thousand...
Benchmarking reduce with input thousand...
Benchmarking stream with input ten_thousand...
Benchmarking stream with input thousand...

##### With input ten_thousand #####
Name                        ips        average  deviation         median         99th %
enum                     1.89 K      528.14 μs     ±7.11%         516 μs         716 μs
recursion_concat         1.84 K      543.73 μs     ±6.11%         533 μs      705.60 μs
recursion_prepend        1.83 K      545.15 μs     ±6.45%         535 μs      713.44 μs
reduce                   1.82 K      549.93 μs     ±7.61%         546 μs      751.72 μs
comprehension            1.78 K      560.57 μs     ±6.99%         562 μs         735 μs
stream                   0.83 K     1206.97 μs    ±14.50%        1139 μs     1829.61 μs
concat_reduce          0.0254 K    39447.98 μs     ±7.58%       38174 μs    51506.32 μs

Comparison:
enum                     1.89 K
recursion_concat         1.84 K - 1.03x slower
recursion_prepend        1.83 K - 1.03x slower
reduce                   1.82 K - 1.04x slower
comprehension            1.78 K - 1.06x slower
stream                   0.83 K - 2.29x slower
concat_reduce          0.0254 K - 74.69x slower

Extended statistics:

Name                      minimum        maximum    sample size                     mode
enum                       505 μs        1033 μs         9.45 K                   516 μs
recursion_concat           531 μs         939 μs         9.18 K                   533 μs
recursion_prepend          522 μs        1078 μs         9.16 K                   535 μs
reduce                     526 μs        1118 μs         9.08 K                   528 μs
comprehension              532 μs        1176 μs         8.90 K                   536 μs
stream                    1089 μs        2319 μs         4.14 K                  1135 μs
concat_reduce            37577 μs       51858 μs            12737754 μs, 37992 μs, 37812

Memory usage statistics:

Name                 Memory usage
enum                    156.88 KB
recursion_concat         78.76 KB - 0.50x memory usage
recursion_prepend        78.76 KB - 0.50x memory usage
reduce                  156.87 KB - 1.00x memory usage
comprehension           156.90 KB - 1.00x memory usage
stream                  551.68 KB - 3.52x memory usage
concat_reduce        179002.48 KB - 1140.99x memory usage

**All measurements for memory usage were the same**

##### With input thousand #####
Name                        ips        average  deviation         median         99th %
enum                    18.82 K       53.14 μs    ±15.46%          51 μs          82 μs
recursion_prepend       18.56 K       53.88 μs    ±12.71%          53 μs          82 μs
recursion_concat        18.52 K       54.00 μs    ±12.52%          53 μs          82 μs
reduce                  18.25 K       54.80 μs    ±13.49%          53 μs          85 μs
comprehension           18.02 K       55.50 μs    ±12.01%          54 μs          83 μs
stream                   8.80 K      113.62 μs    ±10.46%         110 μs         170 μs
concat_reduce            4.02 K      248.99 μs     ±8.32%         243 μs         328 μs

Comparison:
enum                    18.82 K
recursion_prepend       18.56 K - 1.01x slower
recursion_concat        18.52 K - 1.02x slower
reduce                  18.25 K - 1.03x slower
comprehension           18.02 K - 1.04x slower
stream                   8.80 K - 2.14x slower
concat_reduce            4.02 K - 4.69x slower

Extended statistics:

Name                      minimum        maximum    sample size                     mode
enum                        49 μs         983 μs        92.81 K                    51 μs
recursion_prepend           51 μs        1037 μs        91.60 K                    53 μs
recursion_concat            51 μs         957 μs        91.41 K                    53 μs
reduce                      51 μs         957 μs        90.09 K                    53 μs
comprehension               52 μs         940 μs        88.96 K                    54 μs
stream                     106 μs         349 μs        43.70 K                   108 μs
concat_reduce              227 μs        1290 μs        20.00 K                   255 μs

Memory usage statistics:

Name                      average  deviation         median         99th %
enum                      8.74 KB     ±0.00%        8.74 KB        8.74 KB
recursion_prepend         0.93 KB     ±0.00%        0.93 KB        0.93 KB
recursion_concat          0.93 KB     ±0.00%        0.93 KB        0.93 KB
reduce                    4.20 KB     ±0.00%        4.20 KB        4.20 KB
comprehension             4.20 KB     ±0.00%        4.20 KB        4.20 KB
stream                   50.58 KB     ±6.51%       51.27 KB       51.27 KB
concat_reduce          1486.59 KB     ±0.86%     1487.46 KB     1487.46 KB

Comparison:
enum                      8.74 KB
recursion_prepend         0.93 KB - 0.11x memory usage
recursion_concat          0.93 KB - 0.11x memory usage
reduce                    4.20 KB - 0.48x memory usage
comprehension             4.20 KB - 0.48x memory usage
stream                   51.27 KB - 5.87x memory usage
concat_reduce          1487.46 KB - 170.15x memory usage

Extended statistics:

Name                      minimum        maximum    sample size                     mode
enum                      8.74 KB        8.74 KB        12.35 K                  8.74 KB
recursion_prepend         0.93 KB        0.93 KB        13.42 K                  0.93 KB
recursion_concat          0.93 KB        0.93 KB        13.62 K                  0.93 KB
reduce                    4.20 KB        4.20 KB        11.72 K                  4.20 KB
comprehension             4.20 KB        4.20 KB        12.21 K                  4.20 KB
stream                   34.86 KB       51.27 KB         9.11 K                 51.27 KB
concat_reduce          1299.46 KB     1487.46 KB         2.58 K               1487.46 KB
```
