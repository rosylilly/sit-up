# -*- coding: utf-8 -*-
# テーマ：与えられた配列を適当に並べ替えて２分割してください。
# 用途　：チームで昼飯を食いに行く会の組み合わせを決める
# 　　　　→あまり人数が多いと店に入れないので、
# 　　　　　10人前後の参加者をランダムに２組に分けたい

class LunchMembers
  def self.shuffle(members)
    members.
      shuffle.
      each_with_index.
      partition { |element|
        element.last.odd?
      }.
      map { |group|
        group.map(&:first)
      }
  end
end
