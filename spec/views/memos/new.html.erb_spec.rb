# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'memos/new', type: :view do
  before do
    assign(:memo, Memo.new(
                    title: 'MyString',
                    content: 'MyText'
                  ))
  end

  it 'renders new memo form' do
    render

    assert_select 'form[action=?][method=?]', memos_path, 'post' do
      assert_select 'input[name=?]', 'memo[title]'

      assert_select 'textarea[name=?]', 'memo[content]'
    end
  end
end
