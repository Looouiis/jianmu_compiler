define dso_local double @calc(double %r0, double %r1) {
bb0:
        %r2 = fadd double %r0, %r1
        br label %bb1
bb1:
        %r3 = phi double [ %r2,%bb0 ], [ 0.000000,%bb2 ]
        ret double %r3
bb2:
        br label %bb1
}
define dso_local i32 @main() {
bb0:
        %r0 = alloca double , align 4
        store double 1.1, double* %r0
        %r1 = alloca double , align 4
        store double 2.2, double* %r1
        %r2 = alloca double , align 4
        %r3 = load double, double* %r0
        %r4 = load double, double* %r1
        %r5 = call double @calc(double %r3, double %r4)
        store double %r5, double* %r2
        %r6 = load double, double* %r0
        %r7 = load double, double* %r2
        %r8 = fcmp olt double %r6,%r7
        br i1 %r8,label %bb3,label %bb2
bb1:
        %r9 = phi i32 [ 1,%bb3 ], [ 0,%bb2 ], [ 0,%bb6 ]
        ret i32 %r9
bb2:
        br label %bb1
bb3:
        br label %bb1
bb5:
        br label %bb2
bb6:
        br label %bb1
}