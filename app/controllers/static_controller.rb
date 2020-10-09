class StaticController < ApplicationController
    def home
        render json: {status: "it worked"}
    end
end