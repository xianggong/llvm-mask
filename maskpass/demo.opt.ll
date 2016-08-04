; ModuleID = 'demo.opt.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @demo(i32* %src, i32* %dst) #0 {
  %1 = getelementptr inbounds i32* %src, i64 0
  %2 = load i32* %1, align 4
  %3 = getelementptr inbounds i32* %src, i64 1
  %4 = load i32* %3, align 4
  %5 = getelementptr inbounds i32* %src, i64 2
  %6 = load i32* %5, align 4
  %7 = getelementptr inbounds i32* %src, i64 3
  %8 = load i32* %7, align 4
  %9 = getelementptr inbounds i32* %src, i64 4
  %10 = load i32* %9, align 4
  %11 = getelementptr inbounds i32* %src, i64 5
  %12 = load i32* %11, align 4
  %13 = getelementptr inbounds i32* %src, i64 6
  %14 = load i32* %13, align 4
  %15 = getelementptr inbounds i32* %src, i64 7
  %16 = load i32* %15, align 4
  %17 = getelementptr inbounds i32* %src, i64 8
  %18 = load i32* %17, align 4
  %19 = getelementptr inbounds i32* %src, i64 9
  %20 = load i32* %19, align 4
  %21 = getelementptr inbounds i32* %src, i64 10
  %22 = load i32* %21, align 4
  %23 = getelementptr inbounds i32* %src, i64 11
  %24 = load i32* %23, align 4
  %25 = getelementptr inbounds i32* %src, i64 12
  %26 = load i32* %25, align 4
  %27 = getelementptr inbounds i32* %src, i64 13
  %28 = load i32* %27, align 4
  %29 = getelementptr inbounds i32* %src, i64 14
  %30 = load i32* %29, align 4
  %31 = getelementptr inbounds i32* %src, i64 15
  %32 = load i32* %31, align 4
  %33 = getelementptr inbounds i32* %src, i64 16
  %34 = load i32* %33, align 4
  %35 = getelementptr inbounds i32* %src, i64 17
  %36 = load i32* %35, align 4
  %37 = getelementptr inbounds i32* %src, i64 18
  %38 = load i32* %37, align 4
  %39 = getelementptr inbounds i32* %src, i64 19
  %40 = load i32* %39, align 4
  %41 = getelementptr inbounds i32* %src, i64 20
  %42 = load i32* %41, align 4
  %43 = getelementptr inbounds i32* %src, i64 21
  %44 = load i32* %43, align 4
  %45 = getelementptr inbounds i32* %src, i64 22
  %46 = load i32* %45, align 4
  %47 = getelementptr inbounds i32* %src, i64 23
  %48 = load i32* %47, align 4
  %49 = getelementptr inbounds i32* %src, i64 24
  %50 = load i32* %49, align 4
  %51 = getelementptr inbounds i32* %src, i64 25
  %52 = load i32* %51, align 4
  %53 = getelementptr inbounds i32* %src, i64 26
  %54 = load i32* %53, align 4
  %55 = getelementptr inbounds i32* %src, i64 27
  %56 = load i32* %55, align 4
  %57 = getelementptr inbounds i32* %src, i64 28
  %58 = load i32* %57, align 4
  %59 = getelementptr inbounds i32* %src, i64 29
  %60 = load i32* %59, align 4
  %61 = getelementptr inbounds i32* %src, i64 30
  %62 = load i32* %61, align 4
  %63 = getelementptr inbounds i32* %src, i64 31
  %64 = load i32* %63, align 4
  %65 = getelementptr inbounds i32* %src, i64 32
  %66 = load i32* %65, align 4
  %67 = getelementptr inbounds i32* %src, i64 33
  %68 = load i32* %67, align 4
  %69 = getelementptr inbounds i32* %src, i64 34
  %70 = load i32* %69, align 4
  %71 = getelementptr inbounds i32* %src, i64 35
  %72 = load i32* %71, align 4
  %73 = getelementptr inbounds i32* %src, i64 36
  %74 = load i32* %73, align 4
  %75 = getelementptr inbounds i32* %src, i64 37
  %76 = load i32* %75, align 4
  %77 = getelementptr inbounds i32* %src, i64 38
  %78 = load i32* %77, align 4
  %79 = getelementptr inbounds i32* %src, i64 39
  %80 = load i32* %79, align 4
  %81 = getelementptr inbounds i32* %src, i64 40
  %82 = load i32* %81, align 4
  %83 = getelementptr inbounds i32* %src, i64 41
  %84 = load i32* %83, align 4
  %85 = getelementptr inbounds i32* %src, i64 42
  %86 = load i32* %85, align 4
  %87 = getelementptr inbounds i32* %src, i64 43
  %88 = load i32* %87, align 4
  %89 = getelementptr inbounds i32* %src, i64 44
  %90 = load i32* %89, align 4
  %91 = getelementptr inbounds i32* %src, i64 45
  %92 = load i32* %91, align 4
  %93 = getelementptr inbounds i32* %src, i64 46
  %94 = load i32* %93, align 4
  %95 = getelementptr inbounds i32* %src, i64 47
  %96 = load i32* %95, align 4
  %97 = getelementptr inbounds i32* %src, i64 48
  %98 = load i32* %97, align 4
  %99 = getelementptr inbounds i32* %src, i64 49
  %100 = load i32* %99, align 4
  %101 = xor i32 %2, %22
  %102 = xor i32 %101, %42
  %103 = xor i32 %102, %62
  %104 = xor i32 %103, %82
  %105 = xor i32 %4, %24
  %106 = xor i32 %105, %44
  %107 = xor i32 %106, %64
  %108 = xor i32 %107, %84
  %109 = xor i32 %6, %26
  %110 = xor i32 %109, %46
  %111 = xor i32 %110, %66
  %112 = xor i32 %111, %86
  %113 = xor i32 %8, %28
  %114 = xor i32 %113, %48
  %115 = xor i32 %114, %68
  %116 = xor i32 %115, %88
  %117 = xor i32 %10, %30
  %118 = xor i32 %117, %50
  %119 = xor i32 %118, %70
  %120 = xor i32 %119, %90
  %121 = xor i32 %12, %32
  %122 = xor i32 %121, %52
  %123 = xor i32 %122, %72
  %124 = xor i32 %123, %92
  %125 = xor i32 %14, %34
  %126 = xor i32 %125, %54
  %127 = xor i32 %126, %74
  %128 = xor i32 %127, %94
  %129 = xor i32 %16, %36
  %130 = xor i32 %129, %56
  %131 = xor i32 %130, %76
  %132 = xor i32 %131, %96
  %133 = xor i32 %18, %38
  %134 = xor i32 %133, %58
  %135 = xor i32 %134, %78
  %136 = xor i32 %135, %98
  %137 = xor i32 %20, %40
  %138 = xor i32 %137, %60
  %139 = xor i32 %138, %80
  %140 = xor i32 %139, %100
  %141 = getelementptr inbounds i32* %dst, i64 0
  store i32 %104, i32* %141, align 4
  %142 = getelementptr inbounds i32* %dst, i64 1
  store i32 %108, i32* %142, align 4
  %143 = getelementptr inbounds i32* %dst, i64 2
  store i32 %112, i32* %143, align 4
  %144 = getelementptr inbounds i32* %dst, i64 3
  store i32 %116, i32* %144, align 4
  %145 = getelementptr inbounds i32* %dst, i64 4
  store i32 %120, i32* %145, align 4
  %146 = getelementptr inbounds i32* %dst, i64 5
  store i32 %124, i32* %146, align 4
  %147 = getelementptr inbounds i32* %dst, i64 6
  store i32 %128, i32* %147, align 4
  %148 = getelementptr inbounds i32* %dst, i64 7
  store i32 %132, i32* %148, align 4
  %149 = getelementptr inbounds i32* %dst, i64 8
  store i32 %136, i32* %149, align 4
  %150 = getelementptr inbounds i32* %dst, i64 9
  store i32 %140, i32* %150, align 4
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
  %24 = load i32* %23, align 4
  %25 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %24)
  br label %26

; <label>:26                                      ; preds = %21
  %27 = add nsw i32 %i2.0, 1
  br label %19

; <label>:28                                      ; preds = %19
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
