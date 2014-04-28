using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helpers.Abstract
{
    public abstract class ConnectionHelper
    {
        public static enum Procedure
        {
            /// <summary>
            /// Creates a project
            /// <param name="project_name">name of the new project</param>
            /// <param name="team_lead_id">lead of team lead</param>
            /// </summary>
            cf_Projects_Create,
            /// <summary>
            /// Deletes a project
            /// <param name="id">id of the project to be deleted</param>
            /// </summary>
            cf_Projects_Delete_ById,
            /// <summary>
            /// updates a project name
            /// <param name="id">id of the project</param>
            /// <param name="name">new project name</param>
            /// </summary>
            cf_Projects_Update_Name_ById,
            /// <summary>
            /// Updates a project name
            /// <param name="oldName">old project name</param>
            /// <param name="newName">new project name</param>
            /// </summary>
            cf_Projects_Update_Name_ByName,
            /// <summary>
            /// Deletes a project
            /// <param name="id">id of the project to be deleted</param>
            /// </summary>
            cf_Project_Delete_ById,
            /// <summary>
            /// Deletes a project
            /// <param name="name">name of the project to be deleted</param>
            /// </summary>
            cf_Project_Delete_ByName,
            /// <summary>
            /// Adds a Team Member to a project
            /// <param name="project_name">name of the project to add a team member to</param>
            /// <param name="team_member_id">id of the team member to be added</param>
            /// </summary>
            cf_Project_Members_Create,
            /// <summary>
            /// Deletes a project member
            /// <param name="id">identity ID of the team member</param>
            /// </summary>
            cf_Project_Members_Delete_ById,
            /// <summary>
            /// Removes a team member from a project
            /// <param name="id">id of the team member to be removed</param>
            /// </summary>
            cf_Project_Members_Delete_ByMemberId,
            /// <summary>
            /// Deletes a project
            /// <param name="project_name">name of the project to be deleted</param>
            /// </summary>
            cf_Project_Members_Delete_ByProjectName,
            /// <summary>
            /// Updates a project name
            /// <param name="project_name">name of the project to be deleted</param>
            /// <param name="old_name">old name of the project</param>
            /// </summary>
            cf_Project_Members_Update_ProjectName_ByName,
            /// <summary>
            /// Creates a role
            /// <param name="user">adds a user to a role</param>
            /// <para name="type">the role to add the user to</param>
            /// </summary>
            cf_Role_Create,
            /// <summary>
            /// Deletes a user from a role
            /// <param name="user">username of the user to be removed from roles</param>
            /// </summary>
            cf_Role_Delete_ByUser,
            /// <summary>
            /// Creates a role
            /// <param name="type">adds a role type</param>
            /// </summary>
            cf_Role_Type_Create,
            /// <summary>
            /// Deletes Role type
            /// <param name="type">role type to be completely removed</param>
            /// </summary>
            cf_Role_Type_Delete_ByType,
            /// <summary>
            /// Creates a team member
            /// <param name="name">name of the team member</param>
            /// <param name="email">email of the team member</param>
            /// <param name="position">position of the team member</param>
            /// </summary>
            cf_TeamMember_Create,
            /// <summary>
            /// Deletes a team member completely
            /// <param name="email">email of Team Member to be deleted</param>
            /// </summary>
            cf_TeamMember_Delete_ByEmail,
            /// <summary>
            /// Deletes a team member completely
            /// <param name="id">id of the Team Memember to be deleted</param>
            /// </summary>
            cf_TeamMember_Delete_ById,
            /// <summary>
            /// Updates Team Member's email
            /// <param name="oldEmail">old email</param>
            /// <param name="newEmail">new email</param>
            /// </summary>
            cf_TeamMember_Update_Email_ByEmail,
            /// <summary>
            /// Updates user email
            /// <param name="oldEmail">old email</param>
            /// <param name="newEmail">new email</param>
            /// </summary>
            cf_TeamMember_Update_Email_ByEmail,
            /// <summary>
            /// Updates user email
            /// <param name="id">id of the user</param>
            /// <param name="email">new email</param> 
            /// </summary>
            cf_TeamMember_Update_Email_ById,
            /// <summary>
            /// Updates a Team member's name
            /// <param name="id">id of the team member to change</param>
            /// <param name="name">new name of the team member</param>
            /// </summary>
            cf_TeamMember_Update_Name_ById,
            /// <summary>
            /// Updates a Team Member Position
            /// <param name="email">email of the team member</param>
            /// <param name="position">new position of the team member</param>
            /// </summary>
            cf_TeamMember_Update_Position_ByEmail,
            /// <summary>
            /// Updates a Team Member Position
            /// <param name="id">id of the Team Member</param>
            /// <param name="position">new position of the user</param>
            /// </summary>
            cf_TeamMember_Update_Position_ById,
            /// <summary>
            /// Creates a user
            /// <param name="name">username</param>
            /// <param name="email">email of the user</param>
            /// <param name="phone">phone number</param>
            /// <param name="password">passsword</param>
            /// <param name="salt">salt to be used on the user account</param>
            /// </summary>
            cf_Users_Create,
            /// <summary>
            /// Removes a user
            /// <param name="email">eamil of user to be removed</param>
            /// </summary>
            cf_Users_Delete_ByEmail,
            /// <summary>
            /// Removes a user
            /// <param name="name">username to be deleted</param>
            /// </summary>
            cf_Users_Delete_ByName,
            /// <summary>
            /// Updates user email
            /// <param name="name">username</param>
            /// <param name="email">new email for the user</param>
            /// </summary>
            cf_Users_Update_email_ByName,
            /// <summary>
            /// Updates user password
            /// <param name="name">username</param>
            /// <param name="password">new user password</param>
            /// </summary>
            cf_Users_Update_Password_ByName,
            /// <summary>
            /// Updates a user phone number
            /// <param name="name">the username</param>
            /// <param name="phone">new phone number</param>
            /// </summary>
            cf_Users_Update_Phone_ByName,
            cf_Project_DeleteById
        }
        private const int TIME_OUT = 5;
        private const string defaultConnection = "Clankyfoot";
        private static System.Data.SqlClient.SqlConnection connection { get; set; }
        private static System.Data.SqlClient.SqlCommand command { get; set; }
        private static System.Xml.XmlDocument doc;
        /// <summary>
        /// gets the connection string from a config file
        /// </summary>
        /// <param name="connectionName">name of the connection in the Web.config file</param>
        /// <returns></returns>
        private static string getConnectionString(string connectionName)
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings[connectionName].ConnectionString;
        }
        /// <summary>
        /// builds a connection object
        /// </summary>
        private static void buildConnection()
        {
            connection = new System.Data.SqlClient.SqlConnection(getConnectionString(defaultConnection));
        }
        /// <summary>
        /// builds a command object against the connection object
        /// </summary>
        /// <param name="stored_procedure">procedure to be called in the database</param>
        public static void prepare(Procedure stored_procedure, string[] names, object[] values)
        {
            if (connection.Equals(null))
            {
                throw new NullReferenceException("The connection object has not been initialized");
            }
            command = connection.CreateCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = stored_procedure.ToString();
            command.CommandTimeout = TIME_OUT;
            for(int i = 0; i < names.Length; i++)
            {
                command.Parameters.AddWithValue(names[i], values[i]);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="stored_procedure"></param>
        /// <returns></returns>
        public static System.Xml.XmlDocument executeQuery(Procedure stored_procedure, string[] names, object[] values)
        {
            doc = new System.Xml.XmlDocument();
            buildConnection();
            command = connection.CreateCommand();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.CommandText = stored_procedure.ToString();
            command.CommandTimeout = TIME_OUT;
            for (int i = 0; i < names.Length; i++)
            {
                command.Parameters.AddWithValue(names[i], values[i]);
            }
            using(connection)
            {
                connection.Open();
                doc.Load(command.ExecuteXmlReader());
            }
            command.Dispose();

            return doc;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="commandString"></param>
        public static void prepareAsync(Procedure stored_procedures)
        {
            // TODO impliment buildCommandAsync
            throw new NotImplementedException();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public static System.Xml.XmlDocument executeQueryAsync()
        {
            // TODO impliment executeQueryAsync
            throw new NotImplementedException();
        }
    }
}
