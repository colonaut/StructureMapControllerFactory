using System.Web.Http;
using System.Web.Mvc;
using StructureMap;
using $rootnamespace$.DependencyResolution;

[assembly: WebActivator.PreApplicationStartMethod(typeof($rootnamespace$.App_Start.StructuremapMvcControllerFactory), "Start")]

namespace $rootnamespace$.App_Start {
    public static class StructuremapMvcControllerFactory {
        public static void Start() {
			//set the controller factory to our new StructureMapController factory
            ControllerBuilder.Current.SetControllerFactory(typeof(StructureMapControllerFactory));
		}
    }
}