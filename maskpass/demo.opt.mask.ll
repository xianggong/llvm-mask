; ModuleID = 'demo.opt.mask.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @demo(i32* %src, i32* %dst) #0 {
  %1 = getelementptr inbounds i32* %src, i64 0
  %mask.23 = call i32 @getMask()
  %2 = load i32* %1, align 4
  %masked.23 = xor i32 %2, %mask.23
  %3 = getelementptr inbounds i32* %src, i64 1
  %mask.0 = call i32 @getMask()
  %4 = load i32* %3, align 4
  %masked.0 = xor i32 %4, %mask.0
  %5 = getelementptr inbounds i32* %src, i64 2
  %mask.1 = call i32 @getMask()
  %6 = load i32* %5, align 4
  %masked.1 = xor i32 %6, %mask.1
  %7 = getelementptr inbounds i32* %src, i64 3
  %mask.2 = call i32 @getMask()
  %8 = load i32* %7, align 4
  %masked.2 = xor i32 %8, %mask.2
  %9 = getelementptr inbounds i32* %src, i64 4
  %mask.3 = call i32 @getMask()
  %10 = load i32* %9, align 4
  %masked.3 = xor i32 %10, %mask.3
  %11 = getelementptr inbounds i32* %src, i64 5
  %mask.4 = call i32 @getMask()
  %12 = load i32* %11, align 4
  %masked.4 = xor i32 %12, %mask.4
  %13 = getelementptr inbounds i32* %src, i64 6
  %mask.5 = call i32 @getMask()
  %14 = load i32* %13, align 4
  %masked.5 = xor i32 %14, %mask.5
  %15 = getelementptr inbounds i32* %src, i64 7
  %mask.6 = call i32 @getMask()
  %16 = load i32* %15, align 4
  %masked.6 = xor i32 %16, %mask.6
  %17 = getelementptr inbounds i32* %src, i64 8
  %mask.7 = call i32 @getMask()
  %18 = load i32* %17, align 4
  %masked.7 = xor i32 %18, %mask.7
  %19 = getelementptr inbounds i32* %src, i64 9
  %mask.8 = call i32 @getMask()
  %20 = load i32* %19, align 4
  %masked.8 = xor i32 %20, %mask.8
  %21 = getelementptr inbounds i32* %src, i64 10
  %mask.9 = call i32 @getMask()
  %22 = load i32* %21, align 4
  %masked.9 = xor i32 %22, %mask.9
  %23 = getelementptr inbounds i32* %src, i64 11
  %mask.10 = call i32 @getMask()
  %24 = load i32* %23, align 4
  %masked.10 = xor i32 %24, %mask.10
  %25 = getelementptr inbounds i32* %src, i64 12
  %mask.11 = call i32 @getMask()
  %26 = load i32* %25, align 4
  %masked.11 = xor i32 %26, %mask.11
  %27 = getelementptr inbounds i32* %src, i64 13
  %mask.12 = call i32 @getMask()
  %28 = load i32* %27, align 4
  %masked.12 = xor i32 %28, %mask.12
  %29 = getelementptr inbounds i32* %src, i64 14
  %mask.13 = call i32 @getMask()
  %30 = load i32* %29, align 4
  %masked.13 = xor i32 %30, %mask.13
  %31 = getelementptr inbounds i32* %src, i64 15
  %mask.14 = call i32 @getMask()
  %32 = load i32* %31, align 4
  %masked.14 = xor i32 %32, %mask.14
  %33 = getelementptr inbounds i32* %src, i64 16
  %mask.16 = call i32 @getMask()
  %34 = load i32* %33, align 4
  %masked.16 = xor i32 %34, %mask.16
  %35 = getelementptr inbounds i32* %src, i64 17
  %mask.17 = call i32 @getMask()
  %36 = load i32* %35, align 4
  %masked.17 = xor i32 %36, %mask.17
  %37 = getelementptr inbounds i32* %src, i64 18
  %mask.18 = call i32 @getMask()
  %38 = load i32* %37, align 4
  %masked.18 = xor i32 %38, %mask.18
  %39 = getelementptr inbounds i32* %src, i64 19
  %mask.19 = call i32 @getMask()
  %40 = load i32* %39, align 4
  %masked.19 = xor i32 %40, %mask.19
  %41 = getelementptr inbounds i32* %src, i64 20
  %mask.24 = call i32 @getMask()
  %42 = load i32* %41, align 4
  %masked.24 = xor i32 %42, %mask.24
  %43 = getelementptr inbounds i32* %src, i64 21
  %mask.25 = call i32 @getMask()
  %44 = load i32* %43, align 4
  %masked.25 = xor i32 %44, %mask.25
  %45 = getelementptr inbounds i32* %src, i64 22
  %mask.26 = call i32 @getMask()
  %46 = load i32* %45, align 4
  %masked.26 = xor i32 %46, %mask.26
  %47 = getelementptr inbounds i32* %src, i64 23
  %mask.27 = call i32 @getMask()
  %48 = load i32* %47, align 4
  %masked.27 = xor i32 %48, %mask.27
  %49 = getelementptr inbounds i32* %src, i64 24
  %mask.28 = call i32 @getMask()
  %50 = load i32* %49, align 4
  %masked.28 = xor i32 %50, %mask.28
  %51 = getelementptr inbounds i32* %src, i64 25
  %mask.29 = call i32 @getMask()
  %52 = load i32* %51, align 4
  %masked.29 = xor i32 %52, %mask.29
  %53 = getelementptr inbounds i32* %src, i64 26
  %mask.30 = call i32 @getMask()
  %54 = load i32* %53, align 4
  %masked.30 = xor i32 %54, %mask.30
  %55 = getelementptr inbounds i32* %src, i64 27
  %mask.31 = call i32 @getMask()
  %56 = load i32* %55, align 4
  %masked.31 = xor i32 %56, %mask.31
  %57 = getelementptr inbounds i32* %src, i64 28
  %mask.32 = call i32 @getMask()
  %58 = load i32* %57, align 4
  %masked.32 = xor i32 %58, %mask.32
  %59 = getelementptr inbounds i32* %src, i64 29
  %mask.33 = call i32 @getMask()
  %60 = load i32* %59, align 4
  %masked.33 = xor i32 %60, %mask.33
  %61 = getelementptr inbounds i32* %src, i64 30
  %mask.34 = call i32 @getMask()
  %62 = load i32* %61, align 4
  %masked.34 = xor i32 %62, %mask.34
  %63 = getelementptr inbounds i32* %src, i64 31
  %mask.35 = call i32 @getMask()
  %64 = load i32* %63, align 4
  %masked.35 = xor i32 %64, %mask.35
  %65 = getelementptr inbounds i32* %src, i64 32
  %mask.15 = call i32 @getMask()
  %66 = load i32* %65, align 4
  %masked.15 = xor i32 %66, %mask.15
  %67 = getelementptr inbounds i32* %src, i64 33
  %mask.36 = call i32 @getMask()
  %68 = load i32* %67, align 4
  %masked.36 = xor i32 %68, %mask.36
  %69 = getelementptr inbounds i32* %src, i64 34
  %mask.37 = call i32 @getMask()
  %70 = load i32* %69, align 4
  %masked.37 = xor i32 %70, %mask.37
  %71 = getelementptr inbounds i32* %src, i64 35
  %mask.38 = call i32 @getMask()
  %72 = load i32* %71, align 4
  %masked.38 = xor i32 %72, %mask.38
  %73 = getelementptr inbounds i32* %src, i64 36
  %mask.39 = call i32 @getMask()
  %74 = load i32* %73, align 4
  %masked.39 = xor i32 %74, %mask.39
  %75 = getelementptr inbounds i32* %src, i64 37
  %mask.40 = call i32 @getMask()
  %76 = load i32* %75, align 4
  %masked.40 = xor i32 %76, %mask.40
  %77 = getelementptr inbounds i32* %src, i64 38
  %mask.41 = call i32 @getMask()
  %78 = load i32* %77, align 4
  %masked.41 = xor i32 %78, %mask.41
  %79 = getelementptr inbounds i32* %src, i64 39
  %mask.42 = call i32 @getMask()
  %80 = load i32* %79, align 4
  %masked.42 = xor i32 %80, %mask.42
  %81 = getelementptr inbounds i32* %src, i64 40
  %mask.43 = call i32 @getMask()
  %82 = load i32* %81, align 4
  %masked.43 = xor i32 %82, %mask.43
  %83 = getelementptr inbounds i32* %src, i64 41
  %mask.44 = call i32 @getMask()
  %84 = load i32* %83, align 4
  %masked.44 = xor i32 %84, %mask.44
  %85 = getelementptr inbounds i32* %src, i64 42
  %mask.45 = call i32 @getMask()
  %86 = load i32* %85, align 4
  %masked.45 = xor i32 %86, %mask.45
  %87 = getelementptr inbounds i32* %src, i64 43
  %mask.46 = call i32 @getMask()
  %88 = load i32* %87, align 4
  %masked.46 = xor i32 %88, %mask.46
  %89 = getelementptr inbounds i32* %src, i64 44
  %mask.47 = call i32 @getMask()
  %90 = load i32* %89, align 4
  %masked.47 = xor i32 %90, %mask.47
  %91 = getelementptr inbounds i32* %src, i64 45
  %mask.48 = call i32 @getMask()
  %92 = load i32* %91, align 4
  %masked.48 = xor i32 %92, %mask.48
  %93 = getelementptr inbounds i32* %src, i64 46
  %mask.49 = call i32 @getMask()
  %94 = load i32* %93, align 4
  %masked.49 = xor i32 %94, %mask.49
  %95 = getelementptr inbounds i32* %src, i64 47
  %mask.20 = call i32 @getMask()
  %96 = load i32* %95, align 4
  %masked.20 = xor i32 %96, %mask.20
  %97 = getelementptr inbounds i32* %src, i64 48
  %mask.21 = call i32 @getMask()
  %98 = load i32* %97, align 4
  %masked.21 = xor i32 %98, %mask.21
  %99 = getelementptr inbounds i32* %src, i64 49
  %mask.22 = call i32 @getMask()
  %100 = load i32* %99, align 4
  %masked.22 = xor i32 %100, %mask.22
  %101 = xor i32 %masked.23, %masked.9
  %102 = xor i32 %101, %masked.24
  %103 = xor i32 %102, %masked.34
  %104 = xor i32 %103, %masked.43
  %105 = xor i32 %masked.0, %masked.10
  %106 = xor i32 %105, %masked.25
  %107 = xor i32 %106, %masked.35
  %108 = xor i32 %107, %masked.44
  %109 = xor i32 %masked.1, %masked.11
  %110 = xor i32 %109, %masked.26
  %111 = xor i32 %110, %masked.15
  %112 = xor i32 %111, %masked.45
  %113 = xor i32 %masked.2, %masked.12
  %114 = xor i32 %113, %masked.27
  %115 = xor i32 %114, %masked.36
  %116 = xor i32 %115, %masked.46
  %117 = xor i32 %masked.3, %masked.13
  %118 = xor i32 %117, %masked.28
  %119 = xor i32 %118, %masked.37
  %120 = xor i32 %119, %masked.47
  %121 = xor i32 %masked.4, %masked.14
  %122 = xor i32 %121, %masked.29
  %123 = xor i32 %122, %masked.38
  %124 = xor i32 %123, %masked.48
  %125 = xor i32 %masked.5, %masked.16
  %126 = xor i32 %125, %masked.30
  %127 = xor i32 %126, %masked.39
  %128 = xor i32 %127, %masked.49
  %129 = xor i32 %masked.6, %masked.17
  %130 = xor i32 %129, %masked.31
  %131 = xor i32 %130, %masked.40
  %132 = xor i32 %131, %masked.20
  %133 = xor i32 %masked.7, %masked.18
  %134 = xor i32 %133, %masked.32
  %135 = xor i32 %134, %masked.41
  %136 = xor i32 %135, %masked.21
  %137 = xor i32 %masked.8, %masked.19
  %138 = xor i32 %137, %masked.33
  %139 = xor i32 %138, %masked.42
  %140 = xor i32 %139, %masked.22
  %141 = getelementptr inbounds i32* %dst, i64 0
  %unmask.50 = xor i32 %104, %mask.9
  %unmask.501 = xor i32 %unmask.50, %mask.23
  %unmask.502 = xor i32 %unmask.501, %mask.24
  %unmask.503 = xor i32 %unmask.502, %mask.34
  %unmask.504 = xor i32 %unmask.503, %mask.43
  store i32 %unmask.504, i32* %141
  %142 = getelementptr inbounds i32* %dst, i64 1
  %unmask.51 = xor i32 %108, %mask.0
  %unmask.515 = xor i32 %unmask.51, %mask.10
  %unmask.516 = xor i32 %unmask.515, %mask.25
  %unmask.517 = xor i32 %unmask.516, %mask.35
  %unmask.518 = xor i32 %unmask.517, %mask.44
  store i32 %unmask.518, i32* %142
  %143 = getelementptr inbounds i32* %dst, i64 2
  %unmask.52 = xor i32 %112, %mask.1
  %unmask.529 = xor i32 %unmask.52, %mask.11
  %unmask.5210 = xor i32 %unmask.529, %mask.15
  %unmask.5211 = xor i32 %unmask.5210, %mask.26
  %unmask.5212 = xor i32 %unmask.5211, %mask.45
  store i32 %unmask.5212, i32* %143
  %144 = getelementptr inbounds i32* %dst, i64 3
  %unmask.53 = xor i32 %116, %mask.2
  %unmask.5313 = xor i32 %unmask.53, %mask.12
  %unmask.5314 = xor i32 %unmask.5313, %mask.27
  %unmask.5315 = xor i32 %unmask.5314, %mask.36
  %unmask.5316 = xor i32 %unmask.5315, %mask.46
  store i32 %unmask.5316, i32* %144
  %145 = getelementptr inbounds i32* %dst, i64 4
  %unmask.54 = xor i32 %120, %mask.3
  %unmask.5417 = xor i32 %unmask.54, %mask.13
  %unmask.5418 = xor i32 %unmask.5417, %mask.28
  %unmask.5419 = xor i32 %unmask.5418, %mask.37
  %unmask.5420 = xor i32 %unmask.5419, %mask.47
  store i32 %unmask.5420, i32* %145
  %146 = getelementptr inbounds i32* %dst, i64 5
  %unmask.55 = xor i32 %124, %mask.4
  %unmask.5521 = xor i32 %unmask.55, %mask.14
  %unmask.5522 = xor i32 %unmask.5521, %mask.29
  %unmask.5523 = xor i32 %unmask.5522, %mask.38
  %unmask.5524 = xor i32 %unmask.5523, %mask.48
  store i32 %unmask.5524, i32* %146
  %147 = getelementptr inbounds i32* %dst, i64 6
  %unmask.56 = xor i32 %128, %mask.5
  %unmask.5625 = xor i32 %unmask.56, %mask.16
  %unmask.5626 = xor i32 %unmask.5625, %mask.30
  %unmask.5627 = xor i32 %unmask.5626, %mask.39
  %unmask.5628 = xor i32 %unmask.5627, %mask.49
  store i32 %unmask.5628, i32* %147
  %148 = getelementptr inbounds i32* %dst, i64 7
  %unmask.57 = xor i32 %132, %mask.6
  %unmask.5729 = xor i32 %unmask.57, %mask.17
  %unmask.5730 = xor i32 %unmask.5729, %mask.20
  %unmask.5731 = xor i32 %unmask.5730, %mask.31
  %unmask.5732 = xor i32 %unmask.5731, %mask.40
  store i32 %unmask.5732, i32* %148
  %149 = getelementptr inbounds i32* %dst, i64 8
  %unmask.58 = xor i32 %136, %mask.7
  %unmask.5833 = xor i32 %unmask.58, %mask.18
  %unmask.5834 = xor i32 %unmask.5833, %mask.21
  %unmask.5835 = xor i32 %unmask.5834, %mask.32
  %unmask.5836 = xor i32 %unmask.5835, %mask.41
  store i32 %unmask.5836, i32* %149
  %150 = getelementptr inbounds i32* %dst, i64 9
  %unmask.59 = xor i32 %140, %mask.8
  %unmask.5937 = xor i32 %unmask.59, %mask.19
  %unmask.5938 = xor i32 %unmask.5937, %mask.22
  %unmask.5939 = xor i32 %unmask.5938, %mask.33
  %unmask.5940 = xor i32 %unmask.5939, %mask.42
  store i32 %unmask.5940, i32* %150
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %src = alloca [50 x i32], align 16
  %dst = alloca [10 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %6, %0
  %i.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp slt i32 %i.0, 50
  br i1 %2, label %3, label %8

; <label>:3                                       ; preds = %1
  %4 = sext i32 %i.0 to i64
  %5 = getelementptr inbounds [50 x i32]* %src, i32 0, i64 %4
  store i32 %i.0, i32* %5, align 4
  br label %6

; <label>:6                                       ; preds = %3
  %7 = add nsw i32 %i.0, 1
  br label %1

; <label>:8                                       ; preds = %1
  br label %9

; <label>:9                                       ; preds = %14, %8
  %i1.0 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %10 = icmp slt i32 %i1.0, 10
  br i1 %10, label %11, label %16

; <label>:11                                      ; preds = %9
  %12 = sext i32 %i1.0 to i64
  %13 = getelementptr inbounds [10 x i32]* %dst, i32 0, i64 %12
  store i32 0, i32* %13, align 4
  br label %14

; <label>:14                                      ; preds = %11
  %15 = add nsw i32 %i1.0, 1
  br label %9

; <label>:16                                      ; preds = %9
  %17 = getelementptr inbounds [50 x i32]* %src, i32 0, i32 0
  %18 = getelementptr inbounds [10 x i32]* %dst, i32 0, i32 0
  call void @demo(i32* %17, i32* %18)
  br label %19

; <label>:19                                      ; preds = %26, %16
  %i2.0 = phi i32 [ 0, %16 ], [ %27, %26 ]
  %20 = icmp slt i32 %i2.0, 10
  br i1 %20, label %21, label %28

; <label>:21                                      ; preds = %19
  %22 = sext i32 %i2.0 to i64
  %23 = getelementptr inbounds [10 x i32]* %dst, i32 0, i64 %22
  %mask.60 = call i32 @getMask()
  %24 = load i32* %23, align 4
  %masked.60 = xor i32 %24, %mask.60
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %masked.60)
  br label %26

; <label>:26                                      ; preds = %21
  %27 = add nsw i32 %i2.0, 1
  br label %19

; <label>:28                                      ; preds = %19
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

declare i32 @getMask()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
