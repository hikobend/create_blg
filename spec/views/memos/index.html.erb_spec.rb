# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'memos/index', type: :view do
  before do
    assign(:memos, [
             Memo.create!(
               title: 'Title',
               content: 'MyText'
             ),
             Memo.create!(
               title: 'Title',
               content: 'MyText'
             )
           ])
  end

  it 'renders a list of memos' do
    render
    assert_select 'tr>td', text: 'Title'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
  end
end
