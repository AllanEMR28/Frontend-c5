import { useEffect } from "react";
import { Outlet, useNavigate } from "react-router-dom";
import { Footer } from "../Components/Footer";
import useAppState from "../../auth/hooks/estado";
import verificarToken from "../helpers/Verificacion";
import { BarraMenuRequisicion } from '../Components/BarraMenuRequisicion';
import { traerUsuario } from "../../RecursosHumanos/hooks/useTraerUsuarios";

export const LayoutPrivateRequisicion = () => {
  const navigate = useNavigate();
  const { token, id } = useAppState();

  useEffect(() => {
    const checkToken = async () => {
      try {
        const success = await verificarToken(token, navigate);
        if (success) {
          const resp = await traerUsuario(id);
          console.log(resp.data.rol);
          if (resp.data.rol === "requisicion") {
            navigate('/requisicion'); // Redirigir a la página principal si no tiene el rol de requisición
          } else if (resp.data.rol === "estandar") {
            navigate("/home")
          } else if (resp.data.rol === "administrador") {
            navigate("/administrador")
          } 
        }
      } catch (error) {
        console.error(`Error al verificar el token: ${error.message}`);
      }
    };

    checkToken();
  }, [token, navigate]);

  return (
    <>
      <div style={{ display: "flex", flexDirection: "column", minHeight: "100vh" }}>
      <BarraMenuRequisicion/>

        <div style={{ flex: 1, minHeight: 0 }}>
          {/* Contenido del Outlet */}
          <Outlet />
        </div>

        <Footer />
      </div>
    </>
  );
};
