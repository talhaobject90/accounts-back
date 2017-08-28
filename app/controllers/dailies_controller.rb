# frozen_string_literal: true

class DailiesController < ApplicationController
  before_action :set_daily, only: [:show, :update, :destroy]

  # GET /dailies
  def index
    @dailies = Daily.all

    render json: @dailies
  end

  # GET /dailies/1
  def show
    render json: @daily
  end

  # POST /dailies
  def create
    @daily = Daily.new(daily_params)

    if @daily.save
      render json: @daily, status: :created, location: @daily
    else
      render json: @daily.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dailies/1
  def update
    if @daily.update(daily_params)
      render json: @daily
    else
      render json: @daily.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dailies/1
  def destroy
    @daily.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @daily = Daily.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def daily_params
      params.fetch(:daily, {})
    end
end
