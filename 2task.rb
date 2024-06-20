# задание 2
# нужно отсортировать массив хэшей по имени, такой как [{id: 1, name: 'Певцов'}, {id: 2, name: 'Голубцов'}, {id: 3, name: 'Зенков'}]

#!/usr/bin/env ruby

def hashes_sort
   hashes = [{id: 1, name: 'Певцов'}, {id: 2, name: 'Голубцов'}, {id: 3, name: 'Зенков'}]
   sorted_hashes = hashes.sort_by { |hash| hash[:name] }
   puts sorted_hashes
end

if __FILE__ == $0
   hashes_sort
end

