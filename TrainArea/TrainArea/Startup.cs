using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TrainArea.Startup))]
namespace TrainArea
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
