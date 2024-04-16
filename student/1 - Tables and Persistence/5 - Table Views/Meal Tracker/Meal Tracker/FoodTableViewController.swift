import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let firstBreakfastFood = Food(name: "Poha", description: "Made up of Rice")
        let secondBreakfastFood = Food(name: "Parantha", description: "Made up of Wheat")
        let thirdBreakfastFood = Food(name: "Cornflakes", description: "Multigrain Meal")
        let breakfast = Meal(name: "Breakfast", food: [firstBreakfastFood, secondBreakfastFood, thirdBreakfastFood])
        
        let firstLunchFood = Food(name: "Roti", description: "Made of Wheat Flour")
        let secondLunchFood = Food(name: "Rice", description: "A crop")
        let thirdLunchFood = Food(name: "Dal", description: "Source of Protein")
        let lunch = Meal(name: "Lunch", food: [firstLunchFood, secondLunchFood, thirdLunchFood])
        
        let firstDinnerFood = Food(name: "Noodles", description: "Chinese dish")
        let secondDinnerFood = Food(name: "Fried Rice", description: "Rice saute in oil with veggies")
        let thirdDinnerFood = Food(name: "Manchurian", description: "Balls made of up cabbage")
        let dinner = Meal(name: "Dinner", food: [firstDinnerFood, secondDinnerFood, thirdDinnerFood])
        
        return [breakfast, lunch, dinner]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let meal = meals[section]
        let food = meal.food
        
        return food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.text = food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        
        return meal.name
    }
    
}
