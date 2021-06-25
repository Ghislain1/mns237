package org.mns237.controller;

import org.mns237.entity.Comments;
import org.mns237.entity.Items;
import org.mns237.service.CommentService;
import org.mns237.dao.VideosRepository;
import org.mns237.service.VideosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200")
public class VideosController {
    @Autowired
    private  CommentService commentService;
    private final  VideosRepository videosRepository;
    private final  VideosService videosService;

    public VideosController(CommentService commentService, VideosRepository videosRepository, VideosService videosService) {
        this.commentService = commentService;
        this.videosRepository = videosRepository;
        this.videosService = videosService;
    }

    @GetMapping("/video/list")
        public List<Items> getVideos(){
            return videosService.getAllVideos();
        }
    //Getting comments from DB according to video ID
    @GetMapping("/comments/view")
    public List<Comments> getComments(){
        return null;
    }





}
