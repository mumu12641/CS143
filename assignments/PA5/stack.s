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
str_const35:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"A2I"
	.byte	0	
	.align	2
	.word	-1
str_const34:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const33:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Node"
	.byte	0	
	.align	2
	.word	-1
str_const32:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const31:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const30:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const29:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const2
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const28:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const27:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const26:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const25:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const24:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const11
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const23:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"-"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"9"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"8"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"7"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"6"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"5"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"4"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"3"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"0"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"./atoi.cl"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"2"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"1"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	">"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"p"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"e"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const6
	.ascii	"stop!\n"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"x"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"d"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"\n"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	10
	.word	String_dispTab
	.word	int_const12
	.ascii	"nothing to evaluate\n"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"+"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.ascii	"s"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"./stack.cl"
	.byte	0	
	.align	2
	.word	-1
int_const12:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const11:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	7
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	5
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
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
	.word	str_const28
	.word	str_const29
	.word	str_const30
	.word	str_const31
	.word	str_const32
	.word	str_const33
	.word	str_const34
	.word	str_const35
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
	.word	A2I_protObj
	.word	A2I_init
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
	.word	Node.init
	.word	Node.pushOnTop
	.word	Node.setNext
	.word	Node.getNext
	.word	Node.getS
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A2I.c2i
	.word	A2I.i2c
	.word	A2I.a2i
	.word	A2I.a2i_aux
	.word	A2I.i2a
	.word	A2I.i2a_aux
	.word	Main.push
	.word	Main.evaluate
	.word	Main.swap
	.word	Main.printStack
	.word	Main.excute
	.word	Main.main
A2I_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	A2I.c2i
	.word	A2I.i2c
	.word	A2I.a2i
	.word	A2I.a2i_aux
	.word	A2I.i2a
	.word	A2I.i2a_aux
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
	.word	int_const0
	.word	0
	.word	-1
Node_protObj:
	.word	5
	.word	5
	.word	Node_dispTab
	.word	str_const22
	.word	0
	.word	-1
Main_protObj:
	.word	6
	.word	4
	.word	Main_dispTab
	.word	0
	.word	-1
A2I_protObj:
	.word	7
	.word	3
	.word	A2I_dispTab
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
	la	$a0 int_const0
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
	la	$a0 str_const22
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
	jal	A2I_init
	move	$a0 $zero
	sw	$a0 12($s0)
	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 12
	jr	$ra	
A2I_init:
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
Node.init:
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

	#	assign_class start
	#	eval expr
	lw	$a0 16($fp)
	#	store to object
	sw	$a0 16($s0)
	#	assign_class end

	move	$a0 $s0
	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 20
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
	move	$a0 $s0
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
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	lw	$a0 0($fp)
	#	let class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
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

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
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
	beqz	$t1 label1
	la	$a0 bool_const0
label1:
	lw	$t1 12($a0)
	beqz	$t1 label2
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
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 Node_protObj
	jal	Object.copy
	jal	Node_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label4
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label4:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	#	let class end

	b	label3
label2:
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
	bne	$a0 $zero label5
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label5:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

label3:
	#	cond_class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
	jr	$ra	
Main.evaluate:
	#	4
	addiu	$sp $sp -28
	sw	$fp 28($sp)
	sw	$s0 24($sp)
	sw	$ra 20($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	cond_class start
	#	eval pred
	lw	$a0 12($s0)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label6
	la	$a0 bool_const0
label6:
	lw	$t1 12($a0)
	beqz	$t1 label7
	#	eval then_exp
	lw	$a0 12($s0)
	b	label8
label7:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($s0)
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

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const1
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
	#	assign_class start
	#	eval expr
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
	lw	$t1 44($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	b	label12
label11:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label14
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label14:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const2
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label15
	la	$a1 bool_const0
	jal	equality_test
label15:
	lw	$t1 12($a0)
	beqz	$t1 label16
	#	eval then_exp
	#	let class start
	#	eval let init
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label18
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label18:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 12($fp)
	#	eval let body
	#	let class start
	#	eval let init
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label19
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label19:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 8($fp)
	#	eval let body
	#	let class start
	#	eval let init
	move	$a0 $zero
	la	$a0 int_const0
	sw	$a0 4($fp)
	#	eval let body
	#	let class start
	#	eval let init
	move	$a0 $zero
	sw	$a0 0($fp)
	#	eval let body
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 A2I_protObj
	jal	Object.copy
	jal	A2I_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label21:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 8($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label22
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label22:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 A2I_protObj
	jal	Object.copy
	jal	A2I_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label23
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label23:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	#	store to object
	sw	$a0 4($fp)
	#	assign_class end

	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	lw	$a0 4($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 A2I_protObj
	jal	Object.copy
	jal	A2I_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label24
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label24:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 8($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label25:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 Node_protObj
	jal	Object.copy
	jal	Node_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	assign_class start
	#	eval expr
	lw	$a0 0($fp)
	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	#	let class end

	#	let class end

	#	let class end

	#	let class end

	b	label17
label16:
	#	eval else_exp
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
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label27:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

label17:
	#	cond_class end

label12:
	#	cond_class end

label8:
	#	cond_class end

	lw	$a0 12($s0)
	lw	$fp 28($sp)
	lw	$s0 24($sp)
	lw	$ra 20($sp)
	addiu	$sp $sp 28
	jr	$ra	
Main.swap:
	#	1
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	let class start
	#	eval let init
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label28
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label28:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label29:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($fp)
	#	eval let body
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label30:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label31
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label31:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label32:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label33:
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
	addiu	$sp $sp 16
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
label34:
	#	eval loop pred
	lw	$a0 0($fp)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label36
	la	$a0 bool_const0
label36:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label37
	la	$a0 bool_const0
label37:
	lw	$t1 12($a0)
	beqz	$t1 label35
	#	eval loop body
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label38
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label38:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
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
	bne	$a0 $zero label39
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label39:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label40
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label40:
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
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label41:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	b	label34
label35:
	move	$a0 $zero
	#	loop_class end

	#	let class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
Main.excute:
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
	la	$a0 str_const5
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label42
	la	$a1 bool_const0
	jal	equality_test
label42:
	lw	$t1 12($a0)
	beqz	$t1 label43
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label45
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label45:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jal	$t1
	#	dispatch_class end

	b	label44
label43:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const6
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label46
	la	$a1 bool_const0
	jal	equality_test
label46:
	lw	$t1 12($a0)
	beqz	$t1 label47
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	la	$a0 str_const7
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label49
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label49:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label50
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label50:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jal	$t1
	#	dispatch_class end

	b	label48
label47:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const8
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label51
	la	$a1 bool_const0
	jal	equality_test
label51:
	lw	$t1 12($a0)
	beqz	$t1 label52
	#	eval then_exp
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label54
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label54:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	b	label53
label52:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const1
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label55
	la	$a1 bool_const0
	jal	equality_test
label55:
	lw	$t1 12($a0)
	beqz	$t1 label56
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label58
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label58:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jal	$t1
	#	dispatch_class end

	b	label57
label56:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const9
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label59
	la	$a1 bool_const0
	jal	equality_test
label59:
	lw	$t1 12($a0)
	beqz	$t1 label60
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label62
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label62:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jal	$t1
	#	dispatch_class end

	b	label61
label60:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label63
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label63:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jal	$t1
	#	dispatch_class end

label61:
	#	cond_class end

label57:
	#	cond_class end

label53:
	#	cond_class end

label48:
	#	cond_class end

label44:
	#	cond_class end

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
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
	la	$a0 str_const22
	sw	$a0 0($fp)
	#	eval let body
	#	dispatch_class start
	#	push actual
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label64
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label64:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	la	$a0 str_const11
	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label65
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label65:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label66:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label67
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label67:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label68
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label68:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	la	$a0 str_const2
	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label69
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label69:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label70:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label71
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label71:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	la	$a0 str_const12
	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label72
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label72:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label73
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label73:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label74
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label74:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	la	$a0 str_const1
	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label75
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label75:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label76
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label76:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const10
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label77
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label77:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	la	$a0 str_const5
	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	#	dispatch_class start
	#	push actual
	la	$a0 str_const4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	new_class start
	la	$a0 IO_protObj
	jal	Object.copy
	jal	IO_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label78
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label78:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label79
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label79:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jal	$t1
	#	dispatch_class end

	#	let class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 16
	jr	$ra	
A2I.c2i:
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
	la	$a0 str_const14
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label80
	la	$a1 bool_const0
	jal	equality_test
label80:
	lw	$t1 12($a0)
	beqz	$t1 label81
	#	eval then_exp
	la	$a0 int_const0
	b	label82
label81:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const11
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label83
	la	$a1 bool_const0
	jal	equality_test
label83:
	lw	$t1 12($a0)
	beqz	$t1 label84
	#	eval then_exp
	la	$a0 int_const1
	b	label85
label84:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const12
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label86
	la	$a1 bool_const0
	jal	equality_test
label86:
	lw	$t1 12($a0)
	beqz	$t1 label87
	#	eval then_exp
	la	$a0 int_const2
	b	label88
label87:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const15
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label89
	la	$a1 bool_const0
	jal	equality_test
label89:
	lw	$t1 12($a0)
	beqz	$t1 label90
	#	eval then_exp
	la	$a0 int_const3
	b	label91
label90:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const16
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label92
	la	$a1 bool_const0
	jal	equality_test
label92:
	lw	$t1 12($a0)
	beqz	$t1 label93
	#	eval then_exp
	la	$a0 int_const4
	b	label94
label93:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const17
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label95
	la	$a1 bool_const0
	jal	equality_test
label95:
	lw	$t1 12($a0)
	beqz	$t1 label96
	#	eval then_exp
	la	$a0 int_const5
	b	label97
label96:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const18
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label98
	la	$a1 bool_const0
	jal	equality_test
label98:
	lw	$t1 12($a0)
	beqz	$t1 label99
	#	eval then_exp
	la	$a0 int_const6
	b	label100
label99:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const19
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label101
	la	$a1 bool_const0
	jal	equality_test
label101:
	lw	$t1 12($a0)
	beqz	$t1 label102
	#	eval then_exp
	la	$a0 int_const7
	b	label103
label102:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const20
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label104
	la	$a1 bool_const0
	jal	equality_test
label104:
	lw	$t1 12($a0)
	beqz	$t1 label105
	#	eval then_exp
	la	$a0 int_const8
	b	label106
label105:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const21
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label107
	la	$a1 bool_const0
	jal	equality_test
label107:
	lw	$t1 12($a0)
	beqz	$t1 label108
	#	eval then_exp
	la	$a0 int_const9
	b	label109
label108:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label110
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label110:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jal	$t1
	#	dispatch_class end

	la	$a0 int_const0
label109:
	#	cond_class end

label106:
	#	cond_class end

label103:
	#	cond_class end

label100:
	#	cond_class end

label97:
	#	cond_class end

label94:
	#	cond_class end

label91:
	#	cond_class end

label88:
	#	cond_class end

label85:
	#	cond_class end

label82:
	#	cond_class end

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
A2I.i2c:
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
	la	$a0 int_const0
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label111
	la	$a1 bool_const0
	jal	equality_test
label111:
	lw	$t1 12($a0)
	beqz	$t1 label112
	#	eval then_exp
	la	$a0 str_const14
	b	label113
label112:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label114
	la	$a1 bool_const0
	jal	equality_test
label114:
	lw	$t1 12($a0)
	beqz	$t1 label115
	#	eval then_exp
	la	$a0 str_const11
	b	label116
label115:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const2
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label117
	la	$a1 bool_const0
	jal	equality_test
label117:
	lw	$t1 12($a0)
	beqz	$t1 label118
	#	eval then_exp
	la	$a0 str_const12
	b	label119
label118:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label120
	la	$a1 bool_const0
	jal	equality_test
label120:
	lw	$t1 12($a0)
	beqz	$t1 label121
	#	eval then_exp
	la	$a0 str_const15
	b	label122
label121:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const4
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label123
	la	$a1 bool_const0
	jal	equality_test
label123:
	lw	$t1 12($a0)
	beqz	$t1 label124
	#	eval then_exp
	la	$a0 str_const16
	b	label125
label124:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const5
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label126
	la	$a1 bool_const0
	jal	equality_test
label126:
	lw	$t1 12($a0)
	beqz	$t1 label127
	#	eval then_exp
	la	$a0 str_const17
	b	label128
label127:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const6
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label129
	la	$a1 bool_const0
	jal	equality_test
label129:
	lw	$t1 12($a0)
	beqz	$t1 label130
	#	eval then_exp
	la	$a0 str_const18
	b	label131
label130:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const7
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label132
	la	$a1 bool_const0
	jal	equality_test
label132:
	lw	$t1 12($a0)
	beqz	$t1 label133
	#	eval then_exp
	la	$a0 str_const19
	b	label134
label133:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const8
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label135
	la	$a1 bool_const0
	jal	equality_test
label135:
	lw	$t1 12($a0)
	beqz	$t1 label136
	#	eval then_exp
	la	$a0 str_const20
	b	label137
label136:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const9
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label138
	la	$a1 bool_const0
	jal	equality_test
label138:
	lw	$t1 12($a0)
	beqz	$t1 label139
	#	eval then_exp
	la	$a0 str_const21
	b	label140
label139:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label141
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label141:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jal	$t1
	#	dispatch_class end

	la	$a0 str_const22
label140:
	#	cond_class end

label137:
	#	cond_class end

label134:
	#	cond_class end

label131:
	#	cond_class end

label128:
	#	cond_class end

label125:
	#	cond_class end

label122:
	#	cond_class end

label119:
	#	cond_class end

label116:
	#	cond_class end

label113:
	#	cond_class end

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
A2I.a2i:
	#	0
	addiu	$sp $sp -12
	sw	$fp 12($sp)
	sw	$s0 8($sp)
	sw	$ra 4($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label142
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label142:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label143
	la	$a1 bool_const0
	jal	equality_test
label143:
	lw	$t1 12($a0)
	beqz	$t1 label144
	#	eval then_exp
	la	$a0 int_const0
	b	label145
label144:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label146
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label146:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const23
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label147
	la	$a1 bool_const0
	jal	equality_test
label147:
	lw	$t1 12($a0)
	beqz	$t1 label148
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label150
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label150:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label151
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label151:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label152
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label152:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	b	label149
label148:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label153
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label153:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const2
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label154
	la	$a1 bool_const0
	jal	equality_test
label154:
	lw	$t1 12($a0)
	beqz	$t1 label155
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label157
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label157:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label158:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label159
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label159:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	b	label156
label155:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label160
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label160:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

label156:
	#	cond_class end

label149:
	#	cond_class end

label145:
	#	cond_class end

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
A2I.a2i_aux:
	#	3
	addiu	$sp $sp -24
	sw	$fp 24($sp)
	sw	$s0 20($sp)
	sw	$ra 16($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	let class start
	#	eval let init
	la	$a0 int_const0
	sw	$a0 8($fp)
	#	eval let body
	#	let class start
	#	eval let init
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	lw	$a0 24($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label161
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label161:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 4($fp)
	#	eval let body
	#	let class start
	#	eval let init
	la	$a0 int_const0
	sw	$a0 0($fp)
	#	eval let body
	#	lopp_class start
label162:
	#	eval loop pred
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 4($fp)
	lw	$t1 4($sp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp 4
	la	$a0 bool_const1
	blt	$t1 $t2 label164
	la	$a0 bool_const0
label164:
	lw	$t1 12($a0)
	beqz	$t1 label163
	#	eval loop body
	#	assign_class start
	#	eval expr
	lw	$a0 8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const10
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	lw	$a0 24($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label165
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label165:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label166
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label166:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	#	store to object
	sw	$a0 8($fp)
	#	assign_class end

	#	assign_class start
	#	eval expr
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	add	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	b	label162
label163:
	move	$a0 $zero
	#	loop_class end

	#	let class end

	#	let class end

	#	let class end

	lw	$fp 24($sp)
	lw	$s0 20($sp)
	lw	$ra 16($sp)
	addiu	$sp $sp 28
	jr	$ra	
A2I.i2a:
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
	la	$a0 int_const0
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label167
	la	$a1 bool_const0
	jal	equality_test
label167:
	lw	$t1 12($a0)
	beqz	$t1 label168
	#	eval then_exp
	la	$a0 str_const14
	b	label169
label168:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 12($fp)
	lw	$t1 4($sp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp 4
	la	$a0 bool_const1
	blt	$t1 $t2 label170
	la	$a0 bool_const0
label170:
	lw	$t1 12($a0)
	beqz	$t1 label171
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label173
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label173:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jal	$t1
	#	dispatch_class end

	b	label172
label171:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label174
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label174:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	la	$a0 str_const23
	#	if obj = void jmp abort()
	bne	$a0 $zero label175
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label175:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

label172:
	#	cond_class end

label169:
	#	cond_class end

	lw	$fp 12($sp)
	lw	$s0 8($sp)
	lw	$ra 4($sp)
	addiu	$sp $sp 16
	jr	$ra	
A2I.i2a_aux:
	#	1
	addiu	$sp $sp -16
	sw	$fp 16($sp)
	sw	$s0 12($sp)
	sw	$ra 8($sp)
	addiu	$fp $sp 4
	move	$s0 $a0
	#	cond_class start
	#	eval pred
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label176
	la	$a1 bool_const0
	jal	equality_test
label176:
	lw	$t1 12($a0)
	beqz	$t1 label177
	#	eval then_exp
	la	$a0 str_const22
	b	label178
label177:
	#	eval else_exp
	#	let class start
	#	eval let init
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const10
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	div	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($fp)
	#	eval let body
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const10
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	mul	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	sub	$t1 $t1 $t2
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label179
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label179:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	dispatch_class start
	#	push actual
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label180
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label180:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jal	$t1
	#	dispatch_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label181
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label181:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

	#	let class end

label178:
	#	cond_class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
	jr	$ra	
