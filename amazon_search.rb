# -*- coding: utf-8 -*-
require 'amazon/ecs'

Amazon::Ecs.options = {
  :associate_tag => 'アフィリエイトID'
  :AWS_access_key_id => 'AWSのAccessKeyID',
  :AWS_secret_key => 'AWSのSecretKey'
}

# Rubyというキーワードで検索
amazon = Amazon::Ecs.item_search('Ruby', :search_index => 'All', country: 'jp')

amazon.items.each do |item|
  puts item.get("DetailPageURL")  # 詳細ページURLを取得
  puts item.get("ItemAttributes/Title")  # 商品タイトルを取得
end
