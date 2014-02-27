using System.Web.Http;
using System.Web.Mvc;
using StructureMap;
using $rootnamespace$;
using $rootnamespace$.DependencyResolution;

[assembly: WebActivatorEx.PreApplicationStartMethod(typeof(InitStructureMapMvcControllerFactory), "Start")]

namespace $rootnamespace$ {
    public static class InitStructureMapMvcControllerFactory {
        public static void Start() {
			//set the controller factory to our new StructureMapController factory
            ControllerBuilder.Current.SetControllerFactory(typeof(StructureMapControllerFactory));
		}
    }
}