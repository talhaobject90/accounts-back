# frozen_string_literal: true

class PartnersdailiesController < ApplicationController
  before_action :set_partnersdaily, only: [:show, :update, :destroy]

  # GET /partnersdailies
  def index
    @partnersdailies = Partnersdaily.all

    render json: @partnersdailies
  end

  # GET /partnersdailies/1
  def show
    render json: @partnersdaily
  end

  # POST /partnersdailies
  def create
    @partnersdaily = Partnersdaily.new(partnersdaily_params)

    if @partnersdaily.save
      render json: @partnersdaily, status: :created, location: @partnersdaily
    else
      render json: @partnersdaily.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /partnersdailies/1
  def update
    if @partnersdaily.update(partnersdaily_params)
      render json: @partnersdaily
    else
      render json: @partnersdaily.errors, status: :unprocessable_entity
    end
  end

  # DELETE /partnersdailies/1
  def destroy
    @partnersdaily.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partnersdaily
      @partnersdaily = Partnersdaily.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def partnersdaily_params
      params.fetch(:partnersdaily, {})
    end
end
