START_FILE

	.pred.safe_across_calls p1-p5,p16-p63
	.text
	.align 16
	.global ompi_atomic_mb#
	.proc ompi_atomic_mb#
ompi_atomic_mb:
	.prologue
	.body
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_mb#
	.align 16
	.global ompi_atomic_rmb#
	.proc ompi_atomic_rmb#
ompi_atomic_rmb:
	.prologue
	.body
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_rmb#
	.align 16
	.global ompi_atomic_wmb#
	.proc ompi_atomic_wmb#
ompi_atomic_wmb:
	.prologue
	.body
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_wmb#
	.align 16
	.global ompi_atomic_cmpset_acq_32#
	.proc ompi_atomic_cmpset_acq_32#
ompi_atomic_cmpset_acq_32:
	.prologue
	.body
#APP
	mov ar.ccv=r33;;
	cmpxchg4.acq r32=[r32],r34,ar.ccv
#NO_APP
	;;
	cmp4.eq p6, p7 = r32, r33
	;;
	(p6) addl r8 = 1, r0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_cmpset_acq_32#
	.align 16
	.global ompi_atomic_cmpset_rel_32#
	.proc ompi_atomic_cmpset_rel_32#
ompi_atomic_cmpset_rel_32:
	.prologue
	.body
#APP
	mov ar.ccv=r33;;
	cmpxchg4.rel r32=[r32],r34,ar.ccv
#NO_APP
	;;
	cmp4.eq p6, p7 = r32, r33
	;;
	(p6) addl r8 = 1, r0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_cmpset_rel_32#
	.align 16
	.global ompi_atomic_cmpset_acq_64#
	.proc ompi_atomic_cmpset_acq_64#
ompi_atomic_cmpset_acq_64:
	.prologue
	.body
#APP
	mov ar.ccv=r33;;
	cmpxchg8.acq r32=[r32],r34,ar.ccv
#NO_APP
	;;
	sxt4 r32 = r32
	;;
	cmp.eq p6, p7 = r33, r32
	;;
	(p6) addl r8 = 1, r0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_cmpset_acq_64#
	.align 16
	.global ompi_atomic_cmpset_rel_64#
	.proc ompi_atomic_cmpset_rel_64#
ompi_atomic_cmpset_rel_64:
	.prologue
	.body
#APP
	mov ar.ccv=r33;;
	cmpxchg8.rel r32=[r32],r34,ar.ccv
#NO_APP
	;;
	sxt4 r32 = r32
	;;
	cmp.eq p6, p7 = r33, r32
	;;
	(p6) addl r8 = 1, r0
	(p7) mov r8 = r0
	br.ret.sptk.many b0
	;;
	.endp ompi_atomic_cmpset_rel_64#
	.ident	"GCC: (GNU) 3.2.3 20030502 (Red Hat Linux 3.2.3-49)"
