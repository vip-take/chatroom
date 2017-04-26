require 'rails_helper'

describe Group do
  describe '#create' do
    let(:group) { build(:group, :with_group_members) }
    let(:group01) { create(:group, :with_group_members) }
    let(:group_without_members) { build(:group) }

    it 'グループ名が正しく、メンバーも存在する場合、保存できること' do
      expect(group).to be_valid
    end

    it ' グループ名が空の場合、保存できないこと' do
      group01 = group
      group01.name = ''
      group01.valid?
      expect(group01.errors[:name]).to be_present
    end

    it 'グループ名が既に存在する場合、保存できないこと' do
      group02 = group
      group02.name = group01.name
      group.valid?
      expect(group02.errors[:name]).to be_present
    end

    it 'メンバーが存在しない場合、保存できないこと'do
      group = group_without_members
      expect(group.save).to be_falsey
    end
  end
end
