using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Cancer_frontend.Startup))]
namespace Cancer_frontend
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
