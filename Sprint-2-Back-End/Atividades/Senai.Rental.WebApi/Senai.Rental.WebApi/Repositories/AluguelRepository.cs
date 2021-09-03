using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Senai.Rental.WebApi.Domains;
using Senai.Rental.WebApi.Interfaces;

namespace Senai.Rental.WebApi.Repositories
{
    public class AluguelRepository : IAluguelRepository
    {
        private string stringConexao = "Data source=DESKTOP-K4LS7DJ\\SQLEXPRESS; initial catalog=M_Rental; user id=sa; pwd=Senai@132";

        public void AtualizaridCorpo(AluguelDomain aluguelAtualizado)
        {

            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int idAluguel, AluguelDomain aluguelAtualizado)
        {
            throw new NotImplementedException();
        }

        public AluguelDomain BuscarId(int idAluguel)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(AluguelDomain novoAluguel)
        {
            throw new NotImplementedException();
        }

        public void Deletar(int idAluguel)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Lista de todos os Aluguéis!
        /// </summary>
        /// <returns></returns>
        public List<AluguelDomain> ListarTodos()
        {
            //
            List<AluguelDomain> ListaAluguel = new List<AluguelDomain>();

            //
            using (SqlConnection con = new SqlConnection(stringConexao)) 
            {
                //
                string querySelectAll = "SELECT idAluguel, idVeiculo, idCliente, Preco, Inicio, Fim FROM Aluguel;";

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
                        AluguelDomain Aluguel = new AluguelDomain()
                        {
                            //
                            idAluguel = Convert.ToInt32(rdr[0]),
                            
                            //
                            idVeiculo = Convert.ToInt32(rdr[1]),
                            
                            //
                            idCliente = Convert.ToInt32(rdr[2]),

                            //
                            Preco = rdr[3].ToString(),
                            
                            //
                            Inicio = rdr[4].ToString(),
                            
                            //
                            Fim = rdr[5].ToString(),
                        };
                        //
                        ListaAluguel.Add(Aluguel);
                    }              
                }            
            }
            //Retorna a lista de Aluguéies para a tela do usuário!
            return ListaAluguel;
        }
    }
}
