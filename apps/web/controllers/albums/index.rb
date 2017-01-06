module Web::Controllers::Albums
  class Index
    include Web::Action

    expose :albums

    def call(params)
      @albums = AlbumRepository.new.all.sort_by { |album| [-album.year, album.title] }
    end
  end
end
