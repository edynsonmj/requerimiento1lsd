/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#ifndef _GESTIONUSUARIOS_H_RPCGEN
#define _GESTIONUSUARIOS_H_RPCGEN

#include <rpc/rpc.h>


#ifdef __cplusplus
extern "C" {
#endif

#define MAXNOM 40

struct datos_usuario {
	int identificacion;
	char departamento[MAXNOM];
	char role[MAXNOM];
	char nombre[MAXNOM];
	char login[MAXNOM];
	char password[MAXNOM];
};
typedef struct datos_usuario datos_usuario;

#define gestion_usuarios 0x20000011
#define gestion_usuarios_version 1

#if defined(__STDC__) || defined(__cplusplus)
#define registrarUsuario 1
extern  bool_t * registrarusuario_1(datos_usuario *, CLIENT *);
extern  bool_t * registrarusuario_1_svc(datos_usuario *, struct svc_req *);
#define iniciarSesion 2
extern  datos_usuario * iniciarsesion_1(datos_usuario *, CLIENT *);
extern  datos_usuario * iniciarsesion_1_svc(datos_usuario *, struct svc_req *);
extern int gestion_usuarios_1_freeresult (SVCXPRT *, xdrproc_t, caddr_t);

#else /* K&R C */
#define registrarUsuario 1
extern  bool_t * registrarusuario_1();
extern  bool_t * registrarusuario_1_svc();
#define iniciarSesion 2
extern  datos_usuario * iniciarsesion_1();
extern  datos_usuario * iniciarsesion_1_svc();
extern int gestion_usuarios_1_freeresult ();
#endif /* K&R C */

/* the xdr functions */

#if defined(__STDC__) || defined(__cplusplus)
extern  bool_t xdr_datos_usuario (XDR *, datos_usuario*);

#else /* K&R C */
extern bool_t xdr_datos_usuario ();

#endif /* K&R C */

#ifdef __cplusplus
}
#endif

#endif /* !_GESTIONUSUARIOS_H_RPCGEN */