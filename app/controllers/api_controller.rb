class ApiController < ApplicationController
  include JSONAPI::ActsAsResourceController
  include Context
end