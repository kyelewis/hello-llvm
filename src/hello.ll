declare i32 @println(i8*, i32)
declare i32 @execve(i8*, i8*)
declare void @exit(i32)

@.string = internal constant [14 x i8]  c"Hello, LLVM!\0A\00"

define void @_start() noreturn {
   %tmp1 = getelementptr [14 x i8], [14 x i8]* @.string, i32 0, i32 0
   %tmp2 = call i32 @println(i8* %tmp1, i32 14)

   %tmp3 = icmp ult i32 %tmp2, 0
   br i1 %tmp3, label %fail, label %cond_false1

   cond_false1:

   call void @exit(i32 0)
   ret void

   fail:

   call void @exit(i32 1)
   ret void
}
