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

                        # arr base address
                        ori     x10, x0, 100      # arr = 0x64
                        or      x30, x10, x0      # x30 = arr

                        # word 0: offset 0
                        ori     x31, x0, 0x3A
                        sw      x31, 0(x30)

                        # word 1: offset 4
                        ori     x31, x0, 0x17
                        sw      x31, 4(x30)

                        # word 2: offset 8
                        ori     x31, x0, 0x9C
                        sw      x31, 8(x30)

                        # word 3: offset 12
                        ori     x31, x0, 0x05
                        sw      x31, 12(x30)

                        # word 4: offset 16
                        ori     x31, x0, 0xF2
                        sw      x31, 16(x30)

                        # word 5: offset 20
                        ori     x31, x0, 0x6D
                        sw      x31, 20(x30)

                        # word 6: offset 24
                        ori     x31, x0, 0x81
                        sw      x31, 24(x30)

                        # word 7: offset 28
                        ori     x31, x0, 0x2B
                        sw      x31, 28(x30)

                        # word 8: offset 32
                        ori     x31, x0, 0xC7
                        sw      x31, 32(x30)

                        # word 9: offset 36
                        ori     x31, x0, 0x4E
                        sw      x31, 36(x30)

                        # word 10: offset 40
                        ori     x31, x0, 0x10
                        sw      x31, 40(x30)

                        # word 11: offset 44
                        ori     x31, x0, 0xB3
                        sw      x31, 44(x30)

                        # word 12: offset 48
                        ori     x31, x0, 0x59
                        sw      x31, 48(x30)

                        # word 13: offset 52
                        ori     x31, x0, 0xA4
                        sw      x31, 52(x30)

                        # word 14: offset 56
                        ori     x31, x0, 0xD8
                        sw      x31, 56(x30)

                        # word 15: offset 60
                        ori     x31, x0, 0x23
                        sw      x31, 60(x30)

                        # word 16: offset 64
                        ori     x31, x0, 0x7F
                        sw      x31, 64(x30)

                        # word 17: offset 68
                        ori     x31, x0, 0x01
                        sw      x31, 68(x30)

                        # word 18: offset 72
                        ori     x31, x0, 0xE5
                        sw      x31, 72(x30)

                        # word 19: offset 76
                        ori     x31, x0, 0x33
                        sw      x31, 76(x30)

                        # word 20: offset 80
                        ori     x31, x0, 0x48
                        sw      x31, 80(x30)

                        # word 21: offset 84
                        ori     x31, x0, 0x92
                        sw      x31, 84(x30)

                        # word 22: offset 88
                        ori     x31, x0, 0xBC
                        sw      x31, 88(x30)

                        # word 23: offset 92
                        ori     x31, x0, 0x6A
                        sw      x31, 92(x30)

                        # word 24: offset 96
                        ori     x31, x0, 0x0F
                        sw      x31, 96(x30)

                        # word 25: offset 100
                        ori     x31, x0, 0xDD
                        sw      x31, 100(x30)

                        # word 26: offset 104
                        ori     x31, x0, 0x71
                        sw      x31, 104(x30)

                        # word 27: offset 108
                        ori     x31, x0, 0x2E
                        sw      x31, 108(x30)

                        # word 28: offset 112
                        ori     x31, x0, 0x53
                        sw      x31, 112(x30)

                        # word 29: offset 116
                        ori     x31, x0, 0xAF
                        sw      x31, 116(x30)

                        # word 30: offset 120
                        ori     x31, x0, 0x64
                        sw      x31, 120(x30)

                        # word 31: offset 124
                        ori     x31, x0, 0x18
                        sw      x31, 124(x30)

                        # word 32: offset 128
                        ori     x31, x0, 0x8C
                        sw      x31, 128(x30)

                        # word 33: offset 132
                        ori     x31, x0, 0x39
                        sw      x31, 132(x30)

                        # word 34: offset 136
                        ori     x31, x0, 0xCB
                        sw      x31, 136(x30)

                        # word 35: offset 140
                        ori     x31, x0, 0x04
                        sw      x31, 140(x30)

                        # word 36: offset 144
                        ori     x31, x0, 0x5E
                        sw      x31, 144(x30)

                        # word 37: offset 148
                        ori     x31, x0, 0xA9
                        sw      x31, 148(x30)

                        # word 38: offset 152
                        ori     x31, x0, 0xD1
                        sw      x31, 152(x30)

                        # word 39: offset 156
                        ori     x31, x0, 0x27
                        sw      x31, 156(x30)

                        # word 40: offset 160
                        ori     x31, x0, 0x6F
                        sw      x31, 160(x30)

                        # word 41: offset 164
                        ori     x31, x0, 0x14
                        sw      x31, 164(x30)

                        # word 42: offset 168
                        ori     x31, x0, 0x99
                        sw      x31, 168(x30)

                        # word 43: offset 172
                        ori     x31, x0, 0x3D
                        sw      x31, 172(x30)

                        # word 44: offset 176
                        ori     x31, x0, 0x52
                        sw      x31, 176(x30)

                        # word 45: offset 180
                        ori     x31, x0, 0xC2
                        sw      x31, 180(x30)

                        # word 46: offset 184
                        ori     x31, x0, 0x7A
                        sw      x31, 184(x30)

                        # word 47: offset 188
                        ori     x31, x0, 0x0A
                        sw      x31, 188(x30)

                        # word 48: offset 192
                        ori     x31, x0, 0xEF
                        sw      x31, 192(x30)

                        # word 49: offset 196
                        ori     x31, x0, 0x68
                        sw      x31, 196(x30)




addi x5,  x0, -1      # x5  = 0xFFFFFFFF
addi x6,  x0, -1      # x6  = 0xFFFFFFFF
addi x7,  x0, -1      # x7  = 0xFFFFFFFF
addi x8,  x0, -1      # x8  = 0xFFFFFFFF
addi x9,  x0, -1      # x9  = 0xFFFFFFFF

addi x18, x0, -1      # x18 = 0xFFFFFFFF
addi x19, x0, -1      # x19 = 0xFFFFFFFF
addi x20, x0, -1      # x20 = 0xFFFFFFFF
addi x30, x0, -1      # x30 = 0xFFFFFFFF
addi x31, x0, -1      # x31 = 0xFFFFFFFF


# call the "merge_sort" function, with the following inputs:
ori     x10, x0, 100    # arr = x10
ori     x11, x0, 0      # left = x11
ori     x12, x0, 49      # right = x12
ori     x13, x0, 50      # arr_size = x13
jal     x1, merge_sort

jal     x0, finish
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
    sw      x1, 0(x2)       # store ra in stack
    sw      x5, 4(x2)
    sw      x6, 8(x2)
    sw      x7, 12(x2)
    sw      x8, 16(x2)
    sw      x9, 20(x2)
    sw      x18, 24(x2)
    sw      x19, 28(x2)
    sw      x20, 32(x2)
    sw      x30, 36(x2)
    sw      x31, 40(x2)

    # arr2 = arr + [(arr_size) << 2]
    slli    x31, x14, 2     # x31 = x14 << 2
    add     x18, x10, x31   # x18 = x10 + x31
    
    # x5 = (mid + 1) << 2;
    addi    x5, x12, 1      # x5 = x12 + 1
    slli    x5, x5, 2       # x5 = x5 << 2

    # x6 = (right + 1) << 2;
    addi    x6, x13, 1      # x6 = x13 + 1
    slli    x6, x6, 2       # x6 = x6 << 2

    # i = left << 2;
    # for ( i = (left << 2) ; i < [(right + 1) << 2] ; i+=4)
    #     [arr2 + i] = [arr + i]
    slli    x7, x11, 2
    move_loop:
        # branch if (left + i == [(right + 1) << 2])
        beq   x7, x6, done_move_loop
        # [arr + i]:
        add   x30, x10, x7       # x30 = arr + i
        lw    x31, 0(x30)        # x31 = [arr + i]
        # [arr2 + i] = [arr + i];
        add   x30, x18, x7       # x30 = arr2 + i
        sw    x31, 0(x30)        # [arr2 + i] = x31
        # i += 4;
        addi  x7, x7, 4          # x7 = x7 + 4
        jal   x0, move_loop
    done_move_loop:

    
    # int i = left << 2;
    or      x7, x0, x11     # x7 = x11
    slli    x7, x7, 2       # x7 = x7 << 2
    # int j = (mid + 1) << 2;
    or      x8, x0, x12     # x8 = x12
    addi    x8, x8, 1       # x8 = x8 + 1
    slli    x8, x8, 2       # x8 = x8 << 2
    # int k = left << 2;
    or      x9, x0, x11     # x9 = x11
    slli    x9, x9, 2       # x9 = x9 << 2

    loop1:
        # L[i]:
        add     x31, x18, x7    # x31 = arr2 + i
        lw      x19, 0(x31)     # x19 = [x31]
        # R[j]:
        add     x31, x18, x8    # x31 = arr2 + j
        lw      x20, 0(x31)     # x20 = [x31]
        # branch to "done_loop1", if ( [ i < ((mid + 1)<<2) ] && [ j < ((right + 1)<<2) ] ) is not true
        slt     x31, x7, x5     # x31 = x7 < x5
        slt     x30, x8, x6     # x30 = x8 < x6
        and     x31, x30, x31   # x31 = x30 & x31
        beq     x31, x0, done_loop1 # branch to "done_loop1", if x31==0
        add     x31, x10, x9    # x31 = arr + k
        # branch to "choose_right", if ( L[i] < R[j] ) is not true
        slt     x30, x19, x20   # x30 = x19 < x20
        beq     x30, x0, choose_right
            # arr [k] = L[i];
            sw      x19, 0(x31)
            # i = i + 4;
            addi    x7, x7, 4
            jal     x0, done
        choose_right:
            # arr [k] = R[j];
            sw      x20, 0(x31)
            # j = j + 4;
            addi    x8, x8, 4
        done:
        # k = k + 4;
        addi    x9, x9, 4
        jal     x0, loop1
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
        beq   x30, x0, done_L    # if (x30 == 0) ? i >= x5 ? exit loop
        # x31 = [arr2 + i]
        add   x30, x18, x7       # x30 = x18 + x7
        lw    x31, 0(x30)        # x31 = [x30]
        # [arr + k] = x31
        add   x30, x10, x9       # x30 = x10 + x9
        sw    x31, 0(x30)        # [x30] = x31
        # i += 4;
        addi  x7, x7, 4          # x7 = x7 + 4
        # k += 4;
        addi  x9, x9, 4          # x9 = x9 + 4

        # jump back to start of loop
        jal   x0, loop_L

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
        beq   x30, x0, done_R    # if (x30 == 0) ? j >= x6 ? exit loop
        # x31 = [arr2 + j]
        add   x30, x18, x8       # x30 = x18 + x8
        lw    x31, 0(x30)        # x31 = [x30]
        # [arr + k] = x31
        add   x30, x10, x9       # x30 = x10 + x9
        sw    x31, 0(x30)        # [x30] = x31
        # j += 4;
        addi  x8, x8, 4          # x8 = x8 + 4
        # k += 4;
        addi  x9, x9, 4          # x9 = x9 + 4
        # jump back to start of loop
        jal   x0, loop_R

    done_R:

    # remove the used registers from stack (epilogue):
    lw      x1, 0(x2)       # store ra in stack
    lw      x5, 4(x2)
    lw      x6, 8(x2)
    lw      x7, 12(x2)
    lw      x8, 16(x2)
    lw      x9, 20(x2)
    lw      x18, 24(x2)
    lw      x19, 28(x2)
    lw      x20, 32(x2)
    lw      x30, 36(x2)
    lw      x31, 40(x2)
    addi    x2, x2, 44     # get the stack back to its first state

    jalr x0, x1, 0
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
    sw      x1, 0(x2)       # store ra in stack
    sw      x5, 4(x2)
    sw      x14, 8(x2)
    sw      x30, 12(x2)
    sw      x31, 16(x2)

    
    # branch to end_merge_sort << if (left >= right) return; >>
    slt     x31, x11, x12               # x31 = (left < right) ? 1 : 0
    beq     x31, x0, end_merge_sort     # if NOT (left < right) ? left >= right ? branch
    # << int mid = left + (right - left) / 2; >>
    sub     x30, x12, x11    # x30 = right - left
    # srai    x31, x30, 1      # x30 = (right - left) / 2   (arithmetic shift right by 1)
    addi  x31, x0, 0        # x31 = half = 0
    addi  x5,  x0, 2        # x5 = constant 2

divide_loop:
    slt   x7, x30, x5       # x7 = 1 if diff < 2
    beq   x7, x0, do_step   # if diff >= 2 continue
    jal   x0, finish_div    # else exit loop

do_step:
    addi  x30, x30, -2      # diff -= 2
    addi  x31, x31, 1       # half++
    jal   x0, divide_loop

finish_div:
    add     x5,  x11, x31    # x5  = left + (right - left)/2  => mid


    # << mergeSort(arr, left, mid); >>
    # stack caller inputs:
    addi    x2, x2, -16
    sw      x10, 0(x2)
    sw      x11, 4(x2)
    sw      x12, 8(x2)
    sw      x13, 12(x2)
    # call the "merge_sort" function:
    or      x12, x5, x0
    jal     x1, merge_sort
    # unstack caller inputs:
    lw      x10, 0(x2)
    lw      x11, 4(x2)
    lw      x12, 8(x2)
    lw      x13, 12(x2)
    addi    x2, x2, 16

    # << mergeSort(arr, mid + 1, right); >>
    # stack caller inputs:
    addi    x2, x2, -16
    sw      x10, 0(x2)
    sw      x11, 4(x2)
    sw      x12, 8(x2)
    sw      x13, 12(x2)
    # call the "merge_sort" function:
    addi    x11, x5, 1
    jal     x1, merge_sort
    # unstack caller inputs:
    lw      x10, 0(x2)
    lw      x11, 4(x2)
    lw      x12, 8(x2)
    lw      x13, 12(x2)
    addi    x2, x2, 16




    # << merge(arr, left, mid, right); >>
    # stack caller inputs:
    addi    x2, x2, -16
    sw      x10, 0(x2)
    sw      x11, 4(x2)
    sw      x12, 8(x2)
    sw      x13, 12(x2)
    # call the "merge" function:
    or      x14, x0, x13    # arr_size = x14
    or      x13, x0, x12    # right = x13
    or      x12, x0, x5     # mid = x12
    jal     x1, merge
    # unstack caller inputs:
    lw      x10, 0(x2)
    lw      x11, 4(x2)
    lw      x12, 8(x2)
    lw      x13, 12(x2)
    addi    x2, x2, 16


    
    end_merge_sort:

    # remove the used registers from stack (epilogue):
    lw      x1, 0(x2)       # store ra in stack
    lw      x5, 4(x2)
    lw      x14, 8(x2)
    lw      x30, 12(x2)
    lw      x31, 16(x2)
    addi    x2, x2, 20     # get the stack back to its first state

    jalr x0, x1, 0
################################ merge_sort function finished #####################################

    finish: