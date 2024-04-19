import { useEffect, useState } from 'react';
import { useEmpleadoStore } from '../hooks/useEmpleadoStore';
import EmpleadoCard from '../components/EmpleadoCard';
import Card from '@mui/material/Card';
import CardContent from '@mui/material/CardContent';
import CardMedia from '@mui/material/CardMedia';
import Typography from '@mui/material/Typography';
import NavigateNextIcon from '@mui/icons-material/NavigateNext';
import NavigateBeforeIcon from '@mui/icons-material/NavigateBefore';
import { CardActionArea, IconButton } from '@mui/material';
import { Link, useNavigate } from 'react-router-dom';
import '../Styles/organigrama.css';

export const OrganigramaPage = () => {
  const { datos, traerEmpleados } = useEmpleadoStore();
  const [departamentoSeleccionado, setDepartamentoSeleccionado] = useState('');
  const [indicesTarjetasPorRol, setIndicesTarjetasPorRol] = useState({});
  const [empleadosPorRol, setEmpleadosPorRol] = useState({});
  const [empleadosBajaCount, setEmpleadosBajaCount] = useState(0);
  const [vacantesPorArea, setVacantesPorArea] = useState({});
  const [totalVacantes, setTotalVacantes] = useState(0);
  const imagenurl = "/imgC5/logo.jpg";
  const navigate = useNavigate();

  useEffect(() => {
    traerEmpleados();
  }, [traerEmpleados]);

  useEffect(() => {
    actualizarEmpleadosPorRol();
    calcularVacantes();
  }, [departamentoSeleccionado, datos]);

 

  const handleEditarVacante = (id) => {
    navigate(`../editar/${id}`); // Redireccionar a la página de edición con el ID del usuario
  };

  const obtenerDepartamentos = () => {
    return [...new Set(datos.map((empleado) => empleado.area.descripcion))];
  };


  
  const renderizarTarjeta = (empleado) => {
    // Verificar si el empleado es una tarjeta de vacante
    if (empleado.nombre === 'vacante') {
      // Representar tarjeta de vacante
      return (
        <Card sx={{ maxWidth: 250, maxHeight: '100%', marginLeft: 5 }} onClick={() => handleEditarVacante(empleado.id)}>
          <CardActionArea>
            <CardMedia
              component="img"
              height="190"
              width="250"
              image={imagenurl}
              alt="green iguana"
            />
            <CardContent>
              <Typography gutterBottom variant="h5" component="div">
              <span style={{ textDecoration: 'underline', color: 'red' }}>Vacante disponible</span>
              </Typography>
              <Typography variant="body2" color="text.secondary">
                Cargo: {empleado.cargo}
              </Typography>
            </CardContent>
          </CardActionArea>
        </Card>
      );
    } else {
      // Representar tarjeta de empleado activo
      return <EmpleadoCard key={empleado.id} empleado={empleado} className="empleado-card" />;
    }
  };

  const agruparEmpleadosPorJerarquia = (empleados) => {
    const jerarquiaRolesOrdenada = [
      'Subdirector General Ejecutivo',
      'Jefe de SUBNIT',
      'Jefe de Departamento',
      'Auxiliar de Departamento',
      'Jefe de Área',
      'Jefe de Turno',
      'Coordinador',
      'Técnico',
      'Auxiliar',
      'Operador',
      'Despachador',
      'Intendencia'
    ];
  
    const jerarquiaCargos = {
      'Subdirector General Ejecutivo': ['Subdirector General Ejecutivo'],
      'Jefe de SUBNIT': ['Jefe de SUBNIT'],
      'Jefe de Departamento': ['Jefe de Departamento'],
      'Auxiliar de Departamento': ['Auxiliar administrativo', 'Auxiliar del departamento video vigilancia', 'Auxiliar de telecomunicaciones'],
      'Jefe de Área': ['Jefe de area tecnica', 'Jefe de area de soporte', 'Jefe de area de calidad en procesos de acreditacion', 'Jefe de area de desarrollo', 'Jefe de area de calidad en procesos de operativos', 'Jefe de area de geoestadistica', 'jefe de area de campo', 'de area de digitalacion', 'Jefe de area de atencion psicologica', 'Jefe de area de servicios generales y recursos materiales', 'Jefe de area de inventarios', 'Jefe de area de recursos humanos', 'Jefe de area de difusion de servicios de C5', 'Jefe de area de red de trasporte', 'Jefe de area de telefonia', 'jefe de area radiocomunicacion'],
      'Jefe de Turno': ['Jefe de Turno'],
      'Coordinador': ['Coordinador'],
      'Técnico': ['Tecnico de red de telefonia', 'Tecnico de red de trasporte', 'Tecnico de video vigilancia'],
      'Operador': ['Operador S.T.E 9-1-1', 'Tecnico de Radiocomunicacion', 'Operador del departamento video vigilancia'],
      'Despachador': ['Despachador'],
      'Auxiliar': ['Desarrollador', 'Desarrollo web movil', 'Auxiliar soporte',  'Tecnico de base de datos', 'Auxiliar en procesos', 'Auxiliar soporte', 'Auxiliar de digitalacion', 'Auxiliar de campo', 'Auxiliar de geoestadistica', 'Auxiliar de mantenimiento', 'Auxiliar de inventarios', 'Auxiliar rh', 'Mensajeria', 'Auxiliar difusion y proximidad', 'Auxiliar de psicologica'],
      'Intendencia': ['Intendencia']
    };
  
    const empleadosAgrupados = {};
  
    jerarquiaRolesOrdenada.forEach((rol) => {
      empleados.forEach((empleado) => {
        if (jerarquiaCargos[rol].some((cargo) => empleado.cargo.toLowerCase().includes(cargo.toLowerCase()))) {
          if (!empleadosAgrupados[rol]) {
            empleadosAgrupados[rol] = [];
          }
          empleadosAgrupados[rol].push(empleado);
        }
      });
    });
  
    return empleadosAgrupados;
  };
  

  const filtrarEmpleadosPorDepartamento = () => {
    let empleadosFiltrados;
    if (departamentoSeleccionado === '') {
      empleadosFiltrados = datos.filter(empleado => empleado.status !== 'baja'); // Filtrar empleados activos
    } else {
      empleadosFiltrados = datos.filter((empleado) => empleado.area.descripcion === departamentoSeleccionado && empleado.status !== 'baja'); // Filtrar empleados activos en un departamento específico
    }
  
    // Convertir el nombre del empleado a minúsculas antes de comparar
    empleadosFiltrados = empleadosFiltrados.map(empleado => ({
      ...empleado,
      nombre: empleado.nombre.toLowerCase() // Convertir el nombre a minúsculas
    }));
  
    return empleadosFiltrados;
  };


  const actualizarEmpleadosPorRol = () => {
    const empleadosFiltrados = filtrarEmpleadosPorDepartamento();
    const empleadosAgrupados = agruparEmpleadosPorJerarquia(empleadosFiltrados);
    
    // Eliminar tarjetas del rol "Vacantes" que ya no están en estado de baja
    if (empleadosAgrupados['Vacantes']) {
      const empleadosVacantes = empleadosAgrupados['Vacantes'];
      const empleadosActivos = empleadosAgrupados[''];
      const empleadosVacantesFiltrados = empleadosVacantes.filter(vacante => {
        const index = empleadosActivos.findIndex(activo => activo.cargo === vacante.cargo);
        if (index !== -1) {
          empleadosActivos.splice(index, 1);
          return true;
        }
        return false;
      });
      empleadosAgrupados['Vacantes'] = empleadosVacantesFiltrados;
    }
  
    setEmpleadosPorRol(empleadosAgrupados);
  
    // Reiniciar los índices al cambiar los empleados
    const nuevosIndices = {};
    Object.keys(empleadosAgrupados).forEach((rol) => {
      nuevosIndices[rol] = { total: empleadosAgrupados[rol].length, indice: 0 };
    });
    setIndicesTarjetasPorRol(nuevosIndices);
  };

  const calcularVacantes = () => {
    const vacantesPorArea = {};
    const empleadosSinVacante = datos.filter(empleado => empleado.nombre !== 'Vacante'); // Filtrar empleados que no sean vacantes
  
    obtenerDepartamentos().forEach((departamento) => {
      const empleadosFiltrados = empleadosSinVacante.filter((empleado) => empleado.area.descripcion === departamento && empleado.status !== 'baja');
      const vacantes = obtenerLimitePorDepartamento(departamento) - empleadosFiltrados.length;
      vacantesPorArea[departamento] = vacantes;
    });

  // Calcular el total de vacantes sumando los topes de todas las áreas
  const totalVacantes = Object.values(vacantesPorArea).reduce((total, vacantes) => total + vacantes, 0);
  setTotalVacantes(totalVacantes);
  setVacantesPorArea(vacantesPorArea);
};

  const obtenerLimitePorDepartamento = (departamento) => {
    switch (departamento) {
      case 'DESPACHO':
        return 12;
      case 'CRUM':
        return 11;
      case 'S_T_E_911':
        return 34;
      case 'CALIDAD':
        return 9;
      case 'SDA_089':
        return 13;
      case 'VIDEO_VIGILANCIA':
        return 25;
      case 'TELECOMUNICACIONES':
        return 4;
      case 'AREA_DE_DIAGNOSTICO_DE_PROCESOS':
        return 5;
      case 'SISTEMAS_Y_DESARROLLO':
        return 7;
      case 'CARTOGRAFIA':
        return 9;
      case 'PSICOLOGIA':
        return 8;
      case 'ADMINISTRATIVO':
        return 17;
      case 'AREA_JURIDICA':
        return 2;
      case 'DIRECCION_C5':
        return 10;
      case 'EL_SALTO':
        return 10;
      case 'C4_GOMEZ_PALACIO':
        return 39;   
      case 'C4_SANTIAGO_PAPASQUIARO':
        return 13;
      case 'DEPARTAMENTO_TELEFONIA_Y_RED_DE_TRANSPORTE':
        return 5;  

      default:
        return 0;
    }
  };

  const mostrarSiguienteTarjeta = (rol) => {
    setIndicesTarjetasPorRol((prevIndices) => {
      const totalEmpleados = empleadosPorRol[rol]?.length || 0;
      const indiceActual = prevIndices[rol]?.indice || 0;
      const nuevoIndice = (indiceActual + 5) % totalEmpleados;
      return {
        ...prevIndices,
        [rol]: { total: totalEmpleados, indice: nuevoIndice },
      };
    });
  };
  
  const mostrarTarjetaAnterior = (rol) => {
    setIndicesTarjetasPorRol((prevIndices) => {
      const totalEmpleados = empleadosPorRol[rol]?.length || 0;
      const indiceActual = prevIndices[rol]?.indice || 0;
      const nuevoIndice = (indiceActual - 5 + totalEmpleados) % totalEmpleados;
  
      return {
        ...prevIndices,
        [rol]: { total: totalEmpleados, indice: nuevoIndice },
      };
    });
  };

  return (
    <div className="organigrama-container">
      <h1>Organigrama de empleados</h1>
      <div>
        <label htmlFor="departamento">Selecciona un departamento: </label>
        <select
          id="departamento"
          value={departamentoSeleccionado}
          onChange={(e) => setDepartamentoSeleccionado(e.target.value)}
        >
          <option value="">Selecciona un departamento</option>
          {obtenerDepartamentos().map((departamento, index) => (
            <option key={index} value={departamento}>
              {departamento}
            </option>
          ))}
        </select>
        <Typography variant="body2" color="text.secondary">
            Total de vacantes: {totalVacantes}
          </Typography>
      </div>
      {departamentoSeleccionado && (
        <div>
          <h2 className="area-title">ORGANIGRAMA DE {departamentoSeleccionado}</h2>
          <Typography variant="body2" color="text.secondary">
            Vacantes disponibles: {vacantesPorArea[departamentoSeleccionado]}
          </Typography>

          <div className="area-container">
            <div className="jerarquia-container">
            {Object.entries(empleadosPorRol).map(([rol, empleados]) => (
            <div key={rol} className="carrusel-container">
              <h3>{rol}</h3>
              <div className="empleado-card-container">
                {(empleados || []).slice(indicesTarjetasPorRol[rol]?.indice || 0, (indicesTarjetasPorRol[rol]?.indice || 0) + 5).map(
                  (empleado) => (
                    <div key={empleado.id} className="empleado-card">
                      {renderizarTarjeta(empleado)}
                    </div>
                  )
                )}
              </div>
              <div className="navegacion-tarjetas">
                {empleadosPorRol[rol]?.length > 5 && (
                  <>
                    <IconButton onClick={() => mostrarTarjetaAnterior(rol)}>
                      <NavigateBeforeIcon />
                    </IconButton>
                    <IconButton onClick={() => mostrarSiguienteTarjeta(rol)}>
                      <NavigateNextIcon />
                    </IconButton>
                  </>
                )}
              </div>
            </div>
          ))}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default OrganigramaPage;




