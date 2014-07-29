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
        [OperationContract]
        string GetData(int value);

        // TODO: Add your service operations here

		// Obtener listado de drogas
		[OperationContract]
		List<DrogaDTO> obtenerListaDrogas();

		// Guardar nueva droga

		// Modificar droga existente

		// Eliminar droga
    }

	[DataContract]
	public class DrogaDTO
	{
		string nombre="";
		string storageAndStability="";
		float? porcentajeTDC=0F;
		float? stockSolution=0F;
		string casaComercial="";

		public DrogaDTO(droga droga)
		{
			this.nombre = droga.nombre;
			this.storageAndStability = droga.storageAndStability;
			this.porcentajeTDC = droga.C100_TDC;
			this.stockSolution = droga.stockSolution;
			this.casaComercial = droga.casacomercial.nombre;
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
