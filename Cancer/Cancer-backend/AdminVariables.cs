using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.Objects;
using System.Data.Objects.DataClasses;

namespace cancer_backend
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public partial class Cancer_ws : ICancer_ws
    {
		public List<DrogaDTO> obtenerListaDrogas()
		{
			using (var entities = new ProyectoCancerEntities())
			{
				return entities.droga.ToList().Select(a => new DrogaDTO(a)).ToList();
			}
		}

		public int obtenerTotalDrogas()
		{
			using (var entities = new ProyectoCancerEntities())
			{
				return entities.droga.Count();
			}
		}

		public int insertarDroga(DrogaDTO nuevaDroga)
		{
			//HAY QUE GUARDAR LA CASA COMERCIAL TAMBIÉN!!
			/* De momento, se ignora. Hay que despejar la duda sobre
			 * cómo se piensan administrar las casas comerciales.
			 * */
			using (var entities = new ProyectoCancerEntities())
			{
				droga droga = new droga
				{
					nombre = nuevaDroga.Nombre,
					C100_TDC = nuevaDroga.PorcentajeTDC,
					stockSolution = nuevaDroga.StockSolution,
					storageAndStability = nuevaDroga.StorageAndStability
				};
				entities.droga.Add(droga);
				entities.SaveChanges();
				return 0;
			}
		}

		// Modificar droga existente
		public int modificarDroga(int idDroga, DrogaDTO nuevosDatos)
		{
			using (var entities = new ProyectoCancerEntities())
			{
				var droga = (from d in entities.droga
							 where d.idDroga == idDroga
							 select d).First();

				droga.nombre = nuevosDatos.Nombre;
				droga.stockSolution = nuevosDatos.StockSolution;
				droga.storageAndStability = nuevosDatos.StorageAndStability;
				droga.C100_TDC = nuevosDatos.PorcentajeTDC;
				//HAY QUE GUARDAR LA CASA COMERCIAL TAMBIÉN!!
				/* De momento, se ignora. Hay que despejar la duda sobre
				 * cómo se piensan administrar las casas comerciales.
				 * */

				entities.SaveChanges();
				return 0;
			}
		}

		// Eliminar droga
		public int eliminarDroga(int idDrogaAEliminar)
		{
			using (var entities = new ProyectoCancerEntities())
			{
				var droga = new droga { idDroga = idDrogaAEliminar };
				entities.droga.Attach(droga);
				entities.droga.Remove(droga);
				entities.SaveChanges();
				return 0;
			}
		}
    }
}
