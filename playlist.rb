class Playlist

  attr_reader :song_list, :now_playing

  def initialize
    @song_list = []
    @now_playing = nil
  end

  def empty?
    @song_list.empty?
  end

  def add_song(title)
    @song_list << title
  end

  def song_names
    song_list.map { |song| song.title}
  end

  def remove_song(title)
    @song_list.delete(title)
  end

  def total_length
    song_list.inject(0) {|memo, song| memo + song.length}
  end

  def swap(title_a, title_b)
    song_a = @song_list.index(title_a)
    song_b = @song_list.index(title_b)

    @song_list[song_a] = title_b
    @song_list[song_b] = title_a
  end

  def play
    @now_playing = @song_list.first
  end

  def next
    next_song = @song_list.index(@now_playing) + 1
    @now_playing = @song_list[next_song]
  end

end
