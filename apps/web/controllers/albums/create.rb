module Web::Controllers::Albums
  class Create
    include Web::Action

    expose :album

    params do
      required(:album).schema do
        required(:title).filled(:str?)
        required(:author).filled(:str?)
        required(:year).filled(:int?)
      end
    end

    def call(params)
      if params.valid?
        @album = AlbumRepository.new.create(params[:album])

        redirect_to '/albums'
      else
        self.status = 422
      end
    end
  end
end
