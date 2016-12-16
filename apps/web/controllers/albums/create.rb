module Web::Controllers::Albums
  class Create
    include Web::Action

    expose :album

    def call(params)
      @album = AlbumRepository.new.create(params[:album])

      redirect_to '/albums'
    end
  end
end
