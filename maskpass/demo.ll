; ModuleID = 'demo.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @demo(i32* %src, i32* %dst) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %Aba0 = alloca i32, align 4
  %Abe0 = alloca i32, align 4
  %Abi0 = alloca i32, align 4
  %Abo0 = alloca i32, align 4
  %Abu0 = alloca i32, align 4
  %Aba1 = alloca i32, align 4
  %Abe1 = alloca i32, align 4
  %Abi1 = alloca i32, align 4
  %Abo1 = alloca i32, align 4
  %Abu1 = alloca i32, align 4
  %Aga0 = alloca i32, align 4
  %Age0 = alloca i32, align 4
  %Agi0 = alloca i32, align 4
  %Ago0 = alloca i32, align 4
  %Agu0 = alloca i32, align 4
  %Aga1 = alloca i32, align 4
  %Age1 = alloca i32, align 4
  %Agi1 = alloca i32, align 4
  %Ago1 = alloca i32, align 4
  %Agu1 = alloca i32, align 4
  %Aka0 = alloca i32, align 4
  %Ake0 = alloca i32, align 4
  %Aki0 = alloca i32, align 4
  %Ako0 = alloca i32, align 4
  %Aku0 = alloca i32, align 4
  %Aka1 = alloca i32, align 4
  %Ake1 = alloca i32, align 4
  %Aki1 = alloca i32, align 4
  %Ako1 = alloca i32, align 4
  %Aku1 = alloca i32, align 4
  %Ama0 = alloca i32, align 4
  %Ame0 = alloca i32, align 4
  %Ami0 = alloca i32, align 4
  %Amo0 = alloca i32, align 4
  %Amu0 = alloca i32, align 4
  %Ama1 = alloca i32, align 4
  %Ame1 = alloca i32, align 4
  %Ami1 = alloca i32, align 4
  %Amo1 = alloca i32, align 4
  %Amu1 = alloca i32, align 4
  %Asa0 = alloca i32, align 4
  %Ase0 = alloca i32, align 4
  %Asi0 = alloca i32, align 4
  %Aso0 = alloca i32, align 4
  %Asu0 = alloca i32, align 4
  %Asa1 = alloca i32, align 4
  %Ase1 = alloca i32, align 4
  %Asi1 = alloca i32, align 4
  %Aso1 = alloca i32, align 4
  %Asu1 = alloca i32, align 4
  %BCa0 = alloca i32, align 4
  %BCe0 = alloca i32, align 4
  %BCi0 = alloca i32, align 4
  %BCo0 = alloca i32, align 4
  %BCu0 = alloca i32, align 4
  %BCa1 = alloca i32, align 4
  %BCe1 = alloca i32, align 4
  %BCi1 = alloca i32, align 4
  %BCo1 = alloca i32, align 4
  %BCu1 = alloca i32, align 4
  store i32* %src, i32** %1, align 8
  store i32* %dst, i32** %2, align 8
  %3 = load i32** %1, align 8
  %4 = getelementptr inbounds i32* %3, i64 0
  %5 = load i32* %4, align 4
  store i32 %5, i32* %Aba0, align 4
  %6 = load i32** %1, align 8
  %7 = getelementptr inbounds i32* %6, i64 1
  %8 = load i32* %7, align 4
  store i32 %8, i32* %Aba1, align 4
  %9 = load i32** %1, align 8
  %10 = getelementptr inbounds i32* %9, i64 2
  %11 = load i32* %10, align 4
  store i32 %11, i32* %Abe0, align 4
  %12 = load i32** %1, align 8
  %13 = getelementptr inbounds i32* %12, i64 3
  %14 = load i32* %13, align 4
  store i32 %14, i32* %Abe1, align 4
  %15 = load i32** %1, align 8
  %16 = getelementptr inbounds i32* %15, i64 4
  %17 = load i32* %16, align 4
  store i32 %17, i32* %Abi0, align 4
  %18 = load i32** %1, align 8
  %19 = getelementptr inbounds i32* %18, i64 5
  %20 = load i32* %19, align 4
  store i32 %20, i32* %Abi1, align 4
  %21 = load i32** %1, align 8
  %22 = getelementptr inbounds i32* %21, i64 6
  %23 = load i32* %22, align 4
  store i32 %23, i32* %Abo0, align 4
  %24 = load i32** %1, align 8
  %25 = getelementptr inbounds i32* %24, i64 7
  %26 = load i32* %25, align 4
  store i32 %26, i32* %Abo1, align 4
  %27 = load i32** %1, align 8
  %28 = getelementptr inbounds i32* %27, i64 8
  %29 = load i32* %28, align 4
  store i32 %29, i32* %Abu0, align 4
  %30 = load i32** %1, align 8
  %31 = getelementptr inbounds i32* %30, i64 9
  %32 = load i32* %31, align 4
  store i32 %32, i32* %Abu1, align 4
  %33 = load i32** %1, align 8
  %34 = getelementptr inbounds i32* %33, i64 10
  %35 = load i32* %34, align 4
  store i32 %35, i32* %Aga0, align 4
  %36 = load i32** %1, align 8
  %37 = getelementptr inbounds i32* %36, i64 11
  %38 = load i32* %37, align 4
  store i32 %38, i32* %Aga1, align 4
  %39 = load i32** %1, align 8
  %40 = getelementptr inbounds i32* %39, i64 12
  %41 = load i32* %40, align 4
  store i32 %41, i32* %Age0, align 4
  %42 = load i32** %1, align 8
  %43 = getelementptr inbounds i32* %42, i64 13
  %44 = load i32* %43, align 4
  store i32 %44, i32* %Age1, align 4
  %45 = load i32** %1, align 8
  %46 = getelementptr inbounds i32* %45, i64 14
  %47 = load i32* %46, align 4
  store i32 %47, i32* %Agi0, align 4
  %48 = load i32** %1, align 8
  %49 = getelementptr inbounds i32* %48, i64 15
  %50 = load i32* %49, align 4
  store i32 %50, i32* %Agi1, align 4
  %51 = load i32** %1, align 8
  %52 = getelementptr inbounds i32* %51, i64 16
  %53 = load i32* %52, align 4
  store i32 %53, i32* %Ago0, align 4
  %54 = load i32** %1, align 8
  %55 = getelementptr inbounds i32* %54, i64 17
  %56 = load i32* %55, align 4
  store i32 %56, i32* %Ago1, align 4
  %57 = load i32** %1, align 8
  %58 = getelementptr inbounds i32* %57, i64 18
  %59 = load i32* %58, align 4
  store i32 %59, i32* %Agu0, align 4
  %60 = load i32** %1, align 8
  %61 = getelementptr inbounds i32* %60, i64 19
  %62 = load i32* %61, align 4
  store i32 %62, i32* %Agu1, align 4
  %63 = load i32** %1, align 8
  %64 = getelementptr inbounds i32* %63, i64 20
  %65 = load i32* %64, align 4
  store i32 %65, i32* %Aka0, align 4
  %66 = load i32** %1, align 8
  %67 = getelementptr inbounds i32* %66, i64 21
  %68 = load i32* %67, align 4
  store i32 %68, i32* %Aka1, align 4
  %69 = load i32** %1, align 8
  %70 = getelementptr inbounds i32* %69, i64 22
  %71 = load i32* %70, align 4
  store i32 %71, i32* %Ake0, align 4
  %72 = load i32** %1, align 8
  %73 = getelementptr inbounds i32* %72, i64 23
  %74 = load i32* %73, align 4
  store i32 %74, i32* %Ake1, align 4
  %75 = load i32** %1, align 8
  %76 = getelementptr inbounds i32* %75, i64 24
  %77 = load i32* %76, align 4
  store i32 %77, i32* %Aki0, align 4
  %78 = load i32** %1, align 8
  %79 = getelementptr inbounds i32* %78, i64 25
  %80 = load i32* %79, align 4
  store i32 %80, i32* %Aki1, align 4
  %81 = load i32** %1, align 8
  %82 = getelementptr inbounds i32* %81, i64 26
  %83 = load i32* %82, align 4
  store i32 %83, i32* %Ako0, align 4
  %84 = load i32** %1, align 8
  %85 = getelementptr inbounds i32* %84, i64 27
  %86 = load i32* %85, align 4
  store i32 %86, i32* %Ako1, align 4
  %87 = load i32** %1, align 8
  %88 = getelementptr inbounds i32* %87, i64 28
  %89 = load i32* %88, align 4
  store i32 %89, i32* %Aku0, align 4
  %90 = load i32** %1, align 8
  %91 = getelementptr inbounds i32* %90, i64 29
  %92 = load i32* %91, align 4
  store i32 %92, i32* %Aku1, align 4
  %93 = load i32** %1, align 8
  %94 = getelementptr inbounds i32* %93, i64 30
  %95 = load i32* %94, align 4
  store i32 %95, i32* %Ama0, align 4
  %96 = load i32** %1, align 8
  %97 = getelementptr inbounds i32* %96, i64 31
  %98 = load i32* %97, align 4
  store i32 %98, i32* %Ama1, align 4
  %99 = load i32** %1, align 8
  %100 = getelementptr inbounds i32* %99, i64 32
  %101 = load i32* %100, align 4
  store i32 %101, i32* %Ame0, align 4
  %102 = load i32** %1, align 8
  %103 = getelementptr inbounds i32* %102, i64 33
  %104 = load i32* %103, align 4
  store i32 %104, i32* %Ame1, align 4
  %105 = load i32** %1, align 8
  %106 = getelementptr inbounds i32* %105, i64 34
  %107 = load i32* %106, align 4
  store i32 %107, i32* %Ami0, align 4
  %108 = load i32** %1, align 8
  %109 = getelementptr inbounds i32* %108, i64 35
  %110 = load i32* %109, align 4
  store i32 %110, i32* %Ami1, align 4
  %111 = load i32** %1, align 8
  %112 = getelementptr inbounds i32* %111, i64 36
  %113 = load i32* %112, align 4
  store i32 %113, i32* %Amo0, align 4
  %114 = load i32** %1, align 8
  %115 = getelementptr inbounds i32* %114, i64 37
  %116 = load i32* %115, align 4
  store i32 %116, i32* %Amo1, align 4
  %117 = load i32** %1, align 8
  %118 = getelementptr inbounds i32* %117, i64 38
  %119 = load i32* %118, align 4
  store i32 %119, i32* %Amu0, align 4
  %120 = load i32** %1, align 8
  %121 = getelementptr inbounds i32* %120, i64 39
  %122 = load i32* %121, align 4
  store i32 %122, i32* %Amu1, align 4
  %123 = load i32** %1, align 8
  %124 = getelementptr inbounds i32* %123, i64 40
  %125 = load i32* %124, align 4
  store i32 %125, i32* %Asa0, align 4
  %126 = load i32** %1, align 8
  %127 = getelementptr inbounds i32* %126, i64 41
  %128 = load i32* %127, align 4
  store i32 %128, i32* %Asa1, align 4
  %129 = load i32** %1, align 8
  %130 = getelementptr inbounds i32* %129, i64 42
  %131 = load i32* %130, align 4
  store i32 %131, i32* %Ase0, align 4
  %132 = load i32** %1, align 8
  %133 = getelementptr inbounds i32* %132, i64 43
  %134 = load i32* %133, align 4
  store i32 %134, i32* %Ase1, align 4
  %135 = load i32** %1, align 8
  %136 = getelementptr inbounds i32* %135, i64 44
  %137 = load i32* %136, align 4
  store i32 %137, i32* %Asi0, align 4
  %138 = load i32** %1, align 8
  %139 = getelementptr inbounds i32* %138, i64 45
  %140 = load i32* %139, align 4
  store i32 %140, i32* %Asi1, align 4
  %141 = load i32** %1, align 8
  %142 = getelementptr inbounds i32* %141, i64 46
  %143 = load i32* %142, align 4
  store i32 %143, i32* %Aso0, align 4
  %144 = load i32** %1, align 8
  %145 = getelementptr inbounds i32* %144, i64 47
  %146 = load i32* %145, align 4
  store i32 %146, i32* %Aso1, align 4
  %147 = load i32** %1, align 8
  %148 = getelementptr inbounds i32* %147, i64 48
  %149 = load i32* %148, align 4
  store i32 %149, i32* %Asu0, align 4
  %150 = load i32** %1, align 8
  %151 = getelementptr inbounds i32* %150, i64 49
  %152 = load i32* %151, align 4
  store i32 %152, i32* %Asu1, align 4
  %153 = load i32* %Aba0, align 4
  %154 = load i32* %Aga0, align 4
  %155 = xor i32 %153, %154
  %156 = load i32* %Aka0, align 4
  %157 = xor i32 %155, %156
  %158 = load i32* %Ama0, align 4
  %159 = xor i32 %157, %158
  %160 = load i32* %Asa0, align 4
  %161 = xor i32 %159, %160
  store i32 %161, i32* %BCa0, align 4
  %162 = load i32* %Aba1, align 4
  %163 = load i32* %Aga1, align 4
  %164 = xor i32 %162, %163
  %165 = load i32* %Aka1, align 4
  %166 = xor i32 %164, %165
  %167 = load i32* %Ama1, align 4
  %168 = xor i32 %166, %167
  %169 = load i32* %Asa1, align 4
  %170 = xor i32 %168, %169
  store i32 %170, i32* %BCa1, align 4
  %171 = load i32* %Abe0, align 4
  %172 = load i32* %Age0, align 4
  %173 = xor i32 %171, %172
  %174 = load i32* %Ake0, align 4
  %175 = xor i32 %173, %174
  %176 = load i32* %Ame0, align 4
  %177 = xor i32 %175, %176
  %178 = load i32* %Ase0, align 4
  %179 = xor i32 %177, %178
  store i32 %179, i32* %BCe0, align 4
  %180 = load i32* %Abe1, align 4
  %181 = load i32* %Age1, align 4
  %182 = xor i32 %180, %181
  %183 = load i32* %Ake1, align 4
  %184 = xor i32 %182, %183
  %185 = load i32* %Ame1, align 4
  %186 = xor i32 %184, %185
  %187 = load i32* %Ase1, align 4
  %188 = xor i32 %186, %187
  store i32 %188, i32* %BCe1, align 4
  %189 = load i32* %Abi0, align 4
  %190 = load i32* %Agi0, align 4
  %191 = xor i32 %189, %190
  %192 = load i32* %Aki0, align 4
  %193 = xor i32 %191, %192
  %194 = load i32* %Ami0, align 4
  %195 = xor i32 %193, %194
  %196 = load i32* %Asi0, align 4
  %197 = xor i32 %195, %196
  store i32 %197, i32* %BCi0, align 4
  %198 = load i32* %Abi1, align 4
  %199 = load i32* %Agi1, align 4
  %200 = xor i32 %198, %199
  %201 = load i32* %Aki1, align 4
  %202 = xor i32 %200, %201
  %203 = load i32* %Ami1, align 4
  %204 = xor i32 %202, %203
  %205 = load i32* %Asi1, align 4
  %206 = xor i32 %204, %205
  store i32 %206, i32* %BCi1, align 4
  %207 = load i32* %Abo0, align 4
  %208 = load i32* %Ago0, align 4
  %209 = xor i32 %207, %208
  %210 = load i32* %Ako0, align 4
  %211 = xor i32 %209, %210
  %212 = load i32* %Amo0, align 4
  %213 = xor i32 %211, %212
  %214 = load i32* %Aso0, align 4
  %215 = xor i32 %213, %214
  store i32 %215, i32* %BCo0, align 4
  %216 = load i32* %Abo1, align 4
  %217 = load i32* %Ago1, align 4
  %218 = xor i32 %216, %217
  %219 = load i32* %Ako1, align 4
  %220 = xor i32 %218, %219
  %221 = load i32* %Amo1, align 4
  %222 = xor i32 %220, %221
  %223 = load i32* %Aso1, align 4
  %224 = xor i32 %222, %223
  store i32 %224, i32* %BCo1, align 4
  %225 = load i32* %Abu0, align 4
  %226 = load i32* %Agu0, align 4
  %227 = xor i32 %225, %226
  %228 = load i32* %Aku0, align 4
  %229 = xor i32 %227, %228
  %230 = load i32* %Amu0, align 4
  %231 = xor i32 %229, %230
  %232 = load i32* %Asu0, align 4
  %233 = xor i32 %231, %232
  store i32 %233, i32* %BCu0, align 4
  %234 = load i32* %Abu1, align 4
  %235 = load i32* %Agu1, align 4
  %236 = xor i32 %234, %235
  %237 = load i32* %Aku1, align 4
  %238 = xor i32 %236, %237
  %239 = load i32* %Amu1, align 4
  %240 = xor i32 %238, %239
  %241 = load i32* %Asu1, align 4
  %242 = xor i32 %240, %241
  store i32 %242, i32* %BCu1, align 4
  %243 = load i32* %BCa0, align 4
  %244 = load i32** %2, align 8
  %245 = getelementptr inbounds i32* %244, i64 0
  store i32 %243, i32* %245, align 4
  %246 = load i32* %BCa1, align 4
  %247 = load i32** %2, align 8
  %248 = getelementptr inbounds i32* %247, i64 1
  store i32 %246, i32* %248, align 4
  %249 = load i32* %BCe0, align 4
  %250 = load i32** %2, align 8
  %251 = getelementptr inbounds i32* %250, i64 2
  store i32 %249, i32* %251, align 4
  %252 = load i32* %BCe1, align 4
  %253 = load i32** %2, align 8
  %254 = getelementptr inbounds i32* %253, i64 3
  store i32 %252, i32* %254, align 4
  %255 = load i32* %BCi0, align 4
  %256 = load i32** %2, align 8
  %257 = getelementptr inbounds i32* %256, i64 4
  store i32 %255, i32* %257, align 4
  %258 = load i32* %BCi1, align 4
  %259 = load i32** %2, align 8
  %260 = getelementptr inbounds i32* %259, i64 5
  store i32 %258, i32* %260, align 4
  %261 = load i32* %BCo0, align 4
  %262 = load i32** %2, align 8
  %263 = getelementptr inbounds i32* %262, i64 6
  store i32 %261, i32* %263, align 4
  %264 = load i32* %BCo1, align 4
  %265 = load i32** %2, align 8
  %266 = getelementptr inbounds i32* %265, i64 7
  store i32 %264, i32* %266, align 4
  %267 = load i32* %BCu0, align 4
  %268 = load i32** %2, align 8
  %269 = getelementptr inbounds i32* %268, i64 8
  store i32 %267, i32* %269, align 4
  %270 = load i32* %BCu1, align 4
  %271 = load i32** %2, align 8
  %272 = getelementptr inbounds i32* %271, i64 9
  store i32 %270, i32* %272, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %src = alloca [50 x i32], align 16
  %dst = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %12, %0
  %5 = load i32* %i, align 4
  %6 = icmp slt i32 %5, 50
  br i1 %6, label %7, label %15

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4
  %9 = load i32* %i, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [50 x i32]* %src, i32 0, i64 %10
  store i32 %8, i32* %11, align 4
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %4

; <label>:15                                      ; preds = %4
  store i32 0, i32* %i1, align 4
  br label %16

; <label>:16                                      ; preds = %23, %15
  %17 = load i32* %i1, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %16
  %20 = load i32* %i1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x i32]* %dst, i32 0, i64 %21
  store i32 0, i32* %22, align 4
  br label %23

; <label>:23                                      ; preds = %19
  %24 = load i32* %i1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %i1, align 4
  br label %16

; <label>:26                                      ; preds = %16
  %27 = getelementptr inbounds [50 x i32]* %src, i32 0, i32 0
  %28 = getelementptr inbounds [10 x i32]* %dst, i32 0, i32 0
  call void @demo(i32* %27, i32* %28)
  store i32 0, i32* %i2, align 4
  br label %29

; <label>:29                                      ; preds = %38, %26
  %30 = load i32* %i2, align 4
  %31 = icmp slt i32 %30, 10
  br i1 %31, label %32, label %41

; <label>:32                                      ; preds = %29
  %33 = load i32* %i2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i32]* %dst, i32 0, i64 %34
  %36 = load i32* %35, align 4
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0), i32 %36)
  br label %38

; <label>:38                                      ; preds = %32
  %39 = load i32* %i2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %i2, align 4
  br label %29

; <label>:41                                      ; preds = %29
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
