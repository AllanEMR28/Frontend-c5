import axios from "axios";
import { apiApp } from "../../api/apiUrl";

export const obtenerEmpleados = async () => {
  try {
    const response = await apiApp.get(`/empleado/obtenerTodo`);
    return response.data.data;
  } catch (error) {
    console.error(error);
    throw error; // Puedes manejar el error aquí o dejar que se propague
  }
};

  export const eliminarEmpleado = async (empleadoId) => {
  try {
    const response = await apiApp.delete(`/empleado/eliminar/${empleadoId}`);
    
    if (response.status === 200) {
      console.log("Empleado eliminado exitosamente");
    } else {
      console.error("Error al eliminar el empleado");
    }
  } catch (error) {
    console.error("Error al realizar la solicitud de eliminación", error);
    throw error;
  }
};