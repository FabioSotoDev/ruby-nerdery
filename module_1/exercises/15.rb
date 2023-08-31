# What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
    puts "These hashes are the same!"
else
    puts "These hashes are not the same!"
end

# "These hashes are the same!", since they have same keys and same values 
# for each key, it does not matter the keys position.