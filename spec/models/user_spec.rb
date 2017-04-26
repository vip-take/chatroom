require 'rails_helper'

describe User do
  describe '#create' do
    it '名前、メールアドレス、パスワードの入力値が正しい場合、保存できること' do
      expect(build(:user)).to be_valid
    end

    it '名前がブランクの場合、保存できないこと' do
      user = build(:user, name: '')
      user.valid?
      expect(user.errors[:name]).to be_present
    end

    it 'メールアドレスがブランクの場合、保存できないこと' do
      user = build(:user, email: '')
      user.valid?
      expect(user.errors[:email]).to be_present
    end

    it 'メールアドレスのフォーマットが正しくない場合、保存できないこと' do
      user = build(:user, email: 'aaa')
      user.valid?
      expect(user.errors[:email]).to be_present
    end

    it 'passwordの文字列が５文字の場合、保存できないこと' do
      user = build(:user, password: '12345', password_confirmation: '12345')
      user.valid?
      expect(user.errors[:password]).to be_present
    end

    it 'passwordとpassword_confirmationが不一致の場合保存できないこと' do
      user = build(:user, password: '123456', password_confirmation: '123455')
      user.valid?
      expect(user.errors[:password_confirmation]).to be_present
    end
  end
end
