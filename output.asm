.section .text.mt_sum::sum_of_vec,"ax",@progbits
	.globl	mt_sum::sum_of_vec
	.prefalign	4, .Lfunc_end49, nop
.type	mt_sum::sum_of_vec,@function
mt_sum::sum_of_vec:
		// src/lib.rs:10
		pub fn sum_of_vec(vec: Vec<u32>) -> u64 {
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception35
	push rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov rbp, rsp
	.cfi_def_cfa_register rbp
	push r15
	push r14
	push r13
	push r12
	push rbx
	and rsp, -128
	sub rsp, 1024
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	mov r14, rdi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/sync/mpmc/counter.rs:21
		let counter = Box::into_raw(Box::new(Counter {
	mov qword ptr [rsp + 768], 1
	mov qword ptr [rsp + 776], 1
	mov byte ptr [rsp + 784], 0
	mov dword ptr [rsp + 640], 0
	mov byte ptr [rsp + 644], 0
	mov qword ptr [rsp + 648], 0
	xorps xmm0, xmm0
	movaps xmmword ptr [rsp + 384], xmm0
	movaps xmmword ptr [rsp + 512], xmm0
	mov qword ptr [rsp + 656], 8
	movups xmmword ptr [rsp + 664], xmm0
	mov qword ptr [rsp + 680], 8
	mov qword ptr [rsp + 688], 0
	mov byte ptr [rsp + 696], 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 512
	mov esi, 128
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_118
	lea rsi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	mov edx, 512
	mov qword ptr [rsp + 160], rax
	mov rdi, rax
	call qword ptr [rip + memcpy@GOTPCREL]
		// src/lib.rs:12
		let vec_arc = Arc::new(vec);
	mov r12, qword ptr [r14]
	mov r13, qword ptr [r14 + 8]
	mov rbx, qword ptr [r14 + 16]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 40
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
	mov r14, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_119
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	mov qword ptr [r14], 1
	mov qword ptr [r14 + 8], 1
	mov qword ptr [r14 + 16], r12
	mov qword ptr [r14 + 24], r13
	mov qword ptr [r14 + 32], rbx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:326
		Self { ptr, phantom: PhantomData, alloc }
	mov qword ptr [rsp + 280], r14
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4354
		Relaxed => intrinsics::atomic_xadd::<T, U, { AO::Relaxed }>(dst, val),
	lock inc	qword ptr [r14]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2552
		if old_size > MAX_REFCOUNT {
	jle .LBB49_144
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4354
		Relaxed => intrinsics::atomic_xadd::<T, U, { AO::Relaxed }>(dst, val),
	lock inc	qword ptr [r14]
	mov rax, qword ptr [rsp + 160]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2552
		if old_size > MAX_REFCOUNT {
	jle .LBB49_144
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:326
		Self { ptr, phantom: PhantomData, alloc }
	mov qword ptr [rsp + 376], r14
		// src/lib.rs:15
		let handle_one = thread::spawn( move || {
	mov qword ptr [rsp + 304], r14
	mov qword ptr [rsp + 288], 1
	mov qword ptr [rsp + 296], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/builder.rs:79
		Builder { name: None, stack_size: None, no_hooks: false }
	mov qword ptr [rsp + 328], -1
	mov qword ptr [rsp + 312], 0
	mov byte ptr [rsp + 352], 0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/builder.rs:191
		unsafe { self.spawn_unchecked(f) }
	mov rax, qword ptr [rsp + 328]
	mov qword ptr [rsp + 240], rax
	mov rax, qword ptr [rsp + 336]
	mov qword ptr [rsp + 248], rax
	mov rax, qword ptr [rsp + 312]
	mov qword ptr [rsp + 224], rax
	mov rax, qword ptr [rsp + 320]
	mov qword ptr [rsp + 232], rax
	mov rax, qword ptr [rsp + 344]
	mov qword ptr [rsp + 256], rax
	movzx eax, byte ptr [rsp + 352]
	mov byte ptr [rsp + 264], al
	mov eax, dword ptr [rsp + 353]
	mov dword ptr [rsp + 265], eax
	movzx eax, word ptr [rsp + 357]
	mov word ptr [rsp + 269], ax
	movzx eax, byte ptr [rsp + 359]
	mov byte ptr [rsp + 271], al
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/builder.rs:260
		let Builder { name, stack_size, no_hooks } = self;
	mov rax, qword ptr [rsp + 240]
	mov rcx, qword ptr [rsp + 248]
	mov qword ptr [rsp + 360], rcx
	mov r15, qword ptr [rsp + 232]
	movzx r13d, byte ptr [rsp + 264]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1065
		match self {
	test byte ptr [rsp + 224], 1
	mov qword ptr [rsp + 72], 0
	mov qword ptr [rsp + 368], rax
	jne .LBB49_38
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4319
		Relaxed => intrinsics::atomic_load::<T, { AO::Relaxed }, VOLATILE>(dst),
	mov rcx, qword ptr [rip + std::thread::lifecycle::spawn_unchecked::{closure#0}::MIN@GOTPCREL]
	mov r15, qword ptr [rcx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:31
		match MIN.load(Ordering::Relaxed) {
	test r15, r15
	je .LBB49_7
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:33
		n => return n - 1,
	dec r15
	jmp .LBB49_38
.LBB49_7:
	mov r12b, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/env.rs:265
		env_imp::getenv(key.as_ref())
	lea rsi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.10]
	lea rdi, [rsp + 80]
	mov edx, 14
	mov bl, 1
	call qword ptr [rip + std::sys::env::unix::getenv@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1543
		match self {
	mov r12, qword ptr [rsp + 80]
	cmp r12, -1
	je .LBB49_12
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1544
		Some(x) => f(x),
	mov rsi, qword ptr [rsp + 88]
	mov rdx, qword ptr [rsp + 96]
	lea rdi, [rsp + 384]
	mov qword ptr [rsp + 272], rsi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/sys/os_str/bytes.rs:296
		str::from_utf8(&self.inner)
	call qword ptr [rip + core::str::converts::from_utf8@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:714
		match self {
	cmp dword ptr [rsp + 384], 1
	je .LBB49_11
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:715
		Ok(x) => Some(x),
	mov rcx, qword ptr [rsp + 400]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1783
		if src.is_empty() {
	test rcx, rcx
	je .LBB49_11
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:37
		.and_then(|s| s.to_str().and_then(|s| s.parse().ok()))
	mov rsi, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1783
		if src.is_empty() {
	cmp rcx, 1
	jne .LBB49_19
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1790
		let (is_positive, mut digits) = match src {
	movzx eax, byte ptr [rsi]
	cmp eax, 43
	je .LBB49_11
	cmp eax, 45
	jne .LBB49_20
.LBB49_11:
	mov r15d, 2097152
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	jne .LBB49_36
	jmp .LBB49_37
.LBB49_12:
	mov r15d, 2097152
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1543
		match self {
	jmp .LBB49_37
.LBB49_19:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1790
		let (is_positive, mut digits) = match src {
	movzx eax, byte ptr [rsi]
.LBB49_20:
	xor edi, edi
	cmp al, 43
	sete dil
	mov rdx, rcx
	sub rdx, rdi
	add rsi, rdi
	mov rax, rdi
	neg rax
	cmp rdx, 17
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1576
		radix <= 16 && digits.len() <= size_of::<T>() * 2 - is_signed_ty as usize
	jae .LBB49_25
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1821
		while let [c, rest @ ..] = digits {
	test rdx, rdx
	je .LBB49_33
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1803
		match $option {
	add rcx, rax
	neg rcx
	xor r15d, r15d
	xor eax, eax
.LBB49_23:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1823
		let x = unwrap_or_PIE!((*c as char).to_digit(radix), InvalidDigit);
	movzx edx, byte ptr [rsi + rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:2719
		intrinsics::wrapping_sub(self, rhs)
	add edx, -48
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/char/methods.rs:430
		if value < radix { Some(value) } else { None }
	cmp edx, 9
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1803
		match $option {
	ja .LBB49_34
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1822
		result = result * (radix as $int_ty);
	lea rdi, [r15 + 4*r15]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1824
		result = result $unchecked_additive_op (x as $int_ty);
	mov edx, edx
	lea r15, [rdx + 2*rdi]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1821
		while let [c, rest @ ..] = digits {
	inc rax
	mov rdx, rcx
	add rdx, rax
	jne .LBB49_23
	jmp .LBB49_35
.LBB49_25:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/intrinsics/mod.rs:486
		if b {
	add rcx, rax
	neg rcx
	xor r15d, r15d
	mov edi, 10
	xor r8d, r8d
.LBB49_26:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:3242
		let (a, b) = intrinsics::mul_with_overflow(self as $ActualT, rhs as $ActualT);
	mov rax, r15
	mul rdi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/intrinsics/mod.rs:486
		if b {
	jo .LBB49_11
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1849
		let x = unwrap_or_PIE!((*c as char).to_digit(radix), InvalidDigit) as $int_ty;
	movzx edx, byte ptr [rsi + r8]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:2719
		intrinsics::wrapping_sub(self, rhs)
	add edx, -48
	add r15, rdx
	setb al
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/char/methods.rs:430
		if value < radix { Some(value) } else { None }
	cmp edx, 9
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1803
		match $option {
	ja .LBB49_11
	test al, al
	jne .LBB49_11
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1837
		while let [c, rest @ ..] = digits {
	inc r8
	mov rax, rcx
	add rax, r8
	jne .LBB49_26
	jmp .LBB49_35
.LBB49_33:
	xor r15d, r15d
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	jne .LBB49_36
	jmp .LBB49_37
.LBB49_34:
	mov r15d, 2097152
.LBB49_35:
	test r12, r12
	je .LBB49_37
.LBB49_36:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 1
	mov rdi, qword ptr [rsp + 272]
	mov rsi, r12
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
.LBB49_37:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:42
		MIN.store(amt + 1, Ordering::Relaxed);
	lea rax, [r15 + 1]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4303
		Relaxed => intrinsics::atomic_store::<T, { AO::Relaxed }, VOLATILE>(dst, val),
	mov rcx, qword ptr [rip + std::thread::lifecycle::spawn_unchecked::{closure#0}::MIN@GOTPCREL]
	mov qword ptr [rcx], rax
.LBB49_38:
	mov r12b, 1
	mov bl, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:46
		let id = ThreadId::new();
	call qword ptr [rip + <std::thread::id::ThreadId>::new@GOTPCREL]
	lea rsi, [rsp + 240]
	mov r12b, 1
	xor ebx, ebx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:47
		let thread = Thread::new(id, name);
	mov rdi, rax
	call qword ptr [rip + <std::thread::thread::Thread>::new@GOTPCREL]
	mov qword ptr [rsp + 64], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:49
		let hooks = if no_hooks {
	test r13b, r13b
	je .LBB49_42
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/spawnhook.rs:145
		#[derive(Default)]
	mov qword ptr [rsp + 192], 0
	mov qword ptr [rsp + 200], 8
	xorps xmm0, xmm0
	movups xmmword ptr [rsp + 208], xmm0
	jmp .LBB49_43
.LBB49_42:
	lea rdi, [rsp + 192]
	lea rsi, [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:52
		spawnhook::run_spawn_hooks(&thread)
	call qword ptr [rip + std::thread::spawnhook::run_spawn_hooks@GOTPCREL]
.LBB49_43:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:447
		let x: Box<_> = Box::new(ArcInner {
	mov qword ptr [rsp + 384], 1
	mov qword ptr [rsp + 392], 1
	xorps xmm0, xmm0
	movups xmmword ptr [rsp + 400], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 48
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_120
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	movups xmm0, xmmword ptr [rsp + 384]
	movups xmm1, xmmword ptr [rsp + 400]
	movups xmm2, xmmword ptr [rsp + 416]
	movups xmmword ptr [rax + 32], xmm2
	movups xmmword ptr [rax + 16], xmm1
	movups xmmword ptr [rax], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:326
		Self { ptr, phantom: PhantomData, alloc }
	mov qword ptr [rsp + 168], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4354
		Relaxed => intrinsics::atomic_xadd::<T, U, { AO::Relaxed }>(dst, val),
	lock inc	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2552
		if old_size > MAX_REFCOUNT {
	jle .LBB49_144
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:61
		let rust_start = move || {
	movups xmm0, xmmword ptr [rsp + 192]
	movups xmm1, xmmword ptr [rsp + 208]
	movups xmmword ptr [rsp + 120], xmm1
	movups xmmword ptr [rsp + 104], xmm0
	mov rcx, qword ptr [rsp + 304]
	mov qword ptr [rsp + 96], rcx
	movups xmm0, xmmword ptr [rsp + 288]
	movaps xmmword ptr [rsp + 80], xmm0
	mov qword ptr [rsp + 136], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:79
		if let Some(scope_data) = &my_packet.scope {
	mov rdi, qword ptr [rax + 16]
	test rdi, rdi
	je .LBB49_47
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2573
		&self.inner().data
	add rdi, 16
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:80
		scope_data.increment_num_running_threads();
	call qword ptr [rip + <std::thread::scoped::ScopeData>::increment_num_running_threads@GOTPCREL]
.LBB49_47:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:86
		let ptr = Box::into_raw(Box::new(rust_start));
	movaps xmm0, xmmword ptr [rsp + 80]
	mov rax, qword ptr [rsp + 96]
	mov rcx, qword ptr [rsp + 104]
	movaps xmm1, xmmword ptr [rsp + 112]
	mov rdx, qword ptr [rsp + 128]
	mov qword ptr [rsp + 432], rdx
	mov rdx, qword ptr [rsp + 136]
	mov qword ptr [rsp + 440], rdx
	movaps xmmword ptr [rsp + 416], xmm1
	mov qword ptr [rsp + 400], rax
	mov qword ptr [rsp + 408], rcx
	movaps xmmword ptr [rsp + 384], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 64
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_121
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	movaps xmm0, xmmword ptr [rsp + 80]
	movaps xmm1, xmmword ptr [rsp + 96]
	movaps xmm2, xmmword ptr [rsp + 112]
	movaps xmm3, xmmword ptr [rsp + 128]
	movups xmmword ptr [rax + 48], xmm3
	movups xmmword ptr [rax + 32], xmm2
	movups xmmword ptr [rax + 16], xmm1
	movups xmmword ptr [rax], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rcx, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4354
		Relaxed => intrinsics::atomic_xadd::<T, U, { AO::Relaxed }>(dst, val),
	lock inc	qword ptr [rcx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2552
		if old_size > MAX_REFCOUNT {
	jle .LBB49_144
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2557
		unsafe { Self::from_inner_in(self.ptr, self.alloc.clone()) }
	mov rcx, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:94
		let init = Box::new(ThreadInit { handle: thread.clone(), rust_start });
	mov qword ptr [rsp + 384], rcx
	mov qword ptr [rsp + 392], rax
	lea rax, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.5]
	mov qword ptr [rsp + 400], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 24
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_122
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	mov rcx, qword ptr [rsp + 400]
	mov qword ptr [rax + 16], rcx
	movups xmm0, xmmword ptr [rsp + 384]
	movups xmmword ptr [rax], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:110
		native: unsafe { imp::Thread::new(stack_size, init)? },
	mov rdi, r15
	mov rsi, rax
	call qword ptr [rip + <std::sys::thread::unix::Thread>::new@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:2176
		match self {
	cmp rax, 1
	je .LBB49_134
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:111
		thread,
	mov rax, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:112
		packet: my_packet,
	mov rcx, qword ptr [rsp + 168]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1183
		Ok(t) => t,
	mov qword ptr [rsp + 168], rax
	mov qword ptr [rsp + 176], rcx
	mov qword ptr [rsp + 184], rdx
		// src/lib.rs:28
		let handle_two = thread::spawn( move || {
	mov qword ptr [rsp + 192], 1
	mov rax, qword ptr [rsp + 160]
	mov qword ptr [rsp + 200], rax
	mov qword ptr [rsp + 216], 0
	mov qword ptr [rsp + 208], r14
	mov qword ptr [rsp + 72], 0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4319
		Relaxed => intrinsics::atomic_load::<T, { AO::Relaxed }, VOLATILE>(dst),
	mov rbx, qword ptr [rip + std::thread::lifecycle::spawn_unchecked::{closure#0}::MIN@GOTPCREL]
	mov r15, qword ptr [rbx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:31
		match MIN.load(Ordering::Relaxed) {
	test r15, r15
	je .LBB49_54
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:33
		n => return n - 1,
	dec r15
	jmp .LBB49_85
.LBB49_54:
	mov r12b, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/env.rs:265
		env_imp::getenv(key.as_ref())
	lea rsi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.10]
	lea rdi, [rsp + 80]
	mov edx, 14
	call qword ptr [rip + std::sys::env::unix::getenv@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1543
		match self {
	mov r12, qword ptr [rsp + 80]
	cmp r12, -1
	je .LBB49_59
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1544
		Some(x) => f(x),
	mov r13, qword ptr [rsp + 88]
	mov rdx, qword ptr [rsp + 96]
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/sys/os_str/bytes.rs:296
		str::from_utf8(&self.inner)
	mov rsi, r13
	call qword ptr [rip + core::str::converts::from_utf8@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:714
		match self {
	cmp dword ptr [rsp + 384], 1
	je .LBB49_58
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:715
		Ok(x) => Some(x),
	mov rcx, qword ptr [rsp + 400]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1783
		if src.is_empty() {
	test rcx, rcx
	je .LBB49_58
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:37
		.and_then(|s| s.to_str().and_then(|s| s.parse().ok()))
	mov rsi, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1783
		if src.is_empty() {
	cmp rcx, 1
	jne .LBB49_66
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1790
		let (is_positive, mut digits) = match src {
	movzx eax, byte ptr [rsi]
	cmp eax, 43
	je .LBB49_58
	cmp eax, 45
	jne .LBB49_67
.LBB49_58:
	mov r15d, 2097152
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	jne .LBB49_83
	jmp .LBB49_84
.LBB49_59:
	mov r15d, 2097152
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1543
		match self {
	jmp .LBB49_84
.LBB49_66:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1790
		let (is_positive, mut digits) = match src {
	movzx eax, byte ptr [rsi]
.LBB49_67:
	xor edi, edi
	cmp al, 43
	sete dil
	mov rdx, rcx
	sub rdx, rdi
	add rsi, rdi
	mov rax, rdi
	neg rax
	cmp rdx, 17
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1576
		radix <= 16 && digits.len() <= size_of::<T>() * 2 - is_signed_ty as usize
	jae .LBB49_72
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1821
		while let [c, rest @ ..] = digits {
	test rdx, rdx
	je .LBB49_80
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1803
		match $option {
	add rcx, rax
	neg rcx
	xor r15d, r15d
	xor eax, eax
	.p2align	4
.LBB49_70:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1823
		let x = unwrap_or_PIE!((*c as char).to_digit(radix), InvalidDigit);
	movzx edx, byte ptr [rsi + rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:2719
		intrinsics::wrapping_sub(self, rhs)
	add edx, -48
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/char/methods.rs:430
		if value < radix { Some(value) } else { None }
	cmp edx, 9
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1803
		match $option {
	ja .LBB49_81
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1822
		result = result * (radix as $int_ty);
	lea rdi, [r15 + 4*r15]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1824
		result = result $unchecked_additive_op (x as $int_ty);
	mov edx, edx
	lea r15, [rdx + 2*rdi]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1821
		while let [c, rest @ ..] = digits {
	inc rax
	mov rdx, rcx
	add rdx, rax
	jne .LBB49_70
	jmp .LBB49_82
.LBB49_72:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/intrinsics/mod.rs:486
		if b {
	add rcx, rax
	neg rcx
	xor r15d, r15d
	mov edi, 10
	xor r8d, r8d
.LBB49_73:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:3242
		let (a, b) = intrinsics::mul_with_overflow(self as $ActualT, rhs as $ActualT);
	mov rax, r15
	mul rdi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/intrinsics/mod.rs:486
		if b {
	jo .LBB49_58
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1849
		let x = unwrap_or_PIE!((*c as char).to_digit(radix), InvalidDigit) as $int_ty;
	movzx edx, byte ptr [rsi + r8]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:2719
		intrinsics::wrapping_sub(self, rhs)
	add edx, -48
	add r15, rdx
	setb al
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/char/methods.rs:430
		if value < radix { Some(value) } else { None }
	cmp edx, 9
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1803
		match $option {
	ja .LBB49_58
	test al, al
	jne .LBB49_58
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/mod.rs:1837
		while let [c, rest @ ..] = digits {
	inc r8
	mov rax, rcx
	add rax, r8
	jne .LBB49_73
	jmp .LBB49_82
.LBB49_80:
	xor r15d, r15d
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	jne .LBB49_83
	jmp .LBB49_84
.LBB49_81:
	mov r15d, 2097152
.LBB49_82:
	test r12, r12
	je .LBB49_84
.LBB49_83:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 1
	mov rdi, r13
	mov rsi, r12
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
.LBB49_84:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:42
		MIN.store(amt + 1, Ordering::Relaxed);
	lea rax, [r15 + 1]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4303
		Relaxed => intrinsics::atomic_store::<T, { AO::Relaxed }, VOLATILE>(dst, val),
	mov qword ptr [rbx], rax
.LBB49_85:
	mov r12b, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:46
		let id = ThreadId::new();
	call qword ptr [rip + <std::thread::id::ThreadId>::new@GOTPCREL]
	lea rsi, [rsp + 328]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:47
		let thread = Thread::new(id, name);
	mov rdi, rax
	call qword ptr [rip + <std::thread::thread::Thread>::new@GOTPCREL]
	mov qword ptr [rsp + 64], rax
	lea rdi, [rsp + 224]
	lea rsi, [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:52
		spawnhook::run_spawn_hooks(&thread)
	call qword ptr [rip + std::thread::spawnhook::run_spawn_hooks@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:447
		let x: Box<_> = Box::new(ArcInner {
	mov qword ptr [rsp + 384], 1
	mov qword ptr [rsp + 392], 1
	xorps xmm0, xmm0
	movups xmmword ptr [rsp + 400], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 48
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_123
	mov r12, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	movups xmm0, xmmword ptr [rsp + 384]
	movups xmm1, xmmword ptr [rsp + 400]
	movups xmm2, xmmword ptr [rsp + 416]
	movups xmmword ptr [rax + 32], xmm2
	movups xmmword ptr [rax + 16], xmm1
	movups xmmword ptr [rax], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:326
		Self { ptr, phantom: PhantomData, alloc }
	mov qword ptr [rsp + 288], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4354
		Relaxed => intrinsics::atomic_xadd::<T, U, { AO::Relaxed }>(dst, val),
	lock inc	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2552
		if old_size > MAX_REFCOUNT {
	jle .LBB49_144
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:61
		let rust_start = move || {
	movups xmm0, xmmword ptr [rsp + 224]
	movups xmm1, xmmword ptr [rsp + 240]
	movaps xmmword ptr [rsp + 128], xmm1
	movaps xmmword ptr [rsp + 112], xmm0
	movups xmm0, xmmword ptr [rsp + 192]
	movups xmm1, xmmword ptr [rsp + 208]
	movaps xmmword ptr [rsp + 96], xmm1
	movaps xmmword ptr [rsp + 80], xmm0
	mov qword ptr [rsp + 144], r12
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:79
		if let Some(scope_data) = &my_packet.scope {
	mov rdi, qword ptr [r12 + 16]
	test rdi, rdi
	je .LBB49_92
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2573
		&self.inner().data
	add rdi, 16
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:80
		scope_data.increment_num_running_threads();
	call qword ptr [rip + <std::thread::scoped::ScopeData>::increment_num_running_threads@GOTPCREL]
.LBB49_92:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:86
		let ptr = Box::into_raw(Box::new(rust_start));
	mov rax, qword ptr [rsp + 144]
	mov qword ptr [rsp + 448], rax
	movaps xmm0, xmmword ptr [rsp + 80]
	movaps xmm1, xmmword ptr [rsp + 96]
	movaps xmm2, xmmword ptr [rsp + 112]
	movaps xmm3, xmmword ptr [rsp + 128]
	movaps xmmword ptr [rsp + 432], xmm3
	movaps xmmword ptr [rsp + 416], xmm2
	movaps xmmword ptr [rsp + 400], xmm1
	movaps xmmword ptr [rsp + 384], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 72
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_124
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	mov rcx, qword ptr [rsp + 144]
	mov qword ptr [rax + 64], rcx
	movaps xmm0, xmmword ptr [rsp + 80]
	movaps xmm1, xmmword ptr [rsp + 96]
	movaps xmm2, xmmword ptr [rsp + 112]
	movaps xmm3, xmmword ptr [rsp + 128]
	movups xmmword ptr [rax + 48], xmm3
	movups xmmword ptr [rax + 32], xmm2
	movups xmmword ptr [rax + 16], xmm1
	movups xmmword ptr [rax], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rcx, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4354
		Relaxed => intrinsics::atomic_xadd::<T, U, { AO::Relaxed }>(dst, val),
	lock inc	qword ptr [rcx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2552
		if old_size > MAX_REFCOUNT {
	jle .LBB49_144
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2557
		unsafe { Self::from_inner_in(self.ptr, self.alloc.clone()) }
	mov rcx, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:94
		let init = Box::new(ThreadInit { handle: thread.clone(), rust_start });
	mov qword ptr [rsp + 384], rcx
	mov qword ptr [rsp + 392], rax
	lea rax, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.6]
	mov qword ptr [rsp + 400], rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:308
		let raw_ptr = if zeroed { alloc_zeroed(layout) } else { alloc(layout) };
	call qword ptr [rip + __rustc::__rust_no_alloc_shim_is_unstable_v2@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:131
		__rust_alloc(layout.size(), layout.alignment())
	mov edi, 24
	mov esi, 8
	call qword ptr [rip + __rustc::__rust_alloc@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test rax, rax
	je .LBB49_125
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:295
		unsafe { core::intrinsics::write_via_move(ptr, x) };
	mov rcx, qword ptr [rsp + 400]
	mov qword ptr [rax + 16], rcx
	movups xmm0, xmmword ptr [rsp + 384]
	movups xmmword ptr [rax], xmm0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:110
		native: unsafe { imp::Thread::new(stack_size, init)? },
	mov rdi, r15
	mov rsi, rax
	call qword ptr [rip + <std::sys::thread::unix::Thread>::new@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:2176
		match self {
	cmp rax, 1
	je .LBB49_139
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:111
		thread,
	mov rax, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1183
		Ok(t) => t,
	mov qword ptr [rsp + 80], rax
	mov qword ptr [rsp + 88], r12
	mov qword ptr [rsp + 96], rdx
		// src/lib.rs:40
		handle_one.join().unwrap();
	movups xmm0, xmmword ptr [rsp + 168]
	movaps xmmword ptr [rsp + 384], xmm0
	mov rdi, qword ptr [rsp + 184]
	mov qword ptr [rsp + 400], rdi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:218
		self.native.join();
	call qword ptr [rip + <std::sys::thread::unix::Thread>::join@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2794
		if Self::is_unique(this) {
	mov rcx, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4408
		intrinsics::atomic_cxchg::<T, { AO::Acquire }, { AO::Relaxed }>(dst, old, new)
	mov rdx, -1
	mov eax, 1
	lock cmpxchg	qword ptr [rcx + 8], rdx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2940
		if this.inner().weak.compare_exchange(1, usize::MAX, Acquire, Relaxed).is_ok() {
	jne .LBB49_126
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4320
		Acquire => intrinsics::atomic_load::<T, { AO::Acquire }, VOLATILE>(dst),
	mov rax, qword ptr [rcx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4304
		Release => intrinsics::atomic_store::<T, { AO::Release }, VOLATILE>(dst, val),
	mov qword ptr [rcx + 8], 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2944
		let unique = this.inner().strong.load(Acquire) == 1;
	cmp rax, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2794
		if Self::is_unique(this) {
	jne .LBB49_126
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2872
		unsafe { &mut (*this.ptr.as_ptr()).data }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/mem/mod.rs:975
		let result = crate::intrinsics::read_via_copy(dest);
	mov rbx, qword ptr [rax + 32]
	mov r15, qword ptr [rax + 40]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1014
		match self {
	test byte ptr [rax + 24], 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/mem/mod.rs:976
		crate::intrinsics::write_via_move(dest, src);
	mov qword ptr [rax + 24], 0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1014
		match self {
	je .LBB49_127
	lea r12, [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_103
	#MEMBARRIER
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_103:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_105
	#MEMBARRIER
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	mov rdi, r12
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<()>>>::drop_slow@GOTPCREL]
.LBB49_105:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1230
		match self {
	test rbx, rbx
	jne .LBB49_128
		// src/lib.rs:41
		return handle_two.join().unwrap();
	movups xmm0, xmmword ptr [rsp + 80]
	movaps xmmword ptr [rsp + 384], xmm0
	mov rdi, qword ptr [rsp + 96]
	mov qword ptr [rsp + 400], rdi
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:218
		self.native.join();
	call qword ptr [rip + <std::sys::thread::unix::Thread>::join@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2794
		if Self::is_unique(this) {
	mov rcx, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4408
		intrinsics::atomic_cxchg::<T, { AO::Acquire }, { AO::Relaxed }>(dst, old, new)
	mov rdx, -1
	mov eax, 1
	lock cmpxchg	qword ptr [rcx + 8], rdx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2940
		if this.inner().weak.compare_exchange(1, usize::MAX, Acquire, Relaxed).is_ok() {
	jne .LBB49_129
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4320
		Acquire => intrinsics::atomic_load::<T, { AO::Acquire }, VOLATILE>(dst),
	mov rax, qword ptr [rcx]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4304
		Release => intrinsics::atomic_store::<T, { AO::Release }, VOLATILE>(dst, val),
	mov qword ptr [rcx + 8], 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2944
		let unique = this.inner().strong.load(Acquire) == 1;
	cmp rax, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2794
		if Self::is_unique(this) {
	jne .LBB49_129
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2872
		unsafe { &mut (*this.ptr.as_ptr()).data }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1014
		match self {
	test byte ptr [rax + 24], 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/mem/mod.rs:976
		crate::intrinsics::write_via_move(dest, src);
	mov qword ptr [rax + 24], 0
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1014
		match self {
	je .LBB49_130
	lea r12, [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1015
		Some(val) => val,
	mov rbx, qword ptr [rax + 32]
	mov r15, qword ptr [rax + 40]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_112
	#MEMBARRIER
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_112:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_114
	#MEMBARRIER
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	mov rdi, r12
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<u64>>>::drop_slow@GOTPCREL]
.LBB49_114:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1230
		match self {
	test rbx, rbx
	jne .LBB49_131
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r14]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_117
	#MEMBARRIER
	lea rdi, [rsp + 280]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<alloc::vec::Vec<u32>>>::drop_slow@GOTPCREL]
.LBB49_117:
		// src/lib.rs:43
		}
	mov rax, r15
	lea rsp, [rbp - 40]
	pop rbx
	pop r12
	pop r13
	pop r14
	pop r15
	pop rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB49_118:
	.cfi_def_cfa rbp, 16
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:253
		Err(_) => handle_alloc_error(layout),
	mov edi, 128
	mov esi, 512
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_119:
	mov edi, 8
	mov esi, 40
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_120:
	mov edi, 8
	mov esi, 48
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_121:
	mov edi, 8
	mov esi, 64
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_122:
	mov edi, 8
	mov esi, 24
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_123:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:447
		let x: Box<_> = Box::new(ArcInner {
	lea r12, [rsp + 400]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:253
		Err(_) => handle_alloc_error(layout),
	mov edi, 8
	mov esi, 48
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_124:
	mov edi, 8
	mov esi, 72
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_125:
	mov edi, 8
	mov esi, 24
	call qword ptr [rip + alloc::alloc::handle_alloc_error@GOTPCREL]
	jmp .LBB49_144
.LBB49_126:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:971
		None => expect_failed(msg),
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.55]
	lea rdx, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.57]
	mov esi, 41
	call qword ptr [rip + core::option::expect_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_127:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1016
		None => unwrap_failed(),
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.58]
	call qword ptr [rip + core::option::unwrap_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_128:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1232
		Err(e) => unwrap_failed("called `Result::unwrap()` on an `Err` value", &e),
	mov qword ptr [rsp + 384], rbx
	mov qword ptr [rsp + 392], r15
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.45]
	lea rcx, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.47]
	lea r8, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.41]
	lea rdx, [rsp + 384]
	mov esi, 43
	call qword ptr [rip + core::result::unwrap_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_129:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:971
		None => expect_failed(msg),
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.55]
	lea rdx, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.57]
	mov esi, 41
	call qword ptr [rip + core::option::expect_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_130:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/option.rs:1016
		None => unwrap_failed(),
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.58]
	call qword ptr [rip + core::option::unwrap_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_131:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1232
		Err(e) => unwrap_failed("called `Result::unwrap()` on an `Err` value", &e),
	mov qword ptr [rsp + 384], rbx
	mov qword ptr [rsp + 392], r15
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.45]
	lea rcx, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.47]
	lea r8, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.42]
	lea rdx, [rsp + 384]
	mov esi, 43
	call qword ptr [rip + core::result::unwrap_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_134:
	mov r15, rdx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 168]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_136
	#MEMBARRIER
	lea rdi, [rsp + 168]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<()>>>::drop_slow@GOTPCREL]
.LBB49_136:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_138
	#MEMBARRIER
	xor r12d, r12d
	lea rdi, [rsp + 64]
	xor ebx, ebx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_138:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1184
		Err(e) => unwrap_failed(msg, &e),
	mov qword ptr [rsp + 384], r15
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.38]
	lea rcx, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.43]
	lea r8, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.40]
	lea rdx, [rsp + 384]
	mov esi, 22
	call qword ptr [rip + core::result::unwrap_failed@GOTPCREL]
	jmp .LBB49_144
.LBB49_139:
	mov rbx, rdx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r12]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_141
	#MEMBARRIER
	lea rdi, [rsp + 288]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<u64>>>::drop_slow@GOTPCREL]
.LBB49_141:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_143
	#MEMBARRIER
	xor r12d, r12d
	lea rdi, [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_143:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1184
		Err(e) => unwrap_failed(msg, &e),
	mov qword ptr [rsp + 384], rbx
	lea rdi, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.38]
	lea rcx, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.43]
	lea r8, [rip + .Lanon.f8e490386be6a0a5e9323e00276db29a.40]
	lea rdx, [rsp + 384]
	mov esi, 22
	call qword ptr [rip + core::result::unwrap_failed@GOTPCREL]
.LBB49_144:
	ud2
	mov r15, rax
	mov bl, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	je .LBB49_147
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 1
	mov rdi, qword ptr [rsp + 272]
	mov rsi, r12
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
	mov bl, 1
.LBB49_147:
	mov r13b, 1
	jmp .LBB49_212
	mov r15, rax
	mov bl, 1
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	je .LBB49_188
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 1
	mov rdi, r13
	mov rsi, r12
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
	jmp .LBB49_188
	mov r15, rax
	jmp .LBB49_179
	mov r15, rax
	jmp .LBB49_201
	mov r15, rax
	jmp .LBB49_241
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_241
	#MEMBARRIER
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	mov rdi, r12
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<u64>>>::drop_slow@GOTPCREL]
	jmp .LBB49_241
	mov r15, rax
	jmp .LBB49_240
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_240
	#MEMBARRIER
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	mov rdi, r12
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<()>>>::drop_slow@GOTPCREL]
	jmp .LBB49_240
	mov r15, rax
	mov r12b, 1
	mov r13b, 1
	jmp .LBB49_207
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1184
		Err(e) => unwrap_failed(msg, &e),
	call core::ptr::drop_glue::<core::io::error::Error>
	jmp .LBB49_193
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1178
		pub fn expect(self, msg: &str) -> T
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1184
		Err(e) => unwrap_failed(msg, &e),
	call core::ptr::drop_glue::<core::io::error::Error>
	jmp .LBB49_219
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1178
		pub fn expect(self, msg: &str) -> T
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 80]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:114
		}
	call core::ptr::drop_glue::<std::thread::lifecycle::spawn_unchecked<mt_sum::sum_of_vec::{closure#1}, u64>::{closure#1}>
	jmp .LBB49_177
	mov r15, rax
	lea rdi, [rsp + 80]
	call core::ptr::drop_glue::<std::thread::lifecycle::spawn_unchecked<mt_sum::sum_of_vec::{closure#0}, ()>::{closure#1}>
	jmp .LBB49_199
	mov r15, rax
	jmp .LBB49_177
	mov r15, rax
	mov r12b, 1
	mov bl, 1
	jmp .LBB49_185
	mov r15, rax
	jmp .LBB49_199
	mov r15, rax
	mov r13d, r12d
	jmp .LBB49_211
	mov r15, rax
	mov ebx, r12d
	jmp .LBB49_187
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1232
		Err(e) => unwrap_failed("called `Result::unwrap()` on an `Err` value", &e),
	call core::ptr::drop_glue::<alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>
	jmp .LBB49_241
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1226
		pub fn unwrap(self) -> T
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1232
		Err(e) => unwrap_failed("called `Result::unwrap()` on an `Err` value", &e),
	call core::ptr::drop_glue::<alloc::boxed::Box<dyn core::any::Any + core::marker::Send>>
	jmp .LBB49_240
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/result.rs:1226
		pub fn unwrap(self) -> T
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:298
		}
	call core::ptr::drop_glue::<std::thread::lifecycle::ThreadInit>
	jmp .LBB49_177
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:298
		}
	call core::ptr::drop_glue::<std::thread::lifecycle::spawn_unchecked<mt_sum::sum_of_vec::{closure#1}, u64>::{closure#1}>
.LBB49_177:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r12]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_179
	#MEMBARRIER
	lea rdi, [rsp + 288]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<u64>>>::drop_slow@GOTPCREL]
.LBB49_179:
	xor r12d, r12d
	jmp .LBB49_184
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/mod.rs:848
		pub(crate) const unsafe fn drop_glue<T: PointeeSized>(_: &mut T)
	mov rdi, r12
	call core::ptr::drop_glue::<std::thread::lifecycle::Packet<u64>>
	lea rdi, [rsp + 224]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:114
		}
	call core::ptr::drop_glue::<std::thread::spawnhook::ChildSpawnHooks>
	mov r12b, 1
.LBB49_184:
	xor ebx, ebx
.LBB49_185:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_187
	#MEMBARRIER
	lea rdi, [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_187:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:114
		}
	test r12b, r12b
	je .LBB49_189
.LBB49_188:
	lea rdi, [rsp + 192]
	call core::ptr::drop_glue::<mt_sum::sum_of_vec::{closure#1}>
.LBB49_189:
	test bl, bl
	je .LBB49_193
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/mod.rs:848
		pub(crate) const unsafe fn drop_glue<T: PointeeSized>(_: &mut T)
	mov rax, qword ptr [rsp + 72]
	test rax, rax
	je .LBB49_193
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
	jne .LBB49_193
	#MEMBARRIER
	lea rdi, [rsp + 72]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::scoped::ScopeData>>::drop_slow@GOTPCREL]
.LBB49_193:
	lea rdi, [rsp + 168]
		// src/lib.rs:43
		}
	call core::ptr::drop_glue::<std::thread::join_handle::JoinHandle<()>>
	jmp .LBB49_241
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:16
		pub(super) unsafe fn spawn_unchecked<'scope, F, T>(
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:298
		}
	call core::ptr::drop_glue::<std::thread::lifecycle::ThreadInit>
	jmp .LBB49_199
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:298
		}
	call core::ptr::drop_glue::<std::thread::lifecycle::spawn_unchecked<mt_sum::sum_of_vec::{closure#0}, ()>::{closure#1}>
.LBB49_199:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 168]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_201
	#MEMBARRIER
	lea rdi, [rsp + 168]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<()>>>::drop_slow@GOTPCREL]
.LBB49_201:
	xor r12d, r12d
	jmp .LBB49_206
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:298
		}
	call core::ptr::drop_glue::<alloc::sync::ArcInner<std::thread::lifecycle::Packet<()>>>
	lea rdi, [rsp + 192]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:114
		}
	call core::ptr::drop_glue::<std::thread::spawnhook::ChildSpawnHooks>
	mov r12b, 1
.LBB49_206:
	xor r13d, r13d
.LBB49_207:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_210
	#MEMBARRIER
	lea rdi, [rsp + 64]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_210:
	xor ebx, ebx
.LBB49_211:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:114
		}
	test r12b, r12b
	je .LBB49_213
.LBB49_212:
	lea rdi, [rsp + 288]
	call core::ptr::drop_glue::<mt_sum::sum_of_vec::{closure#0}>
.LBB49_213:
	test r13b, r13b
	je .LBB49_217
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/mod.rs:848
		pub(crate) const unsafe fn drop_glue<T: PointeeSized>(_: &mut T)
	mov rax, qword ptr [rsp + 72]
	test rax, rax
	je .LBB49_217
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_217
	#MEMBARRIER
	lea rdi, [rsp + 72]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::scoped::ScopeData>>::drop_slow@GOTPCREL]
.LBB49_217:
	mov rsi, qword ptr [rsp + 368]
	test rsi, rsi
	setg al
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:114
		}
	test bl, al
	je .LBB49_219
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 1
	mov rdi, qword ptr [rsp + 360]
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
.LBB49_219:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r14]
	mov bl, 1
	jne .LBB49_220
	#MEMBARRIER
	lea rdi, [rsp + 376]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<alloc::vec::Vec<u32>>>::drop_slow@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r14]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_221
	jmp .LBB49_242
.LBB49_220:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r14]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_221
.LBB49_242:
	#MEMBARRIER
	lea rdi, [rsp + 280]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<alloc::vec::Vec<u32>>>::drop_slow@GOTPCREL]
		// src/lib.rs:43
		}
	test bl, bl
	je .LBB49_244
	jmp .LBB49_243
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:16
		pub(super) unsafe fn spawn_unchecked<'scope, F, T>(
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test r12, r12
	je .LBB49_243
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:1431
		intrinsics::unchecked_mul(self, rhs)
	shl r12, 2
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 4
	mov rdi, r13
	mov rsi, r12
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
	jmp .LBB49_243
	mov r15, rax
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:298
		}
	call core::ptr::drop_glue::<std::sync::mpmc::counter::Counter<std::sync::mpmc::list::Channel<core::option::Option<u32>>>>
		// src/lib.rs:43
		}
	mov rsi, qword ptr [r14]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/raw_vec/mod.rs:647
		if elem_layout.size() == 0 || self.cap.as_inner() == 0 {
	test rsi, rsi
	je .LBB49_246
		// src/lib.rs:43
		}
	mov rdi, qword ptr [r14 + 8]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/num/uint_macros.rs:1431
		intrinsics::unchecked_mul(self, rhs)
	shl rsi, 2
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/alloc.rs:178
		unsafe { __rust_dealloc(ptr, layout.size(), layout.alignment()) }
	mov edx, 4
	call qword ptr [rip + __rustc::__rust_dealloc@GOTPCREL]
	mov rdi, r15
	call _Unwind_Resume@PLT
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:290
		pub fn new(x: T) -> Self {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_233
	#MEMBARRIER
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_233:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
	jne .LBB49_241
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:229
		}
	lea rdi, [rsp + 392]
	#MEMBARRIER
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<u64>>>::drop_slow@GOTPCREL]
	jmp .LBB49_241
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:217
		pub(super) fn join(mut self) -> Result<T> {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
	mov r15, rax
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	jne .LBB49_238
	#MEMBARRIER
	lea rdi, [rsp + 384]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::thread::Inner, std::alloc::System>>::drop_slow@GOTPCREL]
.LBB49_238:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/ptr/non_null.rs:454
		unsafe { &*self.as_ptr().cast_const() }
	mov rax, qword ptr [rsp + 392]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [rax]
	jne .LBB49_240
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:229
		}
	lea rdi, [rsp + 392]
	#MEMBARRIER
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:3033
		self.drop_slow();
	call qword ptr [rip + <alloc::sync::Arc<std::thread::lifecycle::Packet<()>>>::drop_slow@GOTPCREL]
.LBB49_240:
	lea rdi, [rsp + 80]
		// src/lib.rs:43
		}
	call core::ptr::drop_glue::<std::thread::join_handle::JoinHandle<u64>>
.LBB49_241:
	xor ebx, ebx
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/core/src/sync/atomic.rs:4374
		Release => intrinsics::atomic_xsub::<T, U, { AO::Release }>(dst, val),
	lock dec	qword ptr [r14]
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/sync.rs:2989
		if self.inner().strong.fetch_sub(1, Release) != 1 {
	je .LBB49_242
.LBB49_221:
		// src/lib.rs:43
		}
	test bl, bl
	je .LBB49_244
.LBB49_243:
	mov edi, 1
	mov rsi, qword ptr [rsp + 160]
	call core::ptr::drop_glue::<std::sync::mpsc::Receiver<core::option::Option<u32>>>
.LBB49_244:
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/alloc/src/boxed.rs:251
		match Global.allocate(layout) {
	test r14, r14
	jne .LBB49_246
		// src/lib.rs:43
		}
	mov edi, 1
	mov rsi, qword ptr [rsp + 160]
	call core::ptr::drop_glue::<std::sync::mpsc::Sender<core::option::Option<u32>>>
.LBB49_246:
	mov rdi, r15
	call _Unwind_Resume@PLT
		// /rustc/4b6d04e706108ccfeafe2547fbe857dfe8972bad/library/std/src/thread/lifecycle.rs:217
		pub(super) fn join(mut self) -> Result<T> {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
		// src/lib.rs:10
		pub fn sum_of_vec(vec: Vec<u32>) -> u64 {
	call qword ptr [rip + core::panicking::panic_in_cleanup@GOTPCREL]
