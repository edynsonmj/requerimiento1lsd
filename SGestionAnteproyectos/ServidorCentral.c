/*
 * This is sample code generated by rpcgen.
 * These are only templates and you can use them
 * as a guideline for developing your own functions.
 */

#include "gestionAnteproyectos.h"
#include "seguimientoAnteproyectos.h"
#include "gestionUsuarios.h"

bool_t *
registraranteproyecto_1_svc(datos_anteproyecto *argp, struct svc_req *rqstp)
{
	static bool_t  result;
	printf("\n invocado\n");
	//
char * host="localhost";

CLIENT *clnt;
	bool_t  *result_1;
	registroAnteproyecto  guardaranteproyecto_1_arg;
	registroAnteproyecto  *result_2;
	int  consultaranteproyecto_1_arg;

#ifndef	DEBUG
	clnt = clnt_create (host, gestion_seguimiento, gestion_anteproyecto_version, "udp");
	if (clnt == NULL) {
		clnt_pcreateerror (host);
		exit (1);
	}
#endif	/* DEBUG */

	result_1 = guardaranteproyecto_1(&guardaranteproyecto_1_arg, clnt);
	if (result_1 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_2 = consultaranteproyecto_1(&consultaranteproyecto_1_arg, clnt);
	if (result_2 == (registroAnteproyecto *) NULL) {
		clnt_perror (clnt, "call failed");
	}
#ifndef	DEBUG
	clnt_destroy (clnt);
#endif	 /* DEBUG */
	//
	/*
	 * insert server code here
	 */

	return &result;
}

datos_anteproyecto *
obteneranteproyecto_1_svc(int *argp, struct svc_req *rqstp)
{
	static datos_anteproyecto  result;
	printf("\n invocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}

bool_t *
registrarresolucion_2_svc(datos_resolucion *argp, struct svc_req *rqstp)
{
	static bool_t  result;
	printf("\n invocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}

datos_resolucion *
obtenerresolucion_2_svc(int *argp, struct svc_req *rqstp)
{
	static datos_resolucion  result;
	printf("\n invocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}

bool_t *
registrarusuario_3_svc(datos_usuario *argp, struct svc_req *rqstp)
{
	static bool_t  result;
	printf("\n invocado\n");

	//
	char * host = "localhost";
	CLIENT *clnt;
	bool_t  *result_1;
	registroUsuario  almacenarusuario_1_arg;
	registroUsuario  *result_2;
	int  consultarusuario_1_arg;
	registroUsuario  *result_3;
	registroUsuario  autenticar_1_arg;

#ifndef	DEBUG
	clnt = clnt_create (host, gestion_usuarios, gestion_usuario_version, "udp");
	if (clnt == NULL) {
		clnt_pcreateerror (host);
		exit (1);
	}
#endif	/* DEBUG */

	result_1 = almacenarusuario_1(&almacenarusuario_1_arg, clnt);
	if (result_1 == (bool_t *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_2 = consultarusuario_1(&consultarusuario_1_arg, clnt);
	if (result_2 == (registroUsuario *) NULL) {
		clnt_perror (clnt, "call failed");
	}
	result_3 = autenticar_1(&autenticar_1_arg, clnt);
	if (result_3 == (registroUsuario *) NULL) {
		clnt_perror (clnt, "call failed");
	}
#ifndef	DEBUG
	clnt_destroy (clnt);
#endif	 /* DEBUG */
	//

	/*
	 * insert server code here
	 */

	return &result;
}

datos_usuario *
obtenerusuario_3_svc(int *argp, struct svc_req *rqstp)
{
	static datos_usuario  result;
	printf("\n invocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}

datos_usuario *
iniciarsesion_3_svc(datos_usuario *argp, struct svc_req *rqstp)
{
	static datos_usuario  result;
	printf("\n invocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}