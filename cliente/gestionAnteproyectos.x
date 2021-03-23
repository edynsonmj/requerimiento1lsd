/*Declaracion de datos a transferir entre el cliente y el servidor*/
/*Declaracion de constantes*/
const MAXNOM = 40;
const MAXCONTENIDO = 200;
/*Declaracion de la estructura que permite almacenar los datos de un anteproyecto*/
struct evaluacion{
    char nombre[MAXNOM];
    char fecha[MAXNOM];
    bool concepto;
    char observaciones[MAXCONTENIDO];
};
struct coordinacion{
    bool estructura;
    bool concepto;
    char observaciones[MAXCONTENIDO];
};
struct jefeDepto{
    bool estructura;
    bool concepto;
    char observaciones[MAXCONTENIDO];
};
struct datos_usuario{
    int identificacion;
    char departamento[MAXNOM];
    char role[MAXNOM];
    char nombre[MAXNOM];
    char login[MAXNOM];
    char password[MAXNOM];
};
struct datos_anteproyecto{
    /*proyecto*/
    int codigoAnteproyecto;
    char nombrePrograma[MAXNOM];
    char titulo[MAXNOM];
    char objetivos[MAXCONTENIDO];
    /*estudiantes*/
    char estudiante01Nom[MAXNOM];
    int estudiante01Cod;
    char estudiante02Nom[MAXNOM];
    int estudiante02Cod;
    /*director*/
    char director[MAXNOM];
    char codirector[MAXNOM];
    /*B-C-D*/
    evaluacion infoEval[2];
    coordinacion infoCoordi;
    jefeDepto infoJefeDepto;
};
/*informacion de la resolucion*/
struct datos_resolucion{
    int codigoAnteproyecto;
    char fechaResolucion[MAXNOM];
    int numResolucion;
};

/*Definicion de las operaciones que se pueden realizar*/
program gestion_anteproyecto{
    version gestion_anteproyectos_version{
        bool registrarAnteproyecto(datos_anteproyecto objAnteproyecto)=1;
        datos_anteproyecto obtenerAnteproyecto(int id)=2;
    }=1;
    version gestion_resoluciones_version{
        bool registrarResolucion(datos_resolucion objResolucion)=1;
        datos_resolucion obtenerResolucion(int id)=2;
    }=2;
    version gestion_usuarios_version{
        bool registrarUsuario(datos_usuario objUsuario)=1;
        datos_usuario obtenerUsuario(int id)=2;
        datos_usuario iniciarSesion(datos_usuario login)=3;
    }=3;
}=0x20000011;