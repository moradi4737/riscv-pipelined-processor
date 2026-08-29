# REMEMBER TO INITIALIZE ALL TO ZERO IN MODELSIM SIMULATION!

# CONVENTION:: At the first of a function, we always store any
# register we want to use in stack, either "s" register or "t"
# register! We also store "ra" in stack. If we want to call a
# function inside it, we must first stack our own's inputs,
# the callers inputs, ito the stack, than freeely overwrite
# the input registers by the inputs to the calle, then "jal"
# to the callee, which fetches its inputs from the registers
# not from the stack, then gets back the the caller which
# reads it's own inputs from the stack, freeing it up!

################################ main #####################################
# arr = x10

ori     x2, x0, 1000     # sp (full descending)
nop
nop
nop

                        # arr base address
                        ori     x10, x0, 100      # arr = 0x64
nop
nop
nop
                        or      x30, x10, x0      # x30 = arr
nop
nop
nop

                        # word 0: offset 0
                        ori     x31, x0, 0x3A
nop
nop
nop
                        sw      x31, 0(x30)
nop
nop
nop

                        # word 1: offset 4
                        ori     x31, x0, 0x17
nop
nop
nop
                        sw      x31, 4(x30)
nop
nop
nop

                        # word 2: offset 8
                        ori     x31, x0, 0x9C
nop
nop
nop
                        sw      x31, 8(x30)
nop
nop
nop

                        # word 3: offset 12
                        ori     x31, x0, 0x05
nop
nop
nop
                        sw      x31, 12(x30)
nop
nop
nop

                        # word 4: offset 16
                        ori     x31, x0, 0xF2
nop
nop
nop
                        sw      x31, 16(x30)
nop
nop
nop

                        # word 5: offset 20
                        ori     x31, x0, 0x6D
nop
nop
nop
                        sw      x31, 20(x30)
nop
nop
nop

                        # word 6: offset 24
                        ori     x31, x0, 0x81
nop
nop
nop
                        sw      x31, 24(x30)
nop
nop
nop

                        # word 7: offset 28
                        ori     x31, x0, 0x2B
nop
nop
nop
                        sw      x31, 28(x30)
nop
nop
nop

                        # word 8: offset 32
                        ori     x31, x0, 0xC7
nop
nop
nop
                        sw      x31, 32(x30)
nop
nop
nop

                        # word 9: offset 36
                        ori     x31, x0, 0x4E
nop
nop
nop
                        sw      x31, 36(x30)
nop
nop
nop

                        # word 10: offset 40
                        ori     x31, x0, 0x10
nop
nop
nop
                        sw      x31, 40(x30)
nop
nop
nop

                        # word 11: offset 44
                        ori     x31, x0, 0xB3
nop
nop
nop
                        sw      x31, 44(x30)
nop
nop
nop

                        # word 12: offset 48
                        ori     x31, x0, 0x59
nop
nop
nop
                        sw      x31, 48(x30)
nop
nop
nop

                        # word 13: offset 52
                        ori     x31, x0, 0xA4
nop
nop
nop
                        sw      x31, 52(x30)
nop
nop
nop

                        # word 14: offset 56
                        ori     x31, x0, 0xD8
nop
nop
nop
                        sw      x31, 56(x30)
nop
nop
nop

                        # word 15: offset 60
                        ori     x31, x0, 0x23
nop
nop
nop
                        sw      x31, 60(x30)
nop
nop
nop

                        # word 16: offset 64
                        ori     x31, x0, 0x7F
nop
nop
nop
                        sw      x31, 64(x30)
nop
nop
nop

                        # word 17: offset 68
                        ori     x31, x0, 0x01
nop
nop
nop
                        sw      x31, 68(x30)
nop
nop
nop

                        # word 18: offset 72
                        ori     x31, x0, 0xE5
nop
nop
nop
                        sw      x31, 72(x30)
nop
nop
nop

                        # word 19: offset 76
                        ori     x31, x0, 0x33
nop
nop
nop
                        sw      x31, 76(x30)
nop
nop
nop

                        # word 20: offset 80
                        ori     x31, x0, 0x48
nop
nop
nop
                        sw      x31, 80(x30)
nop
nop
nop

                        # word 21: offset 84
                        ori     x31, x0, 0x92
nop
nop
nop
                        sw      x31, 84(x30)
nop
nop
nop

                        # word 22: offset 88
                        ori     x31, x0, 0xBC
nop
nop
nop
                        sw      x31, 88(x30)
nop
nop
nop

                        # word 23: offset 92
                        ori     x31, x0, 0x6A
nop
nop
nop
                        sw      x31, 92(x30)
nop
nop
nop

                        # word 24: offset 96
                        ori     x31, x0, 0x0F
nop
nop
nop
                        sw      x31, 96(x30)
nop
nop
nop

                        # word 25: offset 100
                        ori     x31, x0, 0xDD
nop
nop
nop
                        sw      x31, 100(x30)
nop
nop
nop

                        # word 26: offset 104
                        ori     x31, x0, 0x71
nop
nop
nop
                        sw      x31, 104(x30)
nop
nop
nop

                        # word 27: offset 108
                        ori     x31, x0, 0x2E
nop
nop
nop
                        sw      x31, 108(x30)
nop
nop
nop

                        # word 28: offset 112
                        ori     x31, x0, 0x53
nop
nop
nop
                        sw      x31, 112(x30)
nop
nop
nop

                        # word 29: offset 116
                        ori     x31, x0, 0xAF
nop
nop
nop
                        sw      x31, 116(x30)
nop
nop
nop

                        # word 30: offset 120
                        ori     x31, x0, 0x64
nop
nop
nop
                        sw      x31, 120(x30)
nop
nop
nop

                        # word 31: offset 124
                        ori     x31, x0, 0x18
nop
nop
nop
                        sw      x31, 124(x30)
nop
nop
nop

                        # word 32: offset 128
                        ori     x31, x0, 0x8C
nop
nop
nop
                        sw      x31, 128(x30)
nop
nop
nop

                        # word 33: offset 132
                        ori     x31, x0, 0x39
nop
nop
nop
                        sw      x31, 132(x30)
nop
nop
nop

                        # word 34: offset 136
                        ori     x31, x0, 0xCB
nop
nop
nop
                        sw      x31, 136(x30)
nop
nop
nop

                        # word 35: offset 140
                        ori     x31, x0, 0x04
nop
nop
nop
                        sw      x31, 140(x30)
nop
nop
nop

                        # word 36: offset 144
                        ori     x31, x0, 0x5E
nop
nop
nop
                        sw      x31, 144(x30)
nop
nop
nop

                        # word 37: offset 148
                        ori     x31, x0, 0xA9
nop
nop
nop
                        sw      x31, 148(x30)
nop
nop
nop

                        # word 38: offset 152
                        ori     x31, x0, 0xD1
nop
nop
nop
                        sw      x31, 152(x30)
nop
nop
nop

                        # word 39: offset 156
                        ori     x31, x0, 0x27
nop
nop
nop
                        sw      x31, 156(x30)
nop
nop
nop

                        # word 40: offset 160
                        ori     x31, x0, 0x6F
nop
nop
nop
                        sw      x31, 160(x30)
nop
nop
nop

                        # word 41: offset 164
                        ori     x31, x0, 0x14
nop
nop
nop
                        sw      x31, 164(x30)
nop
nop
nop

                        # word 42: offset 168
                        ori     x31, x0, 0x99
nop
nop
nop
                        sw      x31, 168(x30)
nop
nop
nop

                        # word 43: offset 172
                        ori     x31, x0, 0x3D
nop
nop
nop
                        sw      x31, 172(x30)
nop
nop
nop

                        # word 44: offset 176
                        ori     x31, x0, 0x52
nop
nop
nop
                        sw      x31, 176(x30)
nop
nop
nop

                        # word 45: offset 180
                        ori     x31, x0, 0xC2
nop
nop
nop
                        sw      x31, 180(x30)
nop
nop
nop

                        # word 46: offset 184
                        ori     x31, x0, 0x7A
nop
nop
nop
                        sw      x31, 184(x30)
nop
nop
nop

                        # word 47: offset 188
                        ori     x31, x0, 0x0A
nop
nop
nop
                        sw      x31, 188(x30)
nop
nop
nop

                        # word 48: offset 192
                        ori     x31, x0, 0xEF
nop
nop
nop
                        sw      x31, 192(x30)
nop
nop
nop

                        # word 49: offset 196
                        ori     x31, x0, 0x68
nop
nop
nop
                        sw      x31, 196(x30)
nop
nop
nop




addi x5,  x0, -1      # x5  = 0xFFFFFFFF
nop
nop
nop
addi x6,  x0, -1      # x6  = 0xFFFFFFFF
nop
nop
nop
addi x7,  x0, -1      # x7  = 0xFFFFFFFF
nop
nop
nop
addi x8,  x0, -1      # x8  = 0xFFFFFFFF
nop
nop
nop
addi x9,  x0, -1      # x9  = 0xFFFFFFFF
nop
nop
nop

addi x18, x0, -1      # x18 = 0xFFFFFFFF
nop
nop
nop
addi x19, x0, -1      # x19 = 0xFFFFFFFF
nop
nop
nop
addi x20, x0, -1      # x20 = 0xFFFFFFFF
nop
nop
nop
addi x30, x0, -1      # x30 = 0xFFFFFFFF
nop
nop
nop
addi x31, x0, -1      # x31 = 0xFFFFFFFF
nop
nop
nop


# call the "merge_sort" function, with the following inputs:
ori     x10, x0, 100    # arr = x10
nop
nop
nop
ori     x11, x0, 0      # left = x11
nop
nop
nop
ori     x12, x0, 49      # right = x12
nop
nop
nop
ori     x13, x0, 50      # arr_size = x13
nop
nop
nop
jal     x1, merge_sort
nop
nop
nop

jal     x0, finish
nop
nop
nop
################################ main  finish #####################################


################################ merge function #####################################
# inputs: 
# arr = x10
# left = x11
# mid = x12
# right = x13
# arr_size = x14
# temps:
# (mid + 1) << 2 = x5
# (right + 1) << 2 = x6
# i = x7
# j = x8
# k = x9
# arr2 = x18
# [arr + i] = x19
# [arr + j] = x20
# x30
# x31
merge:
    # stack the used registers (prologue):    
    addi    x2, x2, -44     # lower the stack for 11 words
nop
nop
nop
    sw      x1, 0(x2)       # store ra in stack
nop
nop
nop
    sw      x5, 4(x2)
nop
nop
nop
    sw      x6, 8(x2)
nop
nop
nop
    sw      x7, 12(x2)
nop
nop
nop
    sw      x8, 16(x2)
nop
nop
nop
    sw      x9, 20(x2)
nop
nop
nop
    sw      x18, 24(x2)
nop
nop
nop
    sw      x19, 28(x2)
nop
nop
nop
    sw      x20, 32(x2)
nop
nop
nop
    sw      x30, 36(x2)
nop
nop
nop
    sw      x31, 40(x2)
nop
nop
nop

    # arr2 = arr + [(arr_size) << 2]
    slli    x31, x14, 2     # x31 = x14 << 2
nop
nop
nop
    add     x18, x10, x31   # x18 = x10 + x31
nop
nop
nop
    
    # x5 = (mid + 1) << 2;
    addi    x5, x12, 1      # x5 = x12 + 1
nop
nop
nop
    slli    x5, x5, 2       # x5 = x5 << 2
nop
nop
nop

    # x6 = (right + 1) << 2;
    addi    x6, x13, 1      # x6 = x13 + 1
nop
nop
nop
    slli    x6, x6, 2       # x6 = x6 << 2
nop
nop
nop

    # i = left << 2;
    # for ( i = (left << 2) ; i < [(right + 1) << 2] ; i+=4)
    #     [arr2 + i] = [arr + i]
    slli    x7, x11, 2
nop
nop
nop
    move_loop:
        # branch if (left + i == [(right + 1) << 2])
        beq   x7, x6, done_move_loop
nop
nop
nop
        # [arr + i]:
        add   x30, x10, x7       # x30 = arr + i
nop
nop
nop
        lw    x31, 0(x30)        # x31 = [arr + i]
nop
nop
nop
        # [arr2 + i] = [arr + i];
        add   x30, x18, x7       # x30 = arr2 + i
nop
nop
nop
        sw    x31, 0(x30)        # [arr2 + i] = x31
nop
nop
nop
        # i += 4;
        addi  x7, x7, 4          # x7 = x7 + 4
nop
nop
nop
        jal   x0, move_loop
nop
nop
nop
    done_move_loop:

    
    # int i = left << 2;
    or      x7, x0, x11     # x7 = x11
nop
nop
nop
    slli    x7, x7, 2       # x7 = x7 << 2
nop
nop
nop
    # int j = (mid + 1) << 2;
    or      x8, x0, x12     # x8 = x12
nop
nop
nop
    addi    x8, x8, 1       # x8 = x8 + 1
nop
nop
nop
    slli    x8, x8, 2       # x8 = x8 << 2
nop
nop
nop
    # int k = left << 2;
    or      x9, x0, x11     # x9 = x11
nop
nop
nop
    slli    x9, x9, 2       # x9 = x9 << 2
nop
nop
nop

    loop1:
        # L[i]:
        add     x31, x18, x7    # x31 = arr2 + i
nop
nop
nop
        lw      x19, 0(x31)     # x19 = [x31]
nop
nop
nop
        # R[j]:
        add     x31, x18, x8    # x31 = arr2 + j
nop
nop
nop
        lw      x20, 0(x31)     # x20 = [x31]
nop
nop
nop
        # branch to "done_loop1", if ( [ i < ((mid + 1)<<2) ] && [ j < ((right + 1)<<2) ] ) is not true
        slt     x31, x7, x5     # x31 = x7 < x5
nop
nop
nop
        slt     x30, x8, x6     # x30 = x8 < x6
nop
nop
nop
        and     x31, x30, x31   # x31 = x30 & x31
nop
nop
nop
        beq     x31, x0, done_loop1 # branch to "done_loop1", if x31==0
nop
nop
nop
        add     x31, x10, x9    # x31 = arr + k
nop
nop
nop
        # branch to "choose_right", if ( L[i] < R[j] ) is not true
        slt     x30, x19, x20   # x30 = x19 < x20
nop
nop
nop
        beq     x30, x0, choose_right
nop
nop
nop
            # arr [k] = L[i];
            sw      x19, 0(x31)
nop
nop
nop
            # i = i + 4;
            addi    x7, x7, 4
nop
nop
nop
            jal     x0, done
nop
nop
nop
        choose_right:
            # arr [k] = R[j];
            sw      x20, 0(x31)
nop
nop
nop
            # j = j + 4;
            addi    x8, x8, 4
nop
nop
nop
        done:
        # k = k + 4;
        addi    x9, x9, 4
nop
nop
nop
        jal     x0, loop1
nop
nop
nop
    done_loop1:

        ########################################
        # First loop:
        # while (i < x5) { 
        #     [arr+k] = [arr2+i];
        #     i += 4;
        #     k += 4;
        #     }
        ########################################
    loop_L:
        # branch if (i >= x5), and stay if (i < x5)
        slt   x30, x7, x5        # x30 = (x7 < x5) ? 1 : 0
nop
nop
nop
        beq   x30, x0, done_L    # if (x30 == 0) ? i >= x5 ? exit loop
nop
nop
nop
        # x31 = [arr2 + i]
        add   x30, x18, x7       # x30 = x18 + x7
nop
nop
nop
        lw    x31, 0(x30)        # x31 = [x30]
nop
nop
nop
        # [arr + k] = x31
        add   x30, x10, x9       # x30 = x10 + x9
nop
nop
nop
        sw    x31, 0(x30)        # [x30] = x31
nop
nop
nop
        # i += 4;
        addi  x7, x7, 4          # x7 = x7 + 4
nop
nop
nop
        # k += 4;
        addi  x9, x9, 4          # x9 = x9 + 4
nop
nop
nop

        # jump back to start of loop
        jal   x0, loop_L
nop
nop
nop

    done_L:

        ########################################
        # Second loop:
        # while (j < x6) { 
        #     [arr+k] = [arr2+j];
        #     j += 4;
        #     k += 4;
        #     }
        ########################################
    loop_R:
        # branch if (j >= x6), and stay if (j < x6)
        slt   x30, x8, x6        # x30 = (j < x6) ? 1 : 0
nop
nop
nop
        beq   x30, x0, done_R    # if (x30 == 0) ? j >= x6 ? exit loop
nop
nop
nop
        # x31 = [arr2 + j]
        add   x30, x18, x8       # x30 = x18 + x8
nop
nop
nop
        lw    x31, 0(x30)        # x31 = [x30]
nop
nop
nop
        # [arr + k] = x31
        add   x30, x10, x9       # x30 = x10 + x9
nop
nop
nop
        sw    x31, 0(x30)        # [x30] = x31
nop
nop
nop
        # j += 4;
        addi  x8, x8, 4          # x8 = x8 + 4
nop
nop
nop
        # k += 4;
        addi  x9, x9, 4          # x9 = x9 + 4
nop
nop
nop
        # jump back to start of loop
        jal   x0, loop_R
nop
nop
nop

    done_R:

    # remove the used registers from stack (epilogue):
    lw      x1, 0(x2)       # store ra in stack
nop
nop
nop
    lw      x5, 4(x2)
nop
nop
nop
    lw      x6, 8(x2)
nop
nop
nop
    lw      x7, 12(x2)
nop
nop
nop
    lw      x8, 16(x2)
nop
nop
nop
    lw      x9, 20(x2)
nop
nop
nop
    lw      x18, 24(x2)
nop
nop
nop
    lw      x19, 28(x2)
nop
nop
nop
    lw      x20, 32(x2)
nop
nop
nop
    lw      x30, 36(x2)
nop
nop
nop
    lw      x31, 40(x2)
nop
nop
nop
    addi    x2, x2, 44     # get the stack back to its first state
nop
nop
nop

    jalr x0, x1, 0
nop
nop
nop
################################ merge function finished #####################################


################################ merge_sort function #####################################
# inputs:
# arr = x10
# left = x11
# right = x12
# arr_size = x13
# temps:
# mid = x5
merge_sort:
    # stack the used registers (prologue):    
    addi    x2, x2, -20     # lower the stack for 5 words
nop
nop
nop
    sw      x1, 0(x2)       # store ra in stack
nop
nop
nop
    sw      x5, 4(x2)
nop
nop
nop
    sw      x14, 8(x2)
nop
nop
nop
    sw      x30, 12(x2)
nop
nop
nop
    sw      x31, 16(x2)
nop
nop
nop

    
    # branch to end_merge_sort << if (left >= right) return; >>
    slt     x31, x11, x12               # x31 = (left < right) ? 1 : 0
nop
nop
nop
    beq     x31, x0, end_merge_sort     # if NOT (left < right) ? left >= right ? branch
nop
nop
nop
    # << int mid = left + (right - left) / 2; >>
    sub     x30, x12, x11    # x30 = right - left
nop
nop
nop
    # srai    x31, x30, 1      # x30 = (right - left) / 2   (arithmetic shift right by 1)
    addi  x31, x0, 0        # x31 = half = 0
nop
nop
nop
    addi  x5,  x0, 2        # x5 = constant 2
nop
nop
nop

divide_loop:
    slt   x7, x30, x5       # x7 = 1 if diff < 2
nop
nop
nop
    beq   x7, x0, do_step   # if diff >= 2 continue
nop
nop
nop
    jal   x0, finish_div    # else exit loop
nop
nop
nop

do_step:
    addi  x30, x30, -2      # diff -= 2
nop
nop
nop
    addi  x31, x31, 1       # half++
nop
nop
nop
    jal   x0, divide_loop
nop
nop
nop

finish_div:
    add     x5,  x11, x31    # x5  = left + (right - left)/2  => mid
nop
nop
nop


    # << mergeSort(arr, left, mid); >>
    # stack caller inputs:
    addi    x2, x2, -16
nop
nop
nop
    sw      x10, 0(x2)
nop
nop
nop
    sw      x11, 4(x2)
nop
nop
nop
    sw      x12, 8(x2)
nop
nop
nop
    sw      x13, 12(x2)
nop
nop
nop
    # call the "merge_sort" function:
    or      x12, x5, x0
nop
nop
nop
    jal     x1, merge_sort
nop
nop
nop
    # unstack caller inputs:
    lw      x10, 0(x2)
nop
nop
nop
    lw      x11, 4(x2)
nop
nop
nop
    lw      x12, 8(x2)
nop
nop
nop
    lw      x13, 12(x2)
nop
nop
nop
    addi    x2, x2, 16
nop
nop
nop

    # << mergeSort(arr, mid + 1, right); >>
    # stack caller inputs:
    addi    x2, x2, -16
nop
nop
nop
    sw      x10, 0(x2)
nop
nop
nop
    sw      x11, 4(x2)
nop
nop
nop
    sw      x12, 8(x2)
nop
nop
nop
    sw      x13, 12(x2)
nop
nop
nop
    # call the "merge_sort" function:
    addi    x11, x5, 1
nop
nop
nop
    jal     x1, merge_sort
nop
nop
nop
    # unstack caller inputs:
    lw      x10, 0(x2)
nop
nop
nop
    lw      x11, 4(x2)
nop
nop
nop
    lw      x12, 8(x2)
nop
nop
nop
    lw      x13, 12(x2)
nop
nop
nop
    addi    x2, x2, 16
nop
nop
nop




    # << merge(arr, left, mid, right); >>
    # stack caller inputs:
    addi    x2, x2, -16
nop
nop
nop
    sw      x10, 0(x2)
nop
nop
nop
    sw      x11, 4(x2)
nop
nop
nop
    sw      x12, 8(x2)
nop
nop
nop
    sw      x13, 12(x2)
nop
nop
nop
    # call the "merge" function:
    or      x14, x0, x13    # arr_size = x14
nop
nop
nop
    or      x13, x0, x12    # right = x13
nop
nop
nop
    or      x12, x0, x5     # mid = x12
nop
nop
nop
    jal     x1, merge
nop
nop
nop
    # unstack caller inputs:
    lw      x10, 0(x2)
nop
nop
nop
    lw      x11, 4(x2)
nop
nop
nop
    lw      x12, 8(x2)
nop
nop
nop
    lw      x13, 12(x2)
nop
nop
nop
    addi    x2, x2, 16
nop
nop
nop


    
    end_merge_sort:

    # remove the used registers from stack (epilogue):
    lw      x1, 0(x2)       # store ra in stack
nop
nop
nop
    lw      x5, 4(x2)
nop
nop
nop
    lw      x14, 8(x2)
nop
nop
nop
    lw      x30, 12(x2)
nop
nop
nop
    lw      x31, 16(x2)
nop
nop
nop
    addi    x2, x2, 20     # get the stack back to its first state
nop
nop
nop

    jalr x0, x1, 0
nop
nop
nop
################################ merge_sort function finished #####################################

    finish: