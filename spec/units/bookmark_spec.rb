require 'bookmark'
describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      expect(Bookmark.all).to include('http://google.com')
    end
  end
end