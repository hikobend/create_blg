# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'memos/edit', type: :view do
  before do
    @memo = assign(:memo, Memo.create!(
                            title: 'MyString',
                            content: 'MyText'
                          ))
  end

  it 'renders the edit memo form' do
    render

    assert_select 'form[action=?][method=?]', memo_path(@memo), 'post' do
      assert_select 'input[name=?]', 'memo[title]'

      assert_select 'textarea[name=?]', 'memo[content]'
    end
  end
end
