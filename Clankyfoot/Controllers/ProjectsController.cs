using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Clankyfoot.Controllers
{
    public class ProjectsController : Controller
    {
        /// <summary>
        /// Loads the default project view
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// Loads a detailed page of a project
        /// </summary>
        /// <returns></returns>
        public ViewResult Details(int id = 0)
        {
            return View();
        }
        /// <summary>
        /// Loads a create project view
        /// </summary>
        /// <returns></returns>
        public ViewResult Create()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("Create")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Clankyfoot.Models.ProjectCreate model)
        {
            if (ModelState.IsValid)
            {
                // TODO create logic for creating a project
                return RedirectToAction("CreateProjectSuccess", "Projects");
            }
            else
            {
                ModelState.AddModelError("", "Please check fields for errors");
                return (View());
            }
        }
        /// <summary>
        /// delete project view
        /// </summary>
        /// <returns></returns>
        public ViewResult Delete()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("Delete")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(Clankyfoot.Models.ProjectDelete model)
        {
            if (ModelState.IsValid)
            {
                // TODO create logic for deleting a project
                return RedirectToAction("CreateProjectSuccess", "Projects");
            }
            else
            {
                ModelState.AddModelError("", "Invalid password");
                return (View());
            }
        }
        /// <summary>
        /// change lead view
        /// </summary>
        /// <returns></returns>
        public ViewResult ChangeLead()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        [HttpPost]
        [ActionName("ChangeLead")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ChangeLead(Clankyfoot.Models.ProjectUpdateLead model)
        {
            if (ModelState.IsValid)
            {
                return RedirectToAction("CreateProjectSuccess", "Projects");
            }
            else
            {
                ModelState.AddModelError("", "Please check fields for errors");
                return (View());
            }
        }
        /// <summary>
        /// change project name view
        /// </summary>
        /// <returns></returns>
        public ViewResult ChangeName()
        {
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ActionName("ChangeName")]
        [ValidateAntiForgeryToken]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ChangeName(Clankyfoot.Models.ProjectUpdateName model)
        {
            if (ModelState.IsValid)
            {
                // TODO create logic to change the name of the project
                return RedirectToAction("CreateProjectSuccess", "Projects");
            }
            else
            {
                ModelState.AddModelError("", "invalid project and/or password");
                return (View());
            }
        }
        /// <summary>
        /// View to load when project was successfully created
        /// </summary>
        /// <returns></returns>
        public ViewResult CreateProjectSuccess()
        {
            return View();
        }
    }
}
