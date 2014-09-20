class DeathNoticesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_death_notice, only: [:show, :edit, :update, :destroy]

  # GET /death_notices
  # GET /death_notices.json
  def index
    @death_notices = DeathNotice.all
  end

  # GET /death_notices/1
  # GET /death_notices/1.json
  def show
  end

  # GET /death_notices/new
  def new
    @death_notice = DeathNotice.new
  end

  # GET /death_notices/1/edit
  def edit
  end

  # POST /death_notices
  # POST /death_notices.json
  def create
    @death_notice = DeathNotice.new(death_notice_params)
    @death_notice.user = current_user

    respond_to do |format|
      if @death_notice.save
        format.html { redirect_to @death_notice, notice: 'Death notice was successfully created.' }
        format.json { render :show, status: :created, location: @death_notice }
      else
        format.html { render :new }
        format.json { render json: @death_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /death_notices/1
  # PATCH/PUT /death_notices/1.json
  def update
    respond_to do |format|
      if @death_notice.update(death_notice_params)
        format.html { redirect_to @death_notice, notice: 'Death notice was successfully updated.' }
        format.json { render :show, status: :ok, location: @death_notice }
      else
        format.html { render :edit }
        format.json { render json: @death_notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /death_notices/1
  # DELETE /death_notices/1.json
  def destroy
    @death_notice.destroy
    respond_to do |format|
      format.html { redirect_to death_notices_url, notice: 'Death notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @death_notice.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_death_notice
      @death_notice = DeathNotice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def death_notice_params
      params.require(:death_notice).permit(:title, :date_added, :client_born, :client_died, :eulogy, :burial_date, :meeting_date, :burial_location, :meeting_location, :client_picture, :comments, :user_id)
    end
end
