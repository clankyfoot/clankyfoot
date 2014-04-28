using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Helpers.Interfaces
{
    interface IConnectionHelper
    {
        string getConnectionString(string connectionName);
        void buildConnection();
        void buildConnection(string connectionString);
        void buildCommand(string commandString);
        void buildCommandAsync(string commandString);
        System.Xml.XmlDocument executeQueryAsync();
        System.Xml.XmlDocument executeQuery();
    }
}
