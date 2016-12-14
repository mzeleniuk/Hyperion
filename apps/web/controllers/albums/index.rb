module Web::Controllers::Albums
  class Index
    include Web::Action

    expose :albums

    def call(params)
      @albums = AlbumRepository.new.all
    end
  end
end
