class BoardsController <  ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to board_path(@board), notice: '保存できました'
    else
      flash.now[:error] = '保存できませんでした'
      render :new
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    if @board.update(board_params)
      redirect_to board_path(@board), notice: '変更できました'
    else
      flash.now[:error] = '変更できませんでした'
      render :edit
    end
  end

  private
  def board_params
    params.require(:board).permit(:title, :content)
  end

end
