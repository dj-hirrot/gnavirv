class Api::V1::SearchesController < ApplicationController
  def index
    @shops = Gurumes::SearchService.new(params[:area], params[:food]).run
  end
end
