// ignore_for_file: dead_code

import 'package:flutter/material.dart';

Color setCardColor(String type) {
  type = type.toLowerCase();
  if (type == null) {
    return const Color(0xffdbd9d9);
  }
  switch (type) {
    case 'fire':
      return const Color(0xfffa9950);
      break;
    case 'grass':
      return const Color(0xff91eb5b);
      break;
    case 'water':
      return const Color(0xFF69b9e3);
      break;
    case 'rock':
      return const Color(0xffedd040);
      break;
    case 'bug':
      return const Color(0xffbed41c);
      break;
    case 'normal':
      return const Color(0xffC6C6A7);
      break;
    case 'poison':
      return const Color(0xffd651d4);
      break;
    case 'electric':
      return const Color(0xffF7D02C);
      break;
    case 'ground':
      return const Color(0xfff5d37d);
      break;
    case 'ice':
      return const Color(0xff79dbdb);
      break;
    case 'dark':
      return const Color(0xffa37e65);
      break;
    case 'fairy':
      return const Color(0xfffaa7d0);
      break;
    case 'psychic':
      return const Color(0xffff80a6);
      break;
    case 'fighting':
      return const Color(0xffe8413a);
      break;
    case 'ghost':
      return const Color(0xff9063c9);
      break;
    case 'flying':
      return const Color(0xffbda8f7);
      break;
    case 'dragon':
      return const Color(0xff9065f7);
      break;
    case 'steel':
      return const Color(0xffa0a0de);
      break;
    default:
      return const Color(0xffdbd9d9);
  }
}

Color setTypeColor(String type) {
  type = type.toLowerCase();
  if (type == null) {
    return const Color(0xffdbd9d9);
  }
  switch (type) {
    case 'fire':
      return const Color(0xffF08030);
      break;
    case 'grass':
      return const Color(0xff7AC74C);
      break;
    case 'water':
      return const Color(0xFF6390F0);
      break;
    case 'rock':
      return const Color(0xffB6A136);
      break;
    case 'bug':
      return const Color(0xffA8B820);
      break;
    case 'normal':
      return const Color(0xffA8A878);
      break;
    case 'poison':
      return const Color(0xffA33EA1);
      break;
    case 'electric':
      return const Color(0xfffce321);
      break;
    case 'ground':
      return const Color(0xffE2BF65);
      break;
    case 'ice':
      return const Color(0xff98D8D8);
      break;
    case 'dark':
      return const Color(0xff705746);
      break;
    case 'fairy':
      return const Color(0xffD685AD);
      break;
    case 'psychic':
      return const Color(0xffF95587);
      break;
    case 'fighting':
      return const Color(0xffC22E28);
      break;
    case 'ghost':
      return const Color(0xff735797);
      break;
    case 'flying':
      return const Color(0xffA98FF3);
      break;
    case 'dragon':
      return const Color(0xff6F35FC);
      break;
    case 'steel':
      return const Color(0xffB7B7CE);
      break;
    default:
      return const Color(0xffdbd9d9);
  }
}
