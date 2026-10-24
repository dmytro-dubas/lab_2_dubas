#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>

#define DATA_SIZE 4194304
#define NUM_ITERATIONS 120

static float input_a[DATA_SIZE] __attribute__((aligned(32)));
static float input_b[DATA_SIZE] __attribute__((aligned(32)));
static float output_res[DATA_SIZE] __attribute__((aligned(32)));

__attribute__((noinline))
void init_dataset(float *a, float *b, size_t n) {
    for (size_t i = 0; i < n; i++) {
        a[i] = (float)((i % 1024) * 0.001953125f) + 0.5f;
        b[i] = (float)(((i + 7) % 512) * 0.00390625f) + 0.25f;
    }
}

__attribute__((noinline))
void process_subtask_a(const float *a, const float *b, float *out, size_t n) {
    for (size_t i = 0; i < n; i++) {
        out[i] = (a[i] * 1.05f) + (b[i] * 0.95f);
    }
}

__attribute__((noinline))
float compute_heavy_workload(const float *a, const float *b, float *out, size_t n) {
    float accumulator = 0.0f;
    for (size_t i = 0; i < n; i++) {
        float term = (a[i] * b[i]) + 0.125f;
        out[i] = (out[i] * 0.5f) + term;
        accumulator += out[i] * 0.0001f;
    }
    return accumulator;
}

__attribute__((noinline))
float process_subtask_b(const float *out, size_t n) {
    float local_sum = 0.0f;
    for (size_t i = 0; i < n; i++) {
        local_sum += out[i] * (float)(i & 15) * 0.0625f;
    }
    return local_sum;
}

__attribute__((noinline))
float benchmark_pipeline(size_t iterations) {
    float total_checksum = 0.0f;

    for (size_t it = 0; it < iterations; it++) {
        process_subtask_a(input_a, input_b, output_res, DATA_SIZE);
        float acc = compute_heavy_workload(input_a, input_b, output_res, DATA_SIZE);
        float sub_b = process_subtask_b(output_res, DATA_SIZE);
        total_checksum += acc + (sub_b * 0.00001f);
    }

    return total_checksum;
}

int main(int argc, char **argv) {
    size_t iterations = NUM_ITERATIONS;

    if (argc > 1) {
        long custom_it = strtol(argv[1], NULL, 10);
        if (custom_it > 0) {
            iterations = (size_t)custom_it;
        }
    }

    init_dataset(input_a, input_b, DATA_SIZE);

    float result = benchmark_pipeline(iterations);

    printf("Iterations: %zu | Data items: %d | Checksum: %.6f\n", iterations, DATA_SIZE, result);

    return 0;
}
