using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace cancer_backend
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface ICancer_ws
    {
		// Obtener listado de drogas
		[OperationContract]
		int obtenerTotalDrogas();

		[OperationContract]
		List<DrogaDTO> obtenerListaDrogas();

		// Guardar nueva droga
		[OperationContract]
		int insertarDroga(DrogaDTO nuevaDroga);

		// Modificar droga existente
		[OperationContract]
		int modificarDroga(int idDroga, DrogaDTO nuevosDatos);

		// Eliminar droga
		[OperationContract]
		int eliminarDroga(int idDrogaAEliminar);
    }

	[DataContract]
	public class DrogaDTO
	{
		int id = 0;
		string nombre="";
		string storageAndStability="";
		float? porcentajeTDC=0F;
		float? stockSolution=0F;
		string casaComercial="";

		public DrogaDTO(droga droga)
		{
			this.id = droga.idDroga;
			this.nombre = droga.nombre;
			this.storageAndStability = droga.storageAndStability;
			this.porcentajeTDC = droga.C100_TDC;
			this.stockSolution = droga.stockSolution;
			this.casaComercial = droga.casacomercial.nombre;
		}

		[DataMember]
		public int Id
		{
			get { return id; }
			set { id = value; }
		}

		[DataMember]
		public string Nombre
		{
			get { return nombre; }
			set { nombre = value; }
		}

		[DataMember]
		public string StorageAndStability
		{
			get { return storageAndStability; }
			set { storageAndStability = value; }
		}

		[DataMember]
		public float? PorcentajeTDC
		{
			get { return porcentajeTDC; }
			set { porcentajeTDC = value; }
		}

		[DataMember]
		public float? StockSolution
		{
			get { return stockSolution; }
			set { stockSolution = value; }
		}

		[DataMember]
		public string CasaComercial
		{
			get { return casaComercial; }
			set { casaComercial = value; }
		}
	}

    // You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "cancer_backend.ContractType".

}
