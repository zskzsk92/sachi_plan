require 'rails_helper'

RSpec.describe TaskList, type: :model do
  before do
    @task_list = FactoryBot.build(:task_list)
  end
  
  describe 'task_listの保存' do
    context 'task_listが投稿できるとき' do
      it 'titleとuser_idが存在すれば投稿できる' do
        expect(@task_list).to be_valid
      end
    end

    context 'task_listが投稿できないとき' do
      it 'titleが空では投稿できない' do
        @task_list.title = ''
        @task_list.valid?
        expect(@task_list.errors.full_messages).to include("Title can't be blank") 
      end
      it 'titleが30文字以上では投稿出来ない' do
        @task_list.title = Faker::Lorem.characters(number: 31)
        @task_list.valid?
        expect(@task_list.errors.full_messages).to include('Title is too long (maximum is 30 characters)')
      end
      it 'userと紐づいていないと投稿できない' do
        @task_list.user = nil
        @task_list.valid?
        expect(@task_list.errors.full_messages).to include("User must exist") 
      end

    end
  end
end
