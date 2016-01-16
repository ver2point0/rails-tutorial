class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render text: ('a'..'z').to_a.shuffle[0..7].join + " Hello, World!"
    # exercise 1: render hola, mundo! instead of Hello, World!
    # render text: "hola, mundo!"
  end
  
  # exercise 2: define goodbye action, render goodbye, world!, change route to point to application#goodbye
  def goodbye
    render text: "goodbye, world!"
  end
end
