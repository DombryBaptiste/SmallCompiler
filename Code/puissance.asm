	const dx,fonc:puissance:fin
	jmp dx
:fonc:puissance:debut
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
	const dx,var:b
	loadw ax,dx
	push ax
	const ax,0
	push ax
	pop bx
	pop ax
	sub ax,bx
	const dx,vrai:2
	const bx,0
	cmp ax,bx
	jmpc dx
	push bx
	const dx,fin:2
	jmp dx
:vrai:2
	const ax,1
	push ax
	const dx,fin:2
	jmp dx
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
	const dx,var:a
	loadw ax,dx
	push ax
	const dx,var:b
	loadw ax,dx
	push ax
	const ax,1
	push ax
	pop bx
	pop ax
	sub ax,bx
	push ax
;call
	const ax,fonc:puissance:debut
	call ax
;call fin
	const dx,var:a
	loadw ax,dx
	push ax
	pop bx
	pop ax
	mul ax,bx
	push ax
;retour
	pop bx
	pop ax
	push bx
	push ax
	ret
;retour fin
	ret
:fonc:puissance:fin
