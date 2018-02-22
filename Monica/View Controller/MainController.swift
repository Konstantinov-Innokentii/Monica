import UIKit

class MainController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    var selectedTopic = String()
    
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
        topicsVC?.selectedTopic = selectedTopic
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTopic = (tableView.cellForRow(at: indexPath)?.reuseIdentifier)!
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    
}
