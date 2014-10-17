using System.Windows;
using MyCoolLibrary;

namespace MyCoolApplication
{
    public partial class MainWindow
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            MessageBox.Show(string.Format(
                "New random number: {0}", MyRandomGenerator.GetRandom()));
        }
    }
}