import 'package:flutter/material.dart';

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;

  Song(
      {required this.name,
      required this.singer,
      required this.image,
      required this.duration,
      required this.color});
}

List<Song> mostPopular = [
  Song(
      name: 'Peaches',
      singer: 'Justin bieber',
      image: 'images/jb.jpg',
      duration: 300,
      color: Colors.grey),
  Song(
      name: 'Industry baby',
      singer: 'Lil nas x',
      image: 'images/lil.jpg',
      duration: 250,
      color: Colors.red),
  Song(
      name: 'cheating on you',
      singer: 'Charlie puth',
      image: 'images/cp.jpg',
      duration: 400,
      color: Colors.orange),
  Song(
      name: 'Hold on',
      singer: 'Justin bieber',
      image: 'images/hold.jpg',
      duration: 150,
      color: Colors.blue),
];

List<Song> newRelease = [
  Song(
      name: 'Summer',
      singer: 'Shawn mendes',
      image: 'images/sm.jpg',
      duration: 340,
      color: Colors.red),
  Song(
      name: 'ghost',
      singer: 'Justin bieber',
      image: 'images/jbs.jpg',
      duration: 312,
      color: Colors.grey),
  Song(
      name: 'Stay',
      singer: 'Kid laroi',
      image: 'images/sty.jpg',
      duration: 240,
      color: Colors.blue),
  Song(
      name: 'atention',
      singer: 'charlie puth',
      image: 'images/at.jpg',
      duration: 260,
      color: Colors.orange),
    Song(
      name: 'Stay',
      singer: 'Kid laroi',
      image: 'images/sty.jpg',
      duration: 240,
      color: Colors.blue),
      Song(
      name: 'Stay',
      singer: 'Kid laroi',
      image: 'images/sty.jpg',
      duration: 240,
      color: Colors.blue),
];
