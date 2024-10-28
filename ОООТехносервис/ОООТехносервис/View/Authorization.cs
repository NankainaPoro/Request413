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

namespace ОООТехносервис
{
    public partial class Authorization : Form
    {
        public Authorization()
        {
            InitializeComponent();
            //Устанвока связи с БД
            try
            {
                Helper.DB = new Model.DBVakulenkoRequests413Entities();
                MessageBox.Show("Связь с БД установлена");
            }
            catch 
            {
                MessageBox.Show("Связь с БД не установлена");
            } 
           
           
        }
        /// <summary>
        /// Завершение приложения
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        private void btnExit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnEnter_Click(object sender, EventArgs e)
        {
            //Вход в систему
            //string login = textBoxLogin.Text;
            //string password = textBoxPassword.Text;
            //List<Model.User> users = Helper.DB.User.ToList();
            //users.Where(u => u.UserLogin == login && u.UserPassword == password).ToList();
            Helper.user = Helper.DB.User.Where(u => u.UserLogin == textBoxLogin.Text && u.UserPassword == textBoxPassword.Text).FirstOrDefault();
            if (Helper.user != null)
            {
                MessageBox.Show(Helper.user.UserFullName + ", вы вошли с ролью " + Helper.user.Role.RoleName);

                //Создание объекта окна заявок и переход к нему
                View.ListRequests listRequests = new View.ListRequests();
                Hide();
                listRequests.ShowDialog();
                Show();
            }
            else 
            {
                MessageBox.Show("Пользователь не найден");
            }
        }

        private void Authorization_Load(object sender, EventArgs e)
        {
            CenterToScreen();
        }
    }
}
