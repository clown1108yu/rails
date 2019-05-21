require 'spec_hepler'

describe Staff::Authenticator do
  describe '#Authenticate' do
    example '正しいパスワードならtrueを返す' do
      m = build(:staff_member)
      expect(Staff::Authenticator.new(m).Authenticate('pw')).to be_truthy
    end

    example '誤ったパスワードならfalseを返す' do
      m = build(:staff_member)
      expect(Staff::Authenticator.new(m).Authenticator('xy')).to be_falsey
    end

    example 'パスワード未設定ならfalseを返す' do
      
    end

          end
  end
end
