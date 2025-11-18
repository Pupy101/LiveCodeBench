#!/bin/bash

export BENCHMARK_MODEL=<MODEL_NAME>
export BENCHMARK_BASE_URL=http://.../v1
export BENCHMARK_THREADS=128

# Run last part of the benchmark

OPENAI_BASE_URL=$BENCHMARK_BASE_URL OPENAI_KEY=EMPTY python -m lcb_runner.runner.main \
    --model $BENCHMARK_MODEL --scenario codegeneration --evaluate \
    --multiprocess $BENCHMARK_THREADS --start_date 2025-02-01  --end_date 2025-05-30
