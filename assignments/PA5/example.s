	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Node"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const8
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	">"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"d"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"example.cl"
	.byte	0	
	.align	2
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
class_nameTab:
	.word	str_const8
	.word	str_const9
	.word	str_const10
	.word	str_const11
	.word	str_const12
	.word	str_const13
	.word	str_const14
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Node_protObj
	.word	Node_init
	.word	Main_protObj
	.word	Main_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Node_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Node.pushOnTop
	.word	Node.setS
	.word	Node.setNext
	.word	Node.getS
	.word	Node.getNext
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.printStack
	.word	Main.eval
	.word	Main.push
	.word	Main.main
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Int_protObj:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.word	0
	.word	-1
Node_protObj:
	.word	5
	.word	5
	.word	Node_dispTab
	.word	str_const15
	.word	0
	.word	-1
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispTab
	.word	0
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
String_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	la	$a0 int_const1
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Node_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	Object_init
	la	$a0 str_const15
	sw	$a0 12($s0)
	move	$a0 $zero
	sw	$a0 16($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main_init:
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	jal	IO_init
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Node.pushOnTop:
	#	1
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	let class start
	#	eval let init
	move	$a0 $zero
	sw	$a0 0($fp)
	#	eval let body
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 Node_protObj
	jal	Object.copy
	jal	Node_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label0
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label0:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label1
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label1:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	lw	$a0 0($fp)
	#	let class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
	jr	$ra	
Node.setS:
	#	0
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	assign_class start
	#	eval expr
	lw	$a0 12($fp)
	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Node.setNext:
	#	0
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	assign_class start
	#	eval expr
	lw	$a0 12($fp)
	#	store to object
	sw	$a0 16($s0)
	#	assign_class end

	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Node.getS:
	#	0
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 12($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Node.getNext:
	#	0
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	lw	$a0 16($s0)
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.printStack:
	#	1
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	let class start
	#	eval let init
	lw	$a0 12($s0)
	sw	$a0 0($fp)
	#	eval let body
	#	lopp_class start
label2:
	#	eval loop pred
	lw	$a0 0($fp)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label4
	la	$a0 bool_const0
label4:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label5
	la	$a0 bool_const0
label5:
	lw	$t1 12($a0)
	beqz	$t1 label3
	#	eval loop body
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label7
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label7:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label8
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label8:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label9
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label9:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	b	label2
label3:
	move	$a0 $zero
	#	loop_class end

	#	let class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Main.eval:
	#	0
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const2
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label10
	la	$a1 bool_const0
	jal	equality_test
label10:
	lw	$t1 12($a0)
	beqz	$t1 label11
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label13
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label13:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jal	$t1
	#	dispatch_class end

	b	label12
label11:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label14:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jal	$t1
	#	dispatch_class end

label12:
	#	cond_class end

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
Main.push:
	#	1
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	cond_class start
	#	eval pred
	lw	$a0 12($s0)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label15
	la	$a0 bool_const0
label15:
	lw	$t1 12($a0)
	beqz	$t1 label16
	#	eval then_exp
	#	let class start
	#	eval let init
	move	$a0 $zero
	sw	$a0 0($fp)
	#	eval let body
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 Node_protObj
	jal	Object.copy
	jal	Node_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label18:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label19:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	let class end

	b	label17
label16:
	#	eval else_exp
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

label17:
	#	cond_class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
	jr	$ra	
Main.main:
	#	1
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	let class start
	#	eval let init
	move	$a0 $zero
	la	$a0 str_const15
	sw	$a0 0($fp)
	#	eval let body
	#	lopp_class start
label21:
	#	eval loop pred
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label22
	#	eval loop body
	#	dispatch_class start
	#	push actual
	la	$a0 str_const3
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label23:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label24:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label25:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jal	$t1
	#	dispatch_class end

	b	label21
label22:
	move	$a0 $zero
	#	loop_class end

	#	let class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
