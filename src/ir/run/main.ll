@g5 = dso_local global i32 1, align 4
@g6 = dso_local global i32 0, align 4
define dso_local void @global_init() {
bb0:
        %r0 = load i32, i32* @g5
        store i32 %r0, i32* @g6
        ret void
}
define dso_local i32 @main() {
bb0:
        call void @global_init()
        br label %bb1
bb1:
        %r0 = phi i32 [ 0,%bb0 ]
        ret i32 %r0
}