class Herman
  def read_instructions(filepath)
    instructions = []
    File.readlines(filepath).each do |line|
        instructions.push(line.chomp)
    end

    hash = {position: instructions[0].split(","),
            movements: instructions[1].split("")}

  end

  def travel(directions_hash)

  end
end
