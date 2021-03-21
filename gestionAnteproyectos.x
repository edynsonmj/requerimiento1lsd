/*Declaracion de datos a transferir entre el cliente y el servidor*/
/*Declaracion de constantes*/
const MAXNOM = 40;
const MAXCONTENIDO = 200;
typedef struct nodo_anteproyecto * listaAnteproyectos;
/*Declaracion de la estructura que permite almacenar los datos de un anteproyecto*/
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

/*Definicion de las operaciones que se pueden realizar*/
program gestion_anteproyecto{
    version gestion_anteproyectos_version{
        bool registrarAnteproyecto(datos_anteproyecto objAnteproyecto)=1;
        listaAnteproyectos consultarAnteproyectos(string role)=2;
        datos_anteproyecto consultarAnteproyecto(int id)=3;
        bool registrarUsuario(datos_usuario objUsuario)=4;
        /*solo se pasa login y password*/
        datos_usuario iniciarSesion(datos_usuario login)=5;
    }=1;
}=0x20000012;