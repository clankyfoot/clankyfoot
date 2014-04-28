using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helpers
{
    public static class ProjectHelper : Helpers.Abstract.ConnectionHelper
    {
        /// <summary>
        /// Updates the name of a project
        /// </summary>
        /// <param name="newProjectName">the new project name</param>
        /// <param name="oldProjectName">the old project name</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updateName(string newProjectName, string oldProjectName)
        {
               
            return true;
        }
        /// <summary>
        /// Updates the name of a project
        /// </summary>
        /// <param name="projectId">ID of the project to have it's name changed</param>
        /// <param name="projectName">new name of the project</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool updateName(int projectId, string projectName)
        {
            return true;
        }
        /// <summary>
        /// Deletes a project
        /// </summary>
        /// <param name="projectId">ID of the project to be deleted</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool delete(int projectId)
        {
            return true;
        }
        /// <summary>
        /// Deletes a project
        /// </summary>
        /// <param name="projectName">name of the project to be deleted</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool delete(string projectName)
        {
            // cf_Project_Members_Delete_ByProjectName
            return true;
        }
        /// <summary>
        /// Creates a project
        /// </summary>
        /// <param name="projectName">name of the project being created</param>
        /// <param name="teamLeadId">Team leader of the project</param>
        /// <returns>true if the procedure was successful, else false</returns>
        public static bool create(string projectName, int teamLeadId)
        {
            return true;
        }
    }
}
