class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy,:participate]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

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

  def filter_events_by_genre
    chosen_genre = Genre.where({name: params[:genres]})
    @filtered_events = Event.where({genre_id: chosen_genre.pluck(:name)})
  end

  def display_events_map    
	render :my_events
  end

  def participate
    participation = Participation.find_or_create_by(event_id: @event.id, participant_id: current_user.id)
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'You are successfully registered for the event' }
      format.json { head :no_content }
    end
  end

  def fetch_my_events
  	participations = Participation.where(participant_id: current_user.id)
  	event_ids = participations.map{|participation| participation.event_id};
  	@my_events = Event.where(id: event_ids).to_json;
  	respond_to do |format|	
	  format.json { render json: @my_events }
	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :date, :venue_latitude, :venue_logitude, :genre_id, :description)
    end

end
