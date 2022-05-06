# frozen_string_literal: true

def random_group
  shuffled_members = %w[A B C D E F].shuffle
  if rand(1..10).even?
    # 偶数の場合、3と3に分ける
    shuffled_members.each_slice(3) { |group| p group.sort }
  else
    # 奇数の場合、2と4に分ける、後ろから2つ除外
    group_one = shuffled_members.pop(2)
    group_two = shuffled_members.sort.to_s
    puts group_one.sort.to_s
    puts group_two
  end
end

random_group
