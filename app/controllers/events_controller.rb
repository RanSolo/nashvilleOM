class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  # GET /events
  # GET /events.json
  def index
    @events = Event.all.sort_by &:start_time
    get_bands
  end

  # GET /events/1
  # GET /events/1.json
  def show
    set_event
    @user = current_user
  end

  # GET /events/new
  def new
    @event = Event.new
    get_bands
  end

  # GET /events/1/edit
  def edit
    get_bands
  end

  # POST /events
  # POST /events.json
  def create
    @band = Band.find(params[:band_id])
    @event = @band.events.create(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    def get_bands
      @bands = Band.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :band_id, :description, :start_time, :end_time)
    end

    def authorize_admin
      redirect_to :events, :status => 401 unless current_user && current_user.admin?
      #redirects to previous page
  end
end
