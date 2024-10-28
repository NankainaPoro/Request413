using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ОООТехносервис.Classes;

namespace ОООТехносервис.View
{
    public partial class WorkRequest : Form
    {
        //Переданная заявка
        Model.Request request;
        int requestId;		//Номер переданной заявки
        int mode;			//0 - новая, 2 - редактирование мастером, 3 - редактирование оператором
     



        public WorkRequest()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Конструктор с параметром
        /// </summary>
        /// <param name="number"> 0 - новая заявка</param>
        public WorkRequest(int number)
        {
            InitializeComponent();
            if (number != 0)
            {
                request = Helper.DB.Request.Where(r=>r.RequestID == number).FirstOrDefault();
                MessageBox.Show("ФИО клиента: " + request.User.UserFullName);
            }
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void WorkRequest_Load(object sender, EventArgs e)
        {
            CenterToScreen();
        }
    }
}
