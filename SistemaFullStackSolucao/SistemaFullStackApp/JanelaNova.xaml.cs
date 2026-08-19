using System.Windows;

namespace SistemaFullStackApp
{
    public partial class JanelaNova : Window
    {
        public JanelaNova()
        {
            InitializeComponent();
        }

        private void btnCadastrar_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNome.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtSenha.Password) ||
                string.IsNullOrWhiteSpace(txtCpf.Text))
            {
                MessageBox.Show(
                    "Preencha todos os campos.",
                    "Atenção",
                    MessageBoxButton.OK,
                    MessageBoxImage.Warning);

                return;
            }

            MessageBox.Show(
                "Cadastro realizado com sucesso!",
                "Sucesso",
                MessageBoxButton.OK,
                MessageBoxImage.Information);

            DialogResult = true;
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
        }
    }
}