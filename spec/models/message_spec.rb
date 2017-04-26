require 'rails_helper'
include ActionDispatch::TestProcess

describe Message do
  describe '#create' do
    it 'コメントが存在する場合、保存できること' do
      message = build(:message, image: '')
      message.valid?
      expect(message).to be_valid
    end

    it '画像が存在する場合、保存できること' do
      message = build(:message, comment: '')
      message.valid?
      expect(message).to be_valid
    end

    it 'コメントと画像がある場合、保存できること' do
      expect(build(:message)).to be_valid
    end

    it 'コメントも画像も無い場合、保存できないこと' do
      message = build(:message, comment: '', image: '')
      expect(message.save).to be_falsey
    end

  end
end