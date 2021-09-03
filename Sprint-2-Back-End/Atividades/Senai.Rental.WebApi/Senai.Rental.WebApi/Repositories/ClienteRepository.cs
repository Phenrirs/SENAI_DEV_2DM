using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Senai.Rental.WebApi.Domains;
using Senai.Rental.WebApi.Interfaces;

namespace Senai.Rental.WebApi.Repositories
{
    public class ClienteRepository : IClienteRepository
    {
        /// <summary>
        /// String de conexão com o banco de dados que recebe os parâmetro!
        /// </summary>
        private string stringConexao = "Data source=DESKTOP-K4LS7DJ\\SQLEXPRESS; initial catalog=M_Rental; user id=sa; pwd=Senai@132";

        //Repositório responsável pela atualização através do id do corpo!
        public void AtualizarIdCorpo(ClienteDomain clienteAtualizado)
        {
            //O que é "!=" = Diferença
            if (clienteAtualizado.nomeCliente != null)
            {
                using (SqlConnection con = new SqlConnection(stringConexao))
                {
                    string queryUpdateBody = "UPDATE CLIENTE SET nomeCliente = @nomeCliente Where idCliente = @idCliente";

                    using (SqlCommand cmd = new SqlCommand(queryUpdateBody, con))
                    {
                        cmd.Parameters.AddWithValue("@nomeCliente", clienteAtualizado.nomeCliente);

                        cmd.Parameters.AddWithValue("@idCliente", clienteAtualizado.idCliente);

                        con.Open();

                        cmd.ExecuteNonQuery();
                    }
                }
            }
        }

        //Repositório responsável pela atualização através do id da url!
        public void AtualizarIdUrl(int idCliente, ClienteDomain clienteAtualizado)
        {
            using(SqlConnection con = new SqlConnection(stringConexao))
            {
                string queryUpdateUrl = "UPADATE CLIENTE SET nomeCliente = @nomeCliente WHERE idCliente =@idCliente";
                
                using(SqlCommand cmd = new SqlCommand(queryUpdateUrl, con))
                {
                    cmd.Parameters.AddWithValue("@nomeCliente", clienteAtualizado.nomeCliente);
                    cmd.Parameters.AddWithValue(@"idCliente", idCliente);

                    con.Open();

                    cmd.ExecuteNonQuery();
                }
            }
        }

        //Repositório responsável pela busca por id!
        public ClienteDomain BuscarPorId(int idCliente)
        {
            //
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                string querySelectById = "SELECT idCliente, nomeCliente, sobreNome FROM Cliente WHERE idCliente = @idCliente";

                con.Open();

                SqlDataReader reader;

                using (SqlCommand cmd = new SqlCommand(querySelectById, con))
                {
                    cmd.Parameters.AddWithValue("@idCliente", idCliente);

                    reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        ClienteDomain clienteBuscado = new ClienteDomain
                        {
                            idCliente = Convert.ToInt32(reader["idCliente"]),

                            nomeCliente = reader["nomeCliente"].ToString(),

                            sobreNome = reader["sobreNome"].ToString(),
                        };

                        return clienteBuscado;
                    }

                    return null;
                }

            }


        }

        //Repositório responsável por Cadastrar!
        public void Cadastrar(ClienteDomain novoCliente)
        {
            //Falta

            throw new NotImplementedException();
        }

        //Repositório responsável por Deletar
        public void Deletar(int idCliente)
        {
            //Falta
            throw new NotImplementedException();
        }

        /// <summary>
        /// Lista de todos os Clientes!
        /// </summary>
        /// <returns></returns>
        public List<ClienteDomain> ListarTodos()
        {
            //
            List<ClienteDomain> ListaCliente = new List<ClienteDomain>();

            //
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                //
                string querySelectAll = "SELECT idCliente, nomeCliente, sobreNome FROM Cliente;";

                //
                con.Open();

                //
                SqlDataReader rdr;

                //
                using (SqlCommand cmd = new SqlCommand(querySelectAll, con))
                {
                    //
                    rdr = cmd.ExecuteReader();

                    //
                    while (rdr.Read())
                    {
                        //
                        ClienteDomain Cliente = new ClienteDomain()
                        {
                            //
                            idCliente = Convert.ToInt32(rdr[0]),

                            //
                            nomeCliente = rdr[1].ToString(),

                            //
                            sobreNome = rdr[2].ToString()

                        };
                        //Sem isso o retono não vai funcionar pois esse ListaCliente.Add se refere ao comando que adiciona os dados do banco na tela do usuário
                        //Através da api!
                        ListaCliente.Add(Cliente);
                    }
                }
            }
            //Retorna a lista de Clientes para a tela do usuário!
            return ListaCliente;
        }



       

       
    }
}
