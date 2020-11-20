using _1714cluken2g;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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

namespace _1714cluken3b1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        PropertyManager2ModelContainer dbContext;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource peopleViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("peopleViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            dbContext = new PropertyManager2ModelContainer();
            dbContext.People1.Load();
            peopleViewSource.Source = dbContext.People1.Local;
            dbContext.Configuration.AutoDetectChangesEnabled = true;

        }
    }
}
