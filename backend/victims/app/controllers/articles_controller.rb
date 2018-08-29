class ArticlesController <  ApplicationController   
    #this is a GET
    def index
        articles = Article.order('created_at DESC');
        render json: {status: 'SUCCESS', message: 'Loaded articles', data: articles},status: :ok
    end
    #this is a GET
    def show
        article = Article.find(params[:id]);
        render json: {status: 'SUCCESS', message: 'Loaded article', data: article},status: :ok
    end
    #this is a POST
    def create
        article = Article.new(article_params)
        if article.save
            render json: {status: 'SUCCESS', message: 'Saved article', data: article},status: :ok
        else 
            render json: {status: 'ERROR', message: 'Article not saved', data: article.errors},status: :unprocessable_entry
        end
    end

    def destroy
        #1. ORDER
        #find the article which is specified in the params
        article=Article.find(params[:id]);
        #then destroy
        article.destroy

        #2. WHAT RETURN
        render json: {status: 'SUCCESS', message: 'article destroyed', data: article},status: :ok
    end

    def update
         #1. ORDER
        #find the article which is specified in the params
        article=Article.find(params[:id]);
        #updates the article according to the passed params
        if article.update_attributes(article_params)
            #What return if success
            render json: {status: 'SUCCESS', message: 'updated article', data: article},status: :ok
        else
            #What return if fails
            render json: {status: 'ERROR', message: 'Article not updated', data: article.errors},status: :unprocessable_entry
       end
    end
        



    private 
    def article_params
        params.permit(:title, :body)
    end


    
    
end
