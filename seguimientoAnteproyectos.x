/*Declaracion de datos a transferir entre el cliente y el servidor*/
/*Declaracion de constantes*/
const MAXNOMBRE = 40;
const MAXCONTE = 200;
/*Declaracion de la estructura que permite almacenar los datos de un anteproyecto*/
struct registroEvaluacion{
    char nombre[MAXNOMBRE];
    char fecha[MAXNOMBRE];
    bool concepto;
    char observaciones[MAXCONTE];
};
struct registroCoordinacion{
    bool estructura;
    bool concepto;
    char observaciones[MAXCONTE];
};
struct jefeDepartamento{
    bool estructura;
    bool concepto;
    char observaciones[MAXCONTE];
};
struct registroAnteproyecto{
    /*proyecto*/
    int codigoAnteproyecto;
    char nombrePrograma[MAXNOMBRE];
    char titulo[MAXNOMBRE];
    char objetivos[MAXCONTE];
    /*estudiantes*/
    char estudiante01Nom[MAXNOMBRE];
    int estudiante01Cod;
    char estudiante02Nom[MAXNOMBRE];
    int estudiante02Cod;
    /*director*/
    char director[MAXNOMBRE];
    char codirector[MAXNOMBRE];
    /*B-C-D*/
    registroEvaluacion infoEval[2];
    registroCoordinacion infoCoordi;
    jefeDepartamento infoJefeDepto;
};
/*informacion de la resolucion*/
struct registroResolucion{
    int codigoAnteproyecto;
    char fechaResolucion[MAXNOMBRE];
    int numResolucion;
};

/*Definicion de las operaciones que se pueden realizar*/
program gestion_seguimiento{
    version gestion_anteproyecto_version{
        bool guardarAnteproyecto(registroAnteproyecto objAnteproyecto)=1;
        registroAnteproyecto consultarAnteproyecto(int id)=2;
    }=1;
    version gestion_resolucion_version{
        bool guardarResolucion(registroResolucion objResolucion)=1;
        registroResolucion consultarResolucion(int id)=2;
    }=2;
}=0x20000012;