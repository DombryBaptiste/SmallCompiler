	const ax,debut
	jmp ax
	const dx,fonc:puissance2:fin
	jmp dx
:fonc:puissance2:debut
;variable b non declaree
	const dx,decl:after:b:0
	jmp dx
:var:b
@int 1
:decl:after:b:0
	pop bx
	pop ax
	push bx
	const dx,var:b
	storew ax,dx
;variable a non declaree
	const dx,decl:after:a:1
	jmp dx
:var:a
@int 1
:decl:after:a:1
	pop bx
	pop ax
	push bx
	const dx,var:a
	storew ax,dx
	const dx,var:a
	loadw ax,dx
	push ax
	const dx,var:b
	loadw ax,dx
	push ax
	pop bx
	pop ax
	const dx,faux:2
	sless bx,ax
	jmpc dx
	const bx,1
	push bx
	const dx,fin:2
	jmp dx
:faux:2
	const ax,0
	push ax
:fin:2
	pop ax
	const bx,0
	const cx,if:3:else
	cmp ax,bx
	jmpc cx
	const ax,1
	push ax
;retour
	pop bx
	pop ax
	push bx
	push ax
	ret
;retour fin
:if:3:else
;if fin
	const ax,0
	push ax
;retour
	pop bx
	pop ax
	push bx
	push ax
	ret
;retour fin
	ret
:fonc:puissance2:fin
:debut
	const bp,pile
	const sp,pile
	const ax,2
	sub sp,ax
	const ax,4
	push ax
	const ax,4
	push ax
	const ax,fonc:puissance2:debut
	call ax
	const dx,decl:after:retour:1
	jmp dx
:var:retour
@int 1
:decl:after:retour:1
	pop ax
	const dx,var:retour
	storew ax,dx
	callprintfd dx
	end
:pile
@int 0
