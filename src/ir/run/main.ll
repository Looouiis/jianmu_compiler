@g0 = dso_local global double 1.1, align 4
@g1 = dso_local global double 100, align 4
define dso_local void @global_init() {
bb0:
        ret void
}