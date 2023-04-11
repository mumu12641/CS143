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
	.word	int_const0
	.ascii	"-"
	.byte	0	
	.align	2
	.word	-1
str_const22:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const1
	.byte	0	
	.align	2
	.word	-1
str_const21:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"9"
	.byte	0	
	.align	2
	.word	-1
str_const20:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"8"
	.byte	0	
	.align	2
	.word	-1
str_const19:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"7"
	.byte	0	
	.align	2
	.word	-1
str_const18:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"6"
	.byte	0	
	.align	2
	.word	-1
str_const17:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"5"
	.byte	0	
	.align	2
	.word	-1
str_const16:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"4"
	.byte	0	
	.align	2
	.word	-1
str_const15:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"3"
	.byte	0	
	.align	2
	.word	-1
str_const14:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"2"
	.byte	0	
	.align	2
	.word	-1
str_const13:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"1"
	.byte	0	
	.align	2
	.word	-1
str_const12:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"0"
	.byte	0	
	.align	2
	.word	-1
str_const11:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const9
	.ascii	"./atoi.cl"
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	">"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"p"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
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
	.word	int_const0
	.ascii	"x"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"d"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
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
	.word	int_const0
	.ascii	"+"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.ascii	"s"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const13
	.ascii	"./example.cl"
	.byte	0	
	.align	2
	.word	-1
int_const13:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	12
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
	.word	Node.pushOnTop
	.word	Node.setS
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
	.word	int_const1
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
	#	no expr at 16
	move	$a0 $zero
	sw	$a0 0($fp)
	#	eval let body
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	object c
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
	#	object self
	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object newNode
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

	#	object newNode
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
	#	object c
	lw	$a0 12($fp)
	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	#	object self
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
	#	object n
	lw	$a0 12($fp)
	#	store to object
	sw	$a0 16($s0)
	#	assign_class end

	#	object self
	move	$a0 $s0
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
	#	object next
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
	#	object s
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
	#	object top
	lw	$a0 12($s0)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label2
	la	$a0 bool_const0
label2:
	lw	$t1 12($a0)
	beqz	$t1 label3
	#	eval then_exp
	#	let class start
	#	eval let init
	#	no expr at 59
	move	$a0 $zero
	sw	$a0 0($fp)
	#	eval let body
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	object c
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

	#	dispatch_class start
	#	push actual
	#	object newNode
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object top
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label6
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label6:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	let class end 

	b	label4
label3:
	#	eval else_exp
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	object c
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object top
	lw	$a0 12($s0)
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

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

label4:
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
	#	object top
	lw	$a0 12($s0)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label8
	la	$a0 bool_const0
label8:
	lw	$t1 12($a0)
	beqz	$t1 label9
	#	eval then_exp
	#	object top
	lw	$a0 12($s0)
	b	label10
label9:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object top
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label11
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label11:
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
	beq	$t1 $t2 label12
	la	$a1 bool_const0
	jal	equality_test
label12:
	lw	$t1 12($a0)
	beqz	$t1 label13
	#	eval then_exp
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label15
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label15:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 44($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	b	label14
label13:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object top
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label16
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label16:
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
	beq	$t1 $t2 label17
	la	$a1 bool_const0
	jal	equality_test
label17:
	lw	$t1 12($a0)
	beqz	$t1 label18
	#	eval then_exp
	#	let class start
	#	eval let init
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object top
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label20
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label20:
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
	#	object n1
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label21
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label21:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 8($fp)
	#	eval let body
	#	let class start
	#	eval let init
	#	no expr at 81
	move	$a0 $zero
	la	$a0 int_const1
	sw	$a0 4($fp)
	#	eval let body
	#	let class start
	#	eval let init
	#	no expr at 82
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
	#	object n1
	lw	$a0 12($fp)
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

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object n2
	lw	$a0 8($fp)
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
	#	eval expr of expr.name
	#	new_class start
	la	$a0 A2I_protObj
	jal	Object.copy
	jal	A2I_init
	#	new_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label25
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label25:
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
	#	object sum
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
	bne	$a0 $zero label26
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label26:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 28($t1)
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
	bne	$a0 $zero label27
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label27:
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
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object n2
	lw	$a0 8($fp)
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

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object ret
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label29
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label29:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	assign_class start
	#	eval expr
	#	object ret
	lw	$a0 0($fp)
	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	#	let class end 

	#	let class end 

	#	let class end 

	#	let class end 

	b	label19
label18:
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
	bne	$a0 $zero label30
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label30:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

label19:
	#	cond_class end

label14:
	#	cond_class end

label10:
	#	cond_class end

	#	object top
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
	#	object top
	lw	$a0 12($s0)
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

	#	if obj = void jmp abort()
	bne	$a0 $zero label32
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label32:
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
	#	object top
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label33
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label33:
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
	#	object next
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label34
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label34:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object top
	lw	$a0 12($s0)
	#	if obj = void jmp abort()
	bne	$a0 $zero label35
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label35:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	#	object top
	lw	$a0 12($s0)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object next
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label36
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label36:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	#	object next
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
	#	object top
	lw	$a0 12($s0)
	sw	$a0 0($fp)
	#	eval let body
	#	lopp_class start
label37:
	#	eval loop pred
	#	object node
	lw	$a0 0($fp)
	move	$t1 $a0
	la	$a0 bool_const1
	beqz	$t1 label39
	la	$a0 bool_const0
label39:
	lw	$t1 12($a0)
	la	$a0 bool_const1
	beqz	$t1 label40
	la	$a0 bool_const0
label40:
	lw	$t1 12($a0)
	beqz	$t1 label38
	#	eval loop body
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object node
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label41
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label41:
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
	bne	$a0 $zero label42
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label42:
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
	bne	$a0 $zero label43
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label43:
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
	#	object node
	lw	$a0 0($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label44
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label44:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 0($fp)
	#	assign_class end

	b	label37
label38:
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
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const5
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label45
	la	$a1 bool_const0
	jal	equality_test
label45:
	lw	$t1 12($a0)
	beqz	$t1 label46
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label48
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label48:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jal	$t1
	#	dispatch_class end

	b	label47
label46:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const6
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label49
	la	$a1 bool_const0
	jal	equality_test
label49:
	lw	$t1 12($a0)
	beqz	$t1 label50
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
	bne	$a0 $zero label52
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label52:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label53
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label53:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jal	$t1
	#	dispatch_class end

	b	label51
label50:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const8
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label54
	la	$a1 bool_const0
	jal	equality_test
label54:
	lw	$t1 12($a0)
	beqz	$t1 label55
	#	eval then_exp
	#	assign_class start
	#	eval expr
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label57
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label57:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 40($t1)
	jal	$t1
	#	dispatch_class end

	#	store to object
	sw	$a0 12($s0)
	#	assign_class end

	b	label56
label55:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const1
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label58
	la	$a1 bool_const0
	jal	equality_test
label58:
	lw	$t1 12($a0)
	beqz	$t1 label59
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label61
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label61:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jal	$t1
	#	dispatch_class end

	b	label60
label59:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const9
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label62
	la	$a1 bool_const0
	jal	equality_test
label62:
	lw	$t1 12($a0)
	beqz	$t1 label63
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label65
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label65:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 48($t1)
	jal	$t1
	#	dispatch_class end

	b	label64
label63:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	object input
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label66
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label66:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 36($t1)
	jal	$t1
	#	dispatch_class end

label64:
	#	cond_class end

label60:
	#	cond_class end

label56:
	#	cond_class end

label51:
	#	cond_class end

label47:
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
	#	no expr at 157
	move	$a0 $zero
	la	$a0 str_const22
	sw	$a0 0($fp)
	#	eval let body
	#	lopp_class start
label67:
	#	eval loop pred
	la	$a0 bool_const1
	lw	$t1 12($a0)
	beqz	$t1 label68
	#	eval loop body
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
	bne	$a0 $zero label70
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label70:
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
	#	object input
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label71
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label71:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 52($t1)
	jal	$t1
	#	dispatch_class end

	b	label67
label68:
	move	$a0 $zero
	#	loop_class end

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
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const12
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label72
	la	$a1 bool_const0
	jal	equality_test
label72:
	lw	$t1 12($a0)
	beqz	$t1 label73
	#	eval then_exp
	la	$a0 int_const1
	b	label74
label73:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const13
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label75
	la	$a1 bool_const0
	jal	equality_test
label75:
	lw	$t1 12($a0)
	beqz	$t1 label76
	#	eval then_exp
	la	$a0 int_const0
	b	label77
label76:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const14
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label78
	la	$a1 bool_const0
	jal	equality_test
label78:
	lw	$t1 12($a0)
	beqz	$t1 label79
	#	eval then_exp
	la	$a0 int_const2
	b	label80
label79:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const15
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label81
	la	$a1 bool_const0
	jal	equality_test
label81:
	lw	$t1 12($a0)
	beqz	$t1 label82
	#	eval then_exp
	la	$a0 int_const3
	b	label83
label82:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const16
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label84
	la	$a1 bool_const0
	jal	equality_test
label84:
	lw	$t1 12($a0)
	beqz	$t1 label85
	#	eval then_exp
	la	$a0 int_const4
	b	label86
label85:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const17
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label87
	la	$a1 bool_const0
	jal	equality_test
label87:
	lw	$t1 12($a0)
	beqz	$t1 label88
	#	eval then_exp
	la	$a0 int_const5
	b	label89
label88:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const18
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label90
	la	$a1 bool_const0
	jal	equality_test
label90:
	lw	$t1 12($a0)
	beqz	$t1 label91
	#	eval then_exp
	la	$a0 int_const6
	b	label92
label91:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const19
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label93
	la	$a1 bool_const0
	jal	equality_test
label93:
	lw	$t1 12($a0)
	beqz	$t1 label94
	#	eval then_exp
	la	$a0 int_const7
	b	label95
label94:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const20
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label96
	la	$a1 bool_const0
	jal	equality_test
label96:
	lw	$t1 12($a0)
	beqz	$t1 label97
	#	eval then_exp
	la	$a0 int_const8
	b	label98
label97:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object char
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 str_const21
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label99
	la	$a1 bool_const0
	jal	equality_test
label99:
	lw	$t1 12($a0)
	beqz	$t1 label100
	#	eval then_exp
	la	$a0 int_const9
	b	label101
label100:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label102
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label102:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jal	$t1
	#	dispatch_class end

	la	$a0 int_const1
label101:
	#	cond_class end

label98:
	#	cond_class end

label95:
	#	cond_class end

label92:
	#	cond_class end

label89:
	#	cond_class end

label86:
	#	cond_class end

label83:
	#	cond_class end

label80:
	#	cond_class end

label77:
	#	cond_class end

label74:
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
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label103
	la	$a1 bool_const0
	jal	equality_test
label103:
	lw	$t1 12($a0)
	beqz	$t1 label104
	#	eval then_exp
	la	$a0 str_const12
	b	label105
label104:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label106
	la	$a1 bool_const0
	jal	equality_test
label106:
	lw	$t1 12($a0)
	beqz	$t1 label107
	#	eval then_exp
	la	$a0 str_const13
	b	label108
label107:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const2
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label109
	la	$a1 bool_const0
	jal	equality_test
label109:
	lw	$t1 12($a0)
	beqz	$t1 label110
	#	eval then_exp
	la	$a0 str_const14
	b	label111
label110:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const3
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label112
	la	$a1 bool_const0
	jal	equality_test
label112:
	lw	$t1 12($a0)
	beqz	$t1 label113
	#	eval then_exp
	la	$a0 str_const15
	b	label114
label113:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const4
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label115
	la	$a1 bool_const0
	jal	equality_test
label115:
	lw	$t1 12($a0)
	beqz	$t1 label116
	#	eval then_exp
	la	$a0 str_const16
	b	label117
label116:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const5
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label118
	la	$a1 bool_const0
	jal	equality_test
label118:
	lw	$t1 12($a0)
	beqz	$t1 label119
	#	eval then_exp
	la	$a0 str_const17
	b	label120
label119:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const6
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label121
	la	$a1 bool_const0
	jal	equality_test
label121:
	lw	$t1 12($a0)
	beqz	$t1 label122
	#	eval then_exp
	la	$a0 str_const18
	b	label123
label122:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const7
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label124
	la	$a1 bool_const0
	jal	equality_test
label124:
	lw	$t1 12($a0)
	beqz	$t1 label125
	#	eval then_exp
	la	$a0 str_const19
	b	label126
label125:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const8
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label127
	la	$a1 bool_const0
	jal	equality_test
label127:
	lw	$t1 12($a0)
	beqz	$t1 label128
	#	eval then_exp
	la	$a0 str_const20
	b	label129
label128:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const9
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label130
	la	$a1 bool_const0
	jal	equality_test
label130:
	lw	$t1 12($a0)
	beqz	$t1 label131
	#	eval then_exp
	la	$a0 str_const21
	b	label132
label131:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label133
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label133:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jal	$t1
	#	dispatch_class end

	la	$a0 str_const22
label132:
	#	cond_class end

label129:
	#	cond_class end

label126:
	#	cond_class end

label123:
	#	cond_class end

label120:
	#	cond_class end

label117:
	#	cond_class end

label114:
	#	cond_class end

label111:
	#	cond_class end

label108:
	#	cond_class end

label105:
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
	#	object s
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label134
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label134:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
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
	la	$a0 int_const1
	b	label137
label136:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object s
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label138
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label138:
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
	beq	$t1 $t2 label139
	la	$a1 bool_const0
	jal	equality_test
label139:
	lw	$t1 12($a0)
	beqz	$t1 label140
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object s
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
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	sub	$t1 $t2 $t1
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object s
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label143
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label143:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label144
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label144:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	jal	Object.copy
	lw	$t1 12($a0)
	neg	$t1 $t1
	sw	$t1 12($a0)
	b	label141
label140:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	#	dispatch_class start
	#	push actual
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object s
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label145
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label145:
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
	beq	$t1 $t2 label146
	la	$a1 bool_const0
	jal	equality_test
label146:
	lw	$t1 12($a0)
	beqz	$t1 label147
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object s
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label149
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label149:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	sub	$t1 $t2 $t1
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object s
	lw	$a0 12($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label150
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label150:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label151
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label151:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 24($t1)
	jal	$t1
	#	dispatch_class end

	b	label148
label147:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	object s
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
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

label148:
	#	cond_class end

label141:
	#	cond_class end

label137:
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
	la	$a0 int_const1
	sw	$a0 8($fp)
	#	eval let body
	#	let class start
	#	eval let init
	#	dispatch_class start
	#	push actual
	#	eval expr of expr.name
	#	object s
	lw	$a0 24($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label153
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label153:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 12($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 4($fp)
	#	eval let body
	#	let class start
	#	eval let init
	la	$a0 int_const1
	sw	$a0 0($fp)
	#	eval let body
	#	lopp_class start
label154:
	#	eval loop pred
	#	object i
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	object j
	lw	$a0 4($fp)
	lw	$t1 4($sp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp 4
	la	$a0 bool_const1
	blt	$t1 $t2 label156
	la	$a0 bool_const0
label156:
	lw	$t1 12($a0)
	beqz	$t1 label155
	#	eval loop body
	#	assign_class start
	#	eval expr
	#	object int
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
	#	object i
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object s
	lw	$a0 24($fp)
	#	if obj = void jmp abort()
	bne	$a0 $zero label157
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label157:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 20($t1)
	jal	$t1
	#	dispatch_class end

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label158
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label158:
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
	#	object i
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
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

	b	label154
label155:
	move	$a0 $zero
	#	loop_class end

	#	let class end 

	#	let class end 

	#	object int
	lw	$a0 8($fp)
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
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label159
	la	$a1 bool_const0
	jal	equality_test
label159:
	lw	$t1 12($a0)
	beqz	$t1 label160
	#	eval then_exp
	la	$a0 str_const12
	b	label161
label160:
	#	eval else_exp
	#	cond_class start
	#	eval pred
	la	$a0 int_const1
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	object i
	lw	$a0 12($fp)
	lw	$t1 4($sp)
	lw	$t2 12($a0)
	lw	$t1 12($t1)
	addiu	$sp $sp 4
	la	$a0 bool_const1
	blt	$t1 $t2 label162
	la	$a0 bool_const0
label162:
	lw	$t1 12($a0)
	beqz	$t1 label163
	#	eval then_exp
	#	dispatch_class start
	#	push actual
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label165
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label165:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jal	$t1
	#	dispatch_class end

	b	label164
label163:
	#	eval else_exp
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	object i
	lw	$a0 12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const0
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
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label166
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label166:
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
	bne	$a0 $zero label167
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label167:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

label164:
	#	cond_class end

label161:
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
	#	object i
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label168
	la	$a1 bool_const0
	jal	equality_test
label168:
	lw	$t1 12($a0)
	beqz	$t1 label169
	#	eval then_exp
	la	$a0 str_const22
	b	label170
label169:
	#	eval else_exp
	#	let class start
	#	eval let init
	#	object i
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const10
	jal	Object.copy
	lw	$t2 4($sp)
	lw	$t1 12($a0)
	lw	$t2 12($t2)
	div	$t1 $t2 $t1
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($fp)
	#	eval let body
	#	dispatch_class start
	#	push actual
	#	dispatch_class start
	#	push actual
	#	object i
	lw	$a0 16($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	object next
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
	sub	$t1 $t2 $t1
	sw	$t1 12($a0)
	addiu	$sp $sp 4
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label171
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label171:
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
	#	object next
	lw	$a0 0($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	#	eval expr of expr.name
	#	object self
	move	$a0 $s0
	#	if obj = void jmp abort()
	bne	$a0 $zero label172
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label172:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 32($t1)
	jal	$t1
	#	dispatch_class end

	#	if obj = void jmp abort()
	bne	$a0 $zero label173
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label173:
	#	else load disp and jump
	lw	$t1 8($a0)
	lw	$t1 16($t1)
	jal	$t1
	#	dispatch_class end

	#	let class end 

label170:
	#	cond_class end

	lw	$fp 16($sp)
	lw	$s0 12($sp)
	lw	$ra 8($sp)
	addiu	$sp $sp 20
	jr	$ra	
