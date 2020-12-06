class GamesController < ApplicationController
    def index
        # byebug
        games = Game.all
        render json: games
      end
    
      def show
        game = Game.find(params[:id])
        render json: {game: game}
      end
    
      def create
        # byebug
        game = Game.create(game_params)
        render json: {name: game.name, title: game.title, price: game.price, description: game.description, quantity: game.quantity, sku: game.sku, cost: game.cost, image: game.image, owner_id: game.owner_id}
    
      end
    
    
    
      def update
        # byebug
        game = Game.find(params[:id])
        game.update(game_params)
        render json: {game: game, message: "quantity has been updated"}
      end
    
      def destroy
        game = Game.find(params[:id])
        game.destroy
        render json: {message: "The game has been deleted"}
      end
    
      private
    
      def game_params
        params.require(:game).permit(:name, :title, :description, :price, :quantity, :sku, :cost, :image, :owner_id)
      end
end
