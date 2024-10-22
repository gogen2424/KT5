using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Shop_KT5.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder erros = new StringBuilder();
                if (string.IsNullOrEmpty(LoginTextBox.Text))
                {
                    erros.AppendLine("Заполните логин");
                }
                if (string.IsNullOrEmpty(PasswordBox.Password))
                {
                    erros.AppendLine("Заполните Пароль");
                }
                if (Data.Stepanyan_GeorgyEntities.GetContext().Workers.Any(d => d.Login == LoginTextBox.Text && d.Password == PasswordBox.Password))
                {
                    Messa
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show()
            }

              
        }

        
    }
}
