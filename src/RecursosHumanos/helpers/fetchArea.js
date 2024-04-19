import axios from "axios";
import { apiApp } from '../../api/apiUrl';
export const obtenerAreas = async () => {
  try {
    const response = await apiApp.get("/area/obtenerTodo");
    return response.data.data;
  } catch (error) {
    console.error(error);
    throw error; // Puedes manejar el error aquí o dejar que se propague
  }
};