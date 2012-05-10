feature :Announce do
  adaptations_for PagesController
  adapt :home do
    proceed
    @announces=Announce.all
  end
end