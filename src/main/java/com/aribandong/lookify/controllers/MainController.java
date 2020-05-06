package com.aribandong.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aribandong.lookify.models.Song;
import com.aribandong.lookify.services.MainService;

@Controller
public class MainController {
	public final MainService mainServ;
	
	public MainController(MainService mainServ) {
		this.mainServ = mainServ;
	}
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = mainServ.getAllSongs();
		model.addAttribute("allSongs", songs);
		return "dashboard.jsp";
	}
	
	@GetMapping("/songs/new")
	public String newSong(@ModelAttribute("song") Song song) {
		return "create.jsp";
	}
	
	@PostMapping("/songs/new")
	public String processSong(@Valid @ModelAttribute("song")Song song, BindingResult results) {
		if (results.hasErrors()) {
			return "create.jsp";
		}
		else {
			mainServ.createSong(song);
			return "redirect:/dashboard";
		}
	}
	
	@GetMapping("/song/{id}")
	public String showSong(@PathVariable("id")Long id, Model model){
		Song song = mainServ.findSong(id);
		model.addAttribute("song", song);
		return "show.jsp";
	}
	
	@DeleteMapping("/song/{id}")
	public String delete(@PathVariable("id")Long id) {
		mainServ.deleteSong(id);
		return "redirect:/dashboard";
	}
	
	@GetMapping("/search")
	public String search(@RequestParam(value="search")String search, Model model) {
		List<Song> results = mainServ.findSongByArtist(search);
		model.addAttribute("results", results);
		return "results.jsp";
	}
	
	@GetMapping("/top_10")
	public String search(Model model) {
		List<Song> top_10 = mainServ.findTopTen();
		model.addAttribute("top_10", top_10);
		return "top_10.jsp";
	}
}
