require 'rails_helper'

RSpec.describe Card, type: :model do
  before do
    @card = FactoryBot.build(:card)
  end

  describe 'cardの保存' do
    context 'card投稿できるとき' do
      it 'titleとtask_listが存在すれば投稿できる' do
        expect(@card).to be_valid
      end
    end

    context 'cardが投稿できないとき' do
      it 'contentが空では投稿出来ない' do
        @card.content = ''
        @card.valid?
        expect(@card.errors.full_messages).to include("Content can't be blank") 
      end
      it 'contentが30文字以上では投稿出来ない' do
        @card.content = Faker::Lorem.characters(number: 31)
        @card.valid?
        expect(@card.errors.full_messages).to include('Content is too long (maximum is 30 characters)')
      end
      it 'memoが1000文字以上では投稿出来ない' do
        @card.memo = Faker::Lorem.characters(number: 1001)
        @card.valid?
        expect(@card.errors.full_messages).to include('Memo is too long (maximum is 1000 characters)')
      end
      it 'task_listと紐づいていないと投稿できない' do
        @card.task_list = nil
        @card.valid?
        expect(@card.errors.full_messages).to include("Task list must exist") 
      end

    end
  end
end
