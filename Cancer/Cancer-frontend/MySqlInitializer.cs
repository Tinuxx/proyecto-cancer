/* Código tomado de http://www.codeproject.com/Tips/788357/How-to-set-up-application-using-ASP-NET-Identity-w
 * */

using Cancer_frontend.Models;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;

namespace Cancer_frontend
{
	public class MySqlInitializer : IDatabaseInitializer<ApplicationDbContext>
	{
		public void InitializeDatabase(ApplicationDbContext context)
		{
			if (!context.Database.Exists())
			{
				//Si la base de datos no existe, crearla
				context.Database.Create();
			}
			else
			{
				// Consulta para verificar que la tabla de Historia de Migraciones
				// está presente en la BD
				var migrationHistoryTableExists = ((IObjectContextAdapter) context).ObjectContext.ExecuteStoreQuery<int>(string.Format("SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = '{0}' AND table_name = '__MigrationHistory'","bd_autenticacion"));
				
				// Si no existe (que es lo que sucede en la primera ejecución),
				// crearla
				if (migrationHistoryTableExists.FirstOrDefault() == 0)
				{
					context.Database.Delete();
					context.Database.Create();
				}
			}
		}
	}
}