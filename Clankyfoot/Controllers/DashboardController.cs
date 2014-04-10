using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Clankyfoot.Controllers
{
    /// <summary>
    /// Responsible for the Dashboard View Logic
    /// </summary>
    public class DashboardController : Controller
    {
        public ActionResult Index()
        {
            // TODO what should this view have? a list of projects?
            return View();
        }
    }
}
