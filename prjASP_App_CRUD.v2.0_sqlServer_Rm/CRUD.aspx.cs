using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; // events
using System.Windows.Forms; // messageBox
// Data system
using System.Data;
using System.Data.SqlClient;



namespace prjASP_App_CRUD.v2._0_sqlServer_Rm
{
    public partial class CRUD : System.Web.UI.Page
    {
        // Error 40: Could not open a connection to SQL Server fixed with  http://msdn.microsoft.com/en-us/library/ms174212.aspx
        // in My computer : C:\Windows\SysWOW64\SQLServerManager14.msc

        // 1. Obj base de donnees Connexion
        SqlConnection Connexion = new SqlConnection("Data Source = .; DataBase = bd_crud_client; Integrated Security=true");

        // 2. Store query rows
        DataTable table = new DataTable();

        // 3. Open Connexion
        public void OpenConnection()
        {
            if (Connexion.State == ConnectionState.Closed)
            {
                Connexion.Open();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnEffacer.Enabled = false;
                // Exécuter load dataGridView
                AfficherClients();
            }
        }

        /// <summary>
        /// 4. Charge les informations de client dans le dataGridView
        /// </summary>
        void AfficherClients()
        {
            try
            {
                // 1. Execute open connection
                OpenConnection();
                // 2. Execute stored procedure
                SqlDataAdapter dataAdapter = new SqlDataAdapter("selectallTclient", Connexion);
                // 3. Execute Specify the command type
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                // 4. Execute load the table
                dataAdapter.Fill(table);
                // 5. Execute close connection
                Connexion.Close();
                // 6. Execute gets the info client
                gvClient.DataSource = table;

                // 7. Excute joins the table with the control GridView
                gvClient.DataBind();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Erreur dans l'insertion : " + " " + ex.Message);
            }
        }

        /// <summary>
        /// 5. Sélectionnez le client info en chaque ligne dans le dataGridView
        /// </summary>
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            try
            {
                // Select client by id
                int idclient = Convert.ToInt32((sender as LinkButton).CommandArgument);
                //  Gets idclient value
                hfidclient.Value = idclient.ToString();

                // 1. Execute open connection
                OpenConnection();
                // 2. Execute stored procedure
                SqlDataAdapter dataAdapter = new SqlDataAdapter("selectClientByid", Connexion);
                // 3. Execute Specify the command type
                dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                // 4. Execute parameters
                dataAdapter.SelectCommand.Parameters.AddWithValue("@aidclient", idclient);
                // 5. Execute load the table
                dataAdapter.Fill(table);
                // 6. Execute close connection
                Connexion.Close();

                // select clietn by row
                txtclientNumber.Text = table.Rows[0]["clientNumber"].ToString();
                txtname.Text = table.Rows[0]["name"].ToString();
                txtlastName.Text = table.Rows[0]["lastName"].ToString();
                txtemail.Text = table.Rows[0]["email"].ToString();
                txtimg.Text = table.Rows[0]["img"].ToString();
                txtaddress.Text = table.Rows[0]["address"].ToString();
                txtcardNumber.Text = table.Rows[0]["cardNumber"].ToString();
                txtnip.Text = table.Rows[0]["nip"].ToString();
                txtidagencies.Text = table.Rows[0]["idagencies"].ToString();
                txtidemployee.Text = table.Rows[0]["idemployee"].ToString();
                // btnSave to btnUpdate
                btnEnregistrer.Text = "Mettre à jour";
                btnEffacer.Enabled = true;
                lblSuccesMessage.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        /// <summary>
        /// 6. Enregistrer et mettre à jour informations de client
        /// </summary>
        protected void btnEnregistrer_Click(object sender, EventArgs e)
        {
            // Get info from text boxes
            string clientNumber = txtclientNumber.Text.Trim();
            string name = txtname.Text.Trim();
            string lastName = txtlastName.Text.Trim();
            string email = txtemail.Text.Trim();
            string img = txtimg.Text.Trim();
            string address = txtaddress.Text.Trim();
            string cardNumber = txtcardNumber.Text.Trim();
            string nip = txtnip.Text.Trim();
            string idagencies = txtidagencies.Text.Trim();
            string idemployee = txtidemployee.Text.Trim();
            // 1. Execute open connection
            OpenConnection();
            // 2. Execute stored procedure
            SqlCommand command = new SqlCommand("spserver_save_client", Connexion);
            command.CommandType = CommandType.StoredProcedure;
            // 4. Execute parameters
            command.Parameters.AddWithValue("@aidclient", (hfidclient.Value == "" ? 0 : Convert.ToInt32(hfidclient.Value)));
            command.Parameters.AddWithValue("@aclientNumber", clientNumber);
            command.Parameters.AddWithValue("@aname", name);
            command.Parameters.AddWithValue("@alastName", lastName);
            command.Parameters.AddWithValue("@aemail", email);
            command.Parameters.AddWithValue("@aimg", img);
            command.Parameters.AddWithValue("@aaddress", address);
            command.Parameters.AddWithValue("@acardNumber", cardNumber);
            command.Parameters.AddWithValue("@anip", nip);
            command.Parameters.AddWithValue("@aidagencies", idagencies);
            command.Parameters.AddWithValue("@aidemployee", idemployee);
            // 5. Execute instruction SQL
            command.ExecuteNonQuery();
            // 6. Execute close connection
            Connexion.Close();
            // 7. Execute clear controlls
            clair();
            // 8. Execute load dataGridView
            AfficherClients();
            // 9. Gets idclient value
            string idclient = hfidclient.Value;
            // 10. Select succes or update
            if (idclient == "")
            {
                lblSuccesMessage.Text = "Msg : " + " " + "Enregistré avec succès";
            }
            else
            {
                lblSuccesMessage.Text = "Msg : " + " " + "Mis à jour avec succés";
            }
        }

        /// <summary>
        /// 7. Supprimer information de client dans la base de données
        /// </summary>
        protected void btnEffacer_Click(object sender, EventArgs e)
        {
            // 1. Execute open connection
            OpenConnection();
            // 2. Execute stored procedure
            SqlCommand command = new SqlCommand("deleteTclient", Connexion);
            // 3. Execute Specify the command type
            command.CommandType = CommandType.StoredProcedure;
            // 4. Execute parameters
            command.Parameters.AddWithValue("@aidclient", Convert.ToInt32(hfidclient.Value));
            // 5. Execute instruction SQL
            command.ExecuteNonQuery();
            // 6. Execute close connection
            Connexion.Close();
            // 7. Clear controlls
            clair();
            // 8. Execute load dataGridView
            AfficherClients();
            // 9. Execute lbl succes
            lblSuccesMessage.Text = "Supprimé avec succès";
        }

        /// <summary>
        /// 8. Nettoie les contrôles dans l'application
        /// </summary>
        protected void btnClair_Click(object sender, EventArgs e)
        {
            clair();
        }

        /// <summary>
        /// 8. Nettoie les contrôles dans l'application
        /// </summary>
        public void clair()
        {
            // hiden idclient
            hfidclient.Value = "";
            // text boxes
            txtclientNumber.Text = txtname.Text = txtlastName.Text = txtemail.Text = txtimg.Text = txtaddress.Text = "";
            txtcardNumber.Text = txtnip.Text = txtidagencies.Text = txtidemployee.Text = "";
            // lbl Message
            lblSuccesMessage.Text = lblErrorMessage.Text = "";
            // buttons
            btnEnregistrer.Text = "Enregistrer";
            btnEffacer.Enabled = false;
        }
    }
}