/*
 * This is sample code generated by rpcgen.
 * These are only templates and you can use them
 * as a guideline for developing your own functions.
 */

#include "gestionUsuarios.h"

bool_t *
almacenarusuario_1_svc(registroUsuario *argp, struct svc_req *rqstp)
{
	static bool_t  result;
	printf("\ninvocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}

registroUsuario *
consultarusuario_1_svc(int *argp, struct svc_req *rqstp)
{
	static registroUsuario  result;
	printf("\ninvocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}

registroUsuario *
autenticar_1_svc(registroUsuario *argp, struct svc_req *rqstp)
{
	static registroUsuario  result;
	printf("\ninvocado\n");
	/*
	 * insert server code here
	 */

	return &result;
}
