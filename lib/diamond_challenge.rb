class DiamondChallenge
  def count_and_remove_diamonds(expression)
    diamond_count = 0
    remove_sand(expression)
    while expression.include?("<>")
      diamonds_found = expression.scan("<>").count
      diamond_count += diamonds_found
      expression.gsub!("<>", "")
    end

    diamond_count
  end

  private

  def remove_sand(expression)
    expression.delete!(".")
  end
end
