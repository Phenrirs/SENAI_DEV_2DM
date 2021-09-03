using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Senai.Rental.WebApi.Domains;
using Senai.Rental.WebApi.Interfaces;

namespace Senai.Rental.WebApi.Repositories
{
    public class VeiculoRepository : IVeiculoRepository
    {
        private string stringConexao = "Data source=DESKTOP-K4LS7DJ\\SQLEXPRESS; initial catalog=M_Rental; user id=sa; pwd=Senai@132";

        public void AtualizarIdCorpo(VeiculoDomain veiculoAtualizado)
        {
            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int idVeiculo, VeiculoDomain veiculoAtualizado)
        {
            throw new NotImplementedException();
        }

        public VeiculoDomain BuscarId(int idVeiculo)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(VeiculoDomain novoVeiculo)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Lista de todos os Veiculos!
        /// </summary>
        /// <returns></returns>
        public List<VeiculoDomain> ListarTodos()
        {
            //
            List<VeiculoDomain> ListaVeiculo = new List<VeiculoDomain>();

            //
            using (SqlConnection con = new SqlConnection(stringConexao))
            {
                //Anotação: No caso dos Joins e inner joins precio aplicar o select inteiro, porém, não precisa ser em uma linha só, ao dar enter na linha 
                // o sistema do VSCommunity aplica uma junção "+" para aquela linha! 
                string querySelectAll = "SELECT idVeiculo, Mo.idModelo, Em.idEmpresa, Placa, nomeModelo, nomeEmpresa, Endereco FROM Veiculo V " +
                                        "RIGHT JOIN Modelo Mo ON V.idModelo = Mo.idModelo " +
                                        "RIGHT JOIN Empresa Em ON V.idEmpresa = Em.idEmpresa; ";

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
                        VeiculoDomain Veiculo = new VeiculoDomain()
                        {
                            //
                            idVeiculo = Convert.ToInt32(rdr[0]),

                            //
                            idModelo = Convert.ToInt32(rdr[1]),

                            //
                            idEmpresa = Convert.ToInt32(rdr[2]),

                            //
                            Placa = rdr[3].ToString(),

                            Modelo = new ModeloDomain()
                            {
                                //
                                nomeModelo = rdr[4].ToString(),
                            },

                            Empresa = new EmpresaDomain()
                            {
                                //
                                nomeEmpresa = rdr[5].ToString(),

                                //
                                Endereco = rdr[6].ToString(),
                            },
                        };
                        //
                        ListaVeiculo.Add(Veiculo);
                    }
                }          
            }
            //Retorna a lista de Veiculos para a tela do usuário!
            return ListaVeiculo;
        }
    }
}
