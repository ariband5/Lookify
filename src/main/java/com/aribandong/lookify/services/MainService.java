package com.aribandong.lookify.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.aribandong.lookify.models.Song;
import com.aribandong.lookify.repositories.SongRepository;

@Service
public class MainService {
	public final SongRepository sR;
	
	public MainService(SongRepository sR) {
		this.sR = sR;
	}
	
	public List<Song> getAllSongs(){
		return this.sR.findAll();
	}
	
	// CREATE A SONG
	public void createSong(Song song) {
		sR.save(song);
	}
	
	// FIND A SONG
	public Song findSong(Long id) {
		Song song = sR.findById(id).orElse(null);
		if (song == null) {
			return null;
		}
		return song;
	}
	
	// DELETE A SONG
	public void deleteSong(Long id) {
		this.sR.deleteById(id);
	}
	
	public List<Song> findSongByArtist(String search){
		return this.sR.findByArtistIgnoreCaseContaining(search);
	}
	
	public List<Song> findTopTen() {
		return this.sR.findTop10ByOrderByRatingDesc();
	}
	
}
