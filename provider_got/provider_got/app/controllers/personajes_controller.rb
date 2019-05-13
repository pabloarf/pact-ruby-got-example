class PersonajesController < ApplicationController
  def index
    @personajes = Personaje.all
  end
end
