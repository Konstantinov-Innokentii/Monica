import UIKit

class MainController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var indexPathSegue = IndexPath()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let topicsVC = segue.destination as? TopicsController
        topicsVC?.indexPath = indexPathSegue
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexPathSegue = indexPath
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    
}
