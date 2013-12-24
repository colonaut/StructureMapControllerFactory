using System;
using System.Web.Mvc;
using System.Web.Routing;
using StructureMap;

namespace $rootnamespace$.DependencyResolution
{
    public class StructureMapControllerFactory : DefaultControllerFactory
    {
        protected override IController GetControllerInstance(RequestContext context, Type type)
        {
            return ObjectFactory.GetInstance(type) as Controller;
        }
    }    
}