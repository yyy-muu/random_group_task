# frozen_string_literal: true

def random_group
  shuffled_members = %w[A B C D E F].shuffle
  rng = (1..2).to_a
  if rng.sample == 1
    # 1が出た場合、3と3に分ける
    shuffled_members.each_slice(3) { |group| p group.sort }
  else
    # 2が出た場合、2と4に分ける (後ろから2つの要素を除外)
    group_one = shuffled_members.pop(2)
    group_two = shuffled_members.sort
    p group_one.sort
    p group_two
  end
end

random_group
