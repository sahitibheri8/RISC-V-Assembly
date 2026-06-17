.section .text
.global main

main:
	# Write code here to jump to supervisor mode 

supervisor: 
################ Initialize your page tables here ################

####################################################################

	# Prepare a jump to user mode


################ DO NOT MODIFY THESE INSTRUCTIONS ################
	la t1, satp_config # load satp val
	ld t2, 0(t1)
	sfence.vma zero, zero
	csrrw zero, satp, t2
	sfence.vma zero, zero

	li t4, 0
	csrrw zero, sepc, t4
	sret
#################################################################### 

user_code:
# Write user code here that does the following:
    # 1. Initialize four variables var1 , var2 , var3 , var4 in the data section with values 1 , 2 , 3 , 4.
    # 2. The user_code must load these variables into t1 , t2 , t3 , t4 registers (for reading during debug mode) and then loop back to itself.
# Don't forget to align the data section and user_code propely. For assembly directive usage, use the last reference given.



.section .data 


satp_config: .dword  
# Set appropriate value for satp here.

