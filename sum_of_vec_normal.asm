.section .text.mt_sum::sum_of_vec_normal,"ax",@progbits
	.globl	mt_sum::sum_of_vec_normal
	.prefalign	4, .Lfunc_end50, nop
.type	mt_sum::sum_of_vec_normal,@function
mt_sum::sum_of_vec_normal:
		// src/lib.rs:44
		pub fn sum_of_vec_normal(vec: Vec<u32>) -> u64{
	.cfi_startproc
	push rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov rax, rdi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:627
		self.ptr.cast().as_non_null_ptr()
	mov rdi, qword ptr [rdi + 8]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/vec/mod.rs:1873
		&*core::intrinsics::aggregate_raw_ptr::<*const [T], _, _>(self.as_ptr(), self.len)
	mov rcx, qword ptr [rax + 16]
	xor ebx, ebx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:1663
		self.as_ptr() == other.as_ptr()
	test rcx, rcx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/slice/iter/macros.rs:25
		($this:ident, $len:ident => $zst_body:expr, $end:ident => $other_body:expr,) => {{
	je .LBB50_9
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/slice/iter/macros.rs:279
		if i == len {
	cmp rcx, 8
	jae .LBB50_4
	xor edx, edx
	jmp .LBB50_3
.LBB50_4:
	mov rdx, rcx
	and rdx, -8
	pxor xmm0, xmm0
	xor esi, esi
	pxor xmm1, xmm1
	.p2align	4
.LBB50_5:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/slice/iter/macros.rs:274
		acc = f(acc, unsafe { & $( $mut_ )? *self.ptr.add(i).as_ptr() });
	movdqu xmm2, xmmword ptr [rdi + 4*rsi]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	paddd xmm1, xmm2
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/slice/iter/macros.rs:274
		acc = f(acc, unsafe { & $( $mut_ )? *self.ptr.add(i).as_ptr() });
	movdqu xmm2, xmmword ptr [rdi + 4*rsi + 16]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	paddd xmm0, xmm2
	add rsi, 8
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/slice/iter/macros.rs:279
		if i == len {
	cmp rdx, rsi
	jne .LBB50_5
	paddd xmm0, xmm1
	pshufd xmm1, xmm0, 238
	paddd xmm1, xmm0
	pshufd xmm0, xmm1, 85
	paddd xmm0, xmm1
	movd ebx, xmm0
	jmp .LBB50_7
.LBB50_3:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ops/arith.rs:104
		fn add(self, other: $t) -> $t { self + other }
	add ebx, dword ptr [rdi + 4*rdx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:1043
		intrinsics::unchecked_add(self, rhs)
	inc rdx
.LBB50_7:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/slice/iter/macros.rs:279
		if i == len {
	cmp rcx, rdx
	jne .LBB50_3
		// src/lib.rs:45
		vec.iter().sum::<u32>() as u64
	mov ebx, ebx
.LBB50_9:
		// src/lib.rs:46
		}
	mov rsi, qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test rsi, rsi
	je .LBB50_11
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:1431
		intrinsics::unchecked_mul(self, rhs)
	shl rsi, 2
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 4
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
.LBB50_11:
		// src/lib.rs:46
		}
	mov rax, rbx
	pop rbx
	.cfi_def_cfa_offset 8
	ret
