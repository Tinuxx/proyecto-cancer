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
    public class Cancer_ws : ICancer_ws
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

		public List<DrogaDTO> obtenerListaDrogas()
		{								   
			using (var entities = new ProyectoCancerEntities())
			{
				return entities.droga.ToList().Select(a => new DrogaDTO(a)).ToList();
			}
		}
    }
}
