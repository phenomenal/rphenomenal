class ApplicationStatesController < ActionController::Base
  
  def update
    @applicationState=ApplicationState.load(cookies)
    @applicationState.features=params[:features].try(:keys)||[]
    @applicationState.save(cookies)
    redirect_to root_path
  end
 
end