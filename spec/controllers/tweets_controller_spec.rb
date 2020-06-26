require 'rails_helper'

describe TweetsController do

  describe 'GET #new' do
    it "is renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested tweet to @tweet" do
      tweet = create(:tweet)
      get :edit, params:{id : tweet}
      xpect(assigns(:tweet)).to eq tweet
    end

    it "renders the :edit template" do
      tweet = create(:tweet)
      get :edit,params:{id: tweet }
      expect(response).to render_template :edit
    end
  end

  describe 'GET #index' do
    it "populates an array of tweets ordered by created_at DESC " do
      tweets = create_list(:tweet, 3)  #リストを作成して、データを取得
      get :index #HTTPメソッドとアクション名
      expect(assigns(:tweets)).to match(tweets.sort{ |a, b| b.created_at <=> a.created_at } )
      #expect(assigns(:tweets)).to match(tweets) #matchは引数に配列クラスのインスタンスをとり、expectの引数と比較するマッチャ
    end

    it "render the :index template" do
      get :index
      expect(response).to render_template :index
    end
  end

  

end