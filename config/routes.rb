require "sidekiq/web"

Rails.application.routes.draw do
  Sidekiq::Web.use ActionDispatch::Cookies
  Sidekiq::Web.use ActionDispatch::Session::CookieStore, key: "_interslice_session"
  mount Sidekiq::Web, at: "/sidekiq"
end
