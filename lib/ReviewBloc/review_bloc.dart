import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:uni/Entities/card_entity.dart';
import 'package:uni/locator.dart';
import 'package:uni/repository/review_repository.dart';
import '../Entities/lesson_entity.dart';
import '../repository/url_utils.dart';
import 'review_state.dart';

part 'review_event.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewStates> {
  Map<String, dynamic> json = {
    "id": 1,
    "title": "Hello and Goodbye",
    "originalTitle": "Lesson 1",
    "position": 0,
    "cards": [
      {
        "id": 208402,
        "mainTranslation": {
          "id": 88048,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "hello",
            "updatedAt": "2023-02-01T15:31:48+00:00",
            "description": "",
            "urlId": "hello",
            "webTitle": "سلام",
            "photo": "https://cdn.langeek.co/photo/35651/original/hello",
            "photoThumbnail": "https://cdn.langeek.co/photo/35651/thumb/hello"
          },
          "position": 0,
          "translation":
              "a word we say when we see someone and want to greet them, or when we begin to talk on the phone",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "həˈɫoʊ/, /hɛˈɫoʊ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "hi"},
            {"word": "how-do-you-do"},
            {"word": "howdy"},
            {"word": "hullo"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-10T16:22:27+00:00",
          "localizedProperties": {
            "fr": {"otherTranslations": "salut", "translation": "bonjour"},
            "tr": {"otherTranslations": "selam", "translation": "merhaba"},
            "de": {"translation": "hallo"},
            "es": {"translation": "hola"},
            "fa": {"translation": "سلام"},
            "it": {"translation": "ciao"},
            "ru": {"translation": "здравствуйте"},
            "uk": {"translation": "привіт"}
          },
          "automatedTranslatorDefinition": "hello",
          "title": "hello",
          "type": "interjection",
          "hashedFields": {
            "title":
                "e62d29e4dccc70671a5b11986786192573121e4f1690b2916d5eec017dceda6d"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=aGVsbG8&hash=d1f66a7d200d18df8bc08774fbdab188b641b225&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 0,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "hello",
        "phonetic": "həˈɫoʊ/, /hɛˈɫoʊ"
      },
      {
        "id": 208407,
        "mainTranslation": {
          "id": 82177,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "bye",
            "updatedAt": "2023-02-01T15:33:37+00:00",
            "description": "",
            "urlId": "bye",
            "webTitle": "خداحافظ",
            "photo": "https://cdn.langeek.co/photo/35655/original/bye",
            "photoThumbnail": "https://cdn.langeek.co/photo/35655/thumb/bye"
          },
          "position": 0,
          "translation":
              "a word we say when we are leaving or someone is leaving, or at the end of a phone call",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ˌɡʊdˈbaɪ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "adieu"},
            {"word": "adios"},
            {"word": "arrivederci"},
            {"word": "au revoir"},
            {"word": "auf wiedersehen"},
            {"word": "bye"},
            {"word": "bye-bye"},
            {"word": "cheerio"},
            {"word": "good day"},
            {"word": "good-by"},
            {"word": "good-bye"},
            {"word": "goodby"},
            {"word": "sayonara"},
            {"word": "so long"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-10T16:22:11+00:00",
          "localizedProperties": {
            "it": {
              "descriptionTitle": "ciao",
              "otherTranslations": "arrivederla",
              "translation": "arrivederci"
            },
            "fa": {"otherTranslations": "خدانگهدار", "translation": "خداحافظ"},
            "fr": {"otherTranslations": "salut", "translation": "au revoir"},
            "tr": {
              "otherTranslations": "güle güle",
              "translation": "hoşça kal"
            },
            "de": {"translation": "auf Wiedersehen"},
            "es": {"translation": "adiós"},
            "ru": {"translation": "до свидания"},
            "uk": {"translation": "до побачення"}
          },
          "automatedTranslatorDefinition": "goodbye",
          "title": "goodbye",
          "type": "interjection",
          "hashedFields": {
            "title":
                "6003515c25ae9426241c85712d021fc4b21bca86183053105fe2ca92382b676c"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=Z29vZGJ5ZQ&hash=40a9c20aad90d73bb587856481dbb347b8e8c99c&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 1,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "goodbye",
        "phonetic": "ˌɡʊdˈbaɪ"
      },
      {
        "id": 208403,
        "mainTranslation": {
          "id": 88930,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "hi",
            "updatedAt": "2023-02-01T15:32:40+00:00",
            "description": "",
            "urlId": "hello",
            "webTitle": "سلام",
            "photo": "https://cdn.langeek.co/photo/35653/original/hello",
            "photoThumbnail": "https://cdn.langeek.co/photo/35653/thumb/hello"
          },
          "position": 0,
          "translation": "we say when we see someone and want to greet them",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ˈhaɪ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "hello"},
            {"word": "how-do-you-do"},
            {"word": "howdy"},
            {"word": "hullo"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-10T16:24:50+00:00",
          "localizedProperties": {
            "tr": {"otherTranslations": "selam", "translation": "merhaba"},
            "de": {"translation": "hallo"},
            "es": {"translation": "hola"},
            "fa": {"translation": "سلام"},
            "fr": {"translation": "salut"},
            "it": {"translation": "caio"},
            "ru": {"translation": "привет"},
            "uk": {"translation": "привіт"}
          },
          "automatedTranslatorDefinition": "hi",
          "title": "hi",
          "type": "interjection",
          "hashedFields": {
            "title":
                "0e73d5f1d3338625333e1349c3439bcbd748ec78388886b7c5f05fff0890c005"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=aGk&hash=652ee50487deeee67bf2d5d940700cf40fcf43c2&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 2,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "hi",
        "phonetic": "ˈhaɪ"
      },
      {
        "id": 208408,
        "mainTranslation": {
          "id": 26065,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "goodbye",
            "updatedAt": "2023-02-01T15:34:10+00:00",
            "description": "",
            "urlId": "goodbye",
            "webTitle": "خداحافظ",
            "photo": "https://cdn.langeek.co/photo/35657/original/goodbye",
            "photoThumbnail": "https://cdn.langeek.co/photo/35657/thumb/goodbye"
          },
          "position": 0,
          "translation":
              "a word we say when we are leaving someone or when they are leaving, or at the end of a phone call",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ˈbaɪ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "adieu"},
            {"word": "adios"},
            {"word": "arrivederci"},
            {"word": "au revoir"},
            {"word": "auf wiedersehen"},
            {"word": "bye-bye"},
            {"word": "cheerio"},
            {"word": "good day"},
            {"word": "good-by"},
            {"word": "good-bye"},
            {"word": "goodby"},
            {"word": "goodbye"},
            {"word": "sayonara"},
            {"word": "so long"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:15:06+00:00",
          "localizedProperties": {
            "it": {
              "descriptionTitle": "arrivederla",
              "otherTranslations": "ciao",
              "translation": "arrivederci"
            },
            "es": {"otherTranslations": "chao", "translation": "adiós"},
            "tr": {
              "otherTranslations": "hoşça kal",
              "translation": "güle güle"
            },
            "de": {"translation": "tschüss"},
            "fa": {"translation": "خداحافظ"},
            "fr": {"translation": "salut"},
            "ru": {"translation": "пока"},
            "uk": {"translation": "бувай"}
          },
          "automatedTranslatorDefinition": "bye",
          "title": "bye",
          "type": "interjection",
          "hashedFields": {
            "title":
                "697e71613bbc4c80142d37d8a9a27dcc0e9fc21d048a6c11fc9e6906c7f954e6"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=Ynll&hash=24f98f4c9efee9d90b57b1be198ab0ec7aa94955&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 3,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "bye",
        "phonetic": "ˈbaɪ"
      },
      {
        "id": 208404,
        "mainTranslation": {
          "id": 82151,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "good morning",
            "updatedAt": "2024-01-29T16:44:10+00:00",
            "description": "",
            "urlId": "good-morning",
            "webTitle": "صبح به‌خیر",
            "photo": "https://cdn.langeek.co/photo/47524/original/good-morning",
            "photoThumbnail":
                "https://cdn.langeek.co/photo/47524/thumb/good-morning"
          },
          "position": 0,
          "translation":
              "something we say when we want to greet or say hello to someone in the morning",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ɡˈʊd mˈɔːɹnɪŋ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "morning"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:17:07+00:00",
          "localizedProperties": {
            "tr": {
              "otherTranslations": "iyi sabahlar",
              "translation": "günaydın"
            },
            "de": {"translation": "guten Morgen"},
            "es": {"translation": "buenos días"},
            "fa": {"translation": "صبح به‌خیر"},
            "fr": {"translation": "bonjour"},
            "it": {"translation": "buongiorno"},
            "ru": {"translation": "доброе утро"},
            "uk": {"translation": "доброго ранку"}
          },
          "automatedTranslatorDefinition": "good morning",
          "title": "good morning",
          "type": "interjection",
          "hashedFields": {
            "title":
                "9d0a312332dcb99def9d40a4fbfb5f61e978af28e2225be9f8a8c90d562e4110"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=Z29vZCBtb3JuaW5n&hash=f77e00cc3cb62e06625baf9bb74f5d147940c92b&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 4,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "good morning",
        "phonetic": "ɡˈʊd mˈɔːɹnɪŋ"
      },
      {
        "id": 208405,
        "mainTranslation": {
          "id": 82126,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "good afternoon",
            "updatedAt": "2024-01-30T17:14:05+00:00",
            "description": "",
            "urlId": "good-afternoon",
            "webTitle": "ظهر به‌خیر",
            "photo":
                "https://cdn.langeek.co/photo/47596/original/good-afternoon",
            "photoThumbnail":
                "https://cdn.langeek.co/photo/47596/thumb/good-afternoon"
          },
          "position": 0,
          "translation":
              "something we say when we want to say hello or goodbye to a person in the afternoon",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ɡˈʊd ˌæftɚnˈuːn",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "afternoon"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:21:15+00:00",
          "localizedProperties": {
            "de": {"translation": "guten Tag"},
            "es": {"translation": "buenas tardes"},
            "fa": {"translation": "بعدازظهر به‌خیر"},
            "fr": {"translation": "bon après-midi"},
            "it": {"translation": "buon pomeriggio"},
            "ru": {"translation": "добрый день"},
            "tr": {"translation": "iyi günler"},
            "uk": {"translation": "добрий день"}
          },
          "automatedTranslatorDefinition": "good afternoon",
          "title": "good afternoon",
          "type": "interjection",
          "hashedFields": {
            "title":
                "ac328ed553de7fe062c8fd9436382897bc5f20a46532cc8a9032495ceeb5c108"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=Z29vZCBhZnRlcm5vb24&hash=9562ddf09f5cc17f728b756d3926a9838823c031&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 5,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "good afternoon",
        "phonetic": "ɡˈʊd ˌæftɚnˈuːn"
      },
      {
        "id": 220414,
        "mainTranslation": {
          "id": 208442,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "good evening",
            "updatedAt": "2024-02-04T17:55:56+00:00",
            "description": "",
            "urlId": "good-evening",
            "webTitle": "عصر به‌خیر",
            "photo": "https://cdn.langeek.co/photo/47728/original/good-evening",
            "photoThumbnail":
                "https://cdn.langeek.co/photo/47728/thumb/good-evening"
          },
          "position": 0,
          "translation":
              "something we say when we want to say hello or goodbye to a person in the evening",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ɡˈʊd ˈiːvnɪŋ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "evening"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:24:50+00:00",
          "localizedProperties": {
            "de": {"translation": "guten Abend"},
            "es": {"translation": "buenas tardes"},
            "fa": {"translation": "عصر به‌خیر"},
            "fr": {"translation": "bonsoir"},
            "it": {"translation": "buona serata"},
            "ru": {"translation": "Добрый вечер"},
            "tr": {"translation": "iyi akşamlar"},
            "uk": {"translation": "добрий вечір"}
          },
          "automatedTranslatorDefinition": "good evening",
          "title": "good evening",
          "type": "interjection",
          "hashedFields": {
            "title":
                "39474af8adfb9a270e5751d966c7b0177db832bfca90436213b5a743a022ed36"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=Z29vZCBldmVuaW5n&hash=0b5951bab42dcb27742fdf96a72e8f284586d224&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 6,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "good evening",
        "phonetic": "ɡˈʊd ˈiːvnɪŋ"
      },
      {
        "id": 208406,
        "mainTranslation": {
          "id": 82153,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "good night",
            "updatedAt": "2024-02-05T17:34:36+00:00",
            "description": "",
            "urlId": "good-night",
            "webTitle": "شب به‌خیر",
            "photo": "https://cdn.langeek.co/photo/47769/original/good-night",
            "photoThumbnail":
                "https://cdn.langeek.co/photo/47769/thumb/good-night"
          },
          "position": 0,
          "translation":
              "something we say when we want to say goodbye to a person at night or before we go to bed",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ɡˈʊd nˈaɪt",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:27:35+00:00",
          "localizedProperties": {
            "de": {"translation": "gute Nacht"},
            "es": {"translation": "buenas noches"},
            "fa": {"translation": "شب به‌خیر"},
            "fr": {"translation": "bonne nuit"},
            "it": {"translation": "buona notte"},
            "ru": {"translation": "спокойной ночи"},
            "tr": {"translation": "iyi geceler"},
            "uk": {"translation": "надобраніч"}
          },
          "automatedTranslatorDefinition": "good night",
          "title": "good night",
          "type": "interjection",
          "hashedFields": {
            "title":
                "e6aa4827dafa6854fab15f0350264583c599b1d0d35d7c38f71216bf5c715c4f"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=Z29vZCBuaWdodA&hash=bc0a497477c4eb1cb513882b5d227edc360a5533&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 7,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "good night",
        "phonetic": "ɡˈʊd nˈaɪt"
      },
      {
        "id": 208542,
        "mainTranslation": {
          "id": 186300,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "thank you",
            "updatedAt": "2023-02-01T15:35:06+00:00",
            "description": "",
            "urlId": "",
            "webTitle": "ممنون",
            "photo": "https://cdn.langeek.co/photo/35659/original/",
            "photoThumbnail": "https://cdn.langeek.co/photo/35659/thumb"
          },
          "position": 0,
          "translation":
              "something we say to someone to show we are grateful to them for something that they have done for us or given us",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "θˈæŋk juː",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:31:41+00:00",
          "localizedProperties": {
            "fa": {"otherTranslations": "ممنونم", "translation": "متشکرم"},
            "fr": {
              "otherTranslations": "je te remercie, merci",
              "translation": "je vous remercie"
            },
            "tr": {
              "otherTranslations": "teşekkürler",
              "translation": "teşekkür ederim"
            },
            "de": {"translation": "danke"},
            "es": {"translation": "gracias"},
            "it": {"translation": "grazie"},
            "ru": {"translation": "спасибо"},
            "uk": {"translation": "спасибі"}
          },
          "automatedTranslatorDefinition": "thank you",
          "title": "thank you",
          "type": "interjection",
          "hashedFields": {
            "title":
                "63b78a6ba263fe03f45f29549da8d8768f21f7522ad718c7545bb8505bd06d5a"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=dGhhbmsgeW91&hash=a44285b60f71b0c8cb63ea9de53774cc24c832c2&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 8,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "thank you",
        "phonetic": "θˈæŋk juː"
      },
      {
        "id": 220422,
        "mainTranslation": {
          "id": 186309,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "thanks",
            "updatedAt": "2023-02-05T16:55:09+00:00",
            "description": "",
            "urlId": "thanks",
            "webTitle": "ممنون",
            "photo": "https://cdn.langeek.co/photo/35700/original/thanks",
            "photoThumbnail": "https://cdn.langeek.co/photo/35700/thumb/thanks"
          },
          "position": 0,
          "translation":
              "said when someone helps us or does something nice for us",
          "alternativeTranslation": "thank you",
          "otherTranslations": "",
          "pronunciation": "ˈθæŋks",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "thank you"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-12-23T16:50:25+00:00",
          "localizedProperties": {
            "fa": {"otherTranslations": "متشکرم", "translation": "ممنون"},
            "de": {"translation": "danke"},
            "es": {"translation": "gracias"},
            "fr": {"translation": "merci"},
            "it": {"translation": "grazie"},
            "ru": {"translation": "спасибо"},
            "tr": {"translation": "sağ ol"},
            "uk": {"translation": "дякую"}
          },
          "automatedTranslatorDefinition": "thank you",
          "title": "thanks",
          "type": "interjection",
          "hashedFields": {
            "title":
                "97f928a4152b2b538cea9af560ee9d9ae91f1ce6cbd73876ea2e7e2bedaddb81"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=dGhhbmtz&hash=038575fedcad67293cd11e918e8dbf978061edac&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 9,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "thanks",
        "phonetic": "ˈθæŋks"
      },
      {
        "id": 220415,
        "mainTranslation": {
          "id": 140393,
          "partOfSpeech": {
            "type": null,
            "superlativeForm": null,
            "comparativeForm": null,
            "isComparable": false,
            "partOfSpeechType": "adverb"
          },
          "wordPhoto": {
            "originalTitle": "please",
            "updatedAt": "2024-01-29T15:10:11+00:00",
            "description": "",
            "urlId": "please",
            "webTitle": "لطفاً",
            "photo": "https://cdn.langeek.co/photo/47520/original/please",
            "photoThumbnail": "https://cdn.langeek.co/photo/47520/thumb/please"
          },
          "position": 3,
          "translation":
              "used when we want to politely ask for something or politely tell a person to do something",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ˈpɫiz",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:45:11+00:00",
          "localizedProperties": {
            "fa": {"otherTranslations": "خواهشاً", "translation": "لطفاً"},
            "fr": {
              "otherTranslations": "s'il te plaît",
              "translation": "s'il vous plaît"
            },
            "de": {"translation": "bitte"},
            "es": {"translation": "por favor"},
            "it": {"translation": "per favore"},
            "ru": {"translation": "пожалуйста"},
            "tr": {"translation": "lütfen"},
            "uk": {"translation": "будь ласка"}
          },
          "automatedTranslatorDefinition": "please",
          "title": "please",
          "type": "adjective_adverb",
          "hashedFields": {
            "title":
                "f04194cd9f6cdbbbc796edc4484fed3c928156102cfff797fb5dcfe408f02fe1"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=cGxlYXNl&hash=a32ff220c6e51eda96643c36e330bbc00e6fee79&lang=en&cache-only=0"
        },
        "type": "adjective_adverb",
        "description": "",
        "position": 10,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "please",
        "phonetic": "ˈpɫiz"
      },
      {
        "id": 220416,
        "mainTranslation": {
          "id": 128380,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "great",
            "updatedAt": "2021-07-24T17:49:37+00:00",
            "description": "",
            "urlId": "great",
            "webTitle": "عالی",
            "photo": "https://cdn.langeek.co/photo/17891/original/great",
            "photoThumbnail": "https://cdn.langeek.co/photo/17891/thumb/great"
          },
          "position": 0,
          "translation":
              "said to show that we are agreeing to do something or we agree with something",
          "alternativeTranslation": "agreed",
          "otherTranslations": "",
          "pronunciation": "ˈoʊˈkeɪ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [
            {"word": "all right"},
            {"word": "alright"},
            {"word": "fine"},
            {"word": "very well"}
          ],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-12-25T16:11:36+00:00",
          "localizedProperties": {
            "fa": {
              "otherTranslations": "بسیار خب، قبوله",
              "translation": "باشه (در صورت موافقت با کاری یا چیزی)"
            },
            "ru": {"otherTranslations": "ладно", "translation": "ладно"},
            "de": {"translation": "okay"},
            "es": {"translation": "está bien"},
            "fr": {"translation": "d'accord"},
            "it": {"translation": "ok"},
            "tr": {"translation": "tamam"},
            "uk": {"translation": "гаразд"}
          },
          "automatedTranslatorDefinition": "agreed",
          "title": "OK",
          "type": "interjection",
          "hashedFields": {
            "title":
                "1a15a65c7defcfd83172632b9156a2ffbf60369e71572083c77fcefb48b96dd6"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=T0s&hash=c1cd8b23cdabd8d030ab38affffcf2e9ff90df17&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 11,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "OK",
        "phonetic": "ˈoʊˈkeɪ"
      },
      {
        "id": 220418,
        "mainTranslation": {
          "id": 207656,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "yes",
            "updatedAt": "2024-01-28T17:00:35+00:00",
            "description": "",
            "urlId": "yes",
            "webTitle": "بله",
            "photo": "https://cdn.langeek.co/photo/47440/original/yes",
            "photoThumbnail": "https://cdn.langeek.co/photo/47440/thumb/yes"
          },
          "position": 0,
          "translation":
              "a word that shows we agree with something or think that it is true when answering a question",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ˈjɛs",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [
            {"word": "no"}
          ],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:54:34+00:00",
          "localizedProperties": {
            "fa": {"otherTranslations": "آره", "translation": "بله"},
            "de": {"translation": "ja"},
            "es": {"translation": "sí"},
            "fr": {"translation": "oui"},
            "it": {"translation": "sì"},
            "ru": {"translation": "да"},
            "tr": {"translation": "evet"},
            "uk": {"translation": "так"}
          },
          "automatedTranslatorDefinition": "yes",
          "title": "yes",
          "type": "interjection",
          "hashedFields": {
            "title":
                "b9d1743b492478a50f40bc048cbc7278b25efa2f6c283a63bcba02212d471f31"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=eWVz&hash=449860f6d97808b95a5a5a4bf0c0374af38820e7&lang=en&cache-only=0"
        },
        "type": "noun",
        "description": "",
        "position": 12,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "yes",
        "phonetic": "ˈjɛs"
      },
      {
        "id": 220419,
        "mainTranslation": {
          "id": 125362,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "no",
            "updatedAt": "2024-01-28T17:02:22+00:00",
            "description": "",
            "urlId": "no",
            "webTitle": "نه",
            "photo": "https://cdn.langeek.co/photo/47442/original/no",
            "photoThumbnail": "https://cdn.langeek.co/photo/47442/thumb/no"
          },
          "position": 5,
          "translation":
              "used to give an answer to a question showing that we do not agree or it is not true",
          "alternativeTranslation": null,
          "otherTranslations": "",
          "pronunciation": "ˈnoʊ",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [
            {"word": "yes"}
          ],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-07-12T10:58:00+00:00",
          "localizedProperties": {
            "fa": {"otherTranslations": "خیر", "translation": "نه"},
            "de": {"translation": "nein"},
            "es": {"translation": "no"},
            "fr": {"translation": "non"},
            "it": {"translation": "no"},
            "ru": {"translation": "нет"},
            "tr": {"translation": "hayır"},
            "uk": {"translation": "ні"}
          },
          "automatedTranslatorDefinition": "no",
          "title": "no",
          "type": "interjection",
          "hashedFields": {
            "title":
                "993de7f2847fbb586e28a635c03ba9aae4046e8a03e76a8064595be5701e00dd"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=bm8&hash=011b913322f69b8d22e48a8dbfbfd5004286021d&lang=en&cache-only=0"
        },
        "type": "noun",
        "description": "",
        "position": 13,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "no",
        "phonetic": "ˈnoʊ"
      },
      {
        "id": 220423,
        "mainTranslation": {
          "id": 210222,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "sorry",
            "updatedAt": "2023-02-05T16:53:34+00:00",
            "description": "",
            "urlId": "sorry",
            "webTitle": "متأسف",
            "photo": "https://cdn.langeek.co/photo/35698/original/sorry",
            "photoThumbnail": "https://cdn.langeek.co/photo/35698/thumb/sorry"
          },
          "position": 4,
          "translation":
              "a word we say to apologize for something or to say we are embarrassed",
          "alternativeTranslation": "I am sorry",
          "otherTranslations": "",
          "pronunciation": "ˈsɑɹi",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-12-25T16:12:24+00:00",
          "localizedProperties": {
            "es": {"otherTranslations": "perdón", "translation": "lo siento"},
            "tr": {
              "otherTranslations": "üzgünüm",
              "translation": "özür dilerim"
            },
            "de": {"translation": "Entschuldigung"},
            "fa": {"translation": "متأسفم"},
            "fr": {"translation": "désolé"},
            "it": {"translation": "mi dispiace"},
            "ru": {"translation": "извините"},
            "uk": {"translation": "пробачте"}
          },
          "automatedTranslatorDefinition": "I am sorry",
          "title": "sorry",
          "type": "interjection",
          "hashedFields": {
            "title":
                "43d341aec635cbbb50acd8ddedd0e266af725e42f0a62e43a897a6c6d8433e40"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=c29ycnk&hash=a8da0eac560611173812b345a3409907801f90f3&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 14,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "sorry",
        "phonetic": "ˈsɑɹi"
      },
      {
        "id": 239009,
        "mainTranslation": {
          "id": 211429,
          "partOfSpeech": {"partOfSpeechType": "interjection"},
          "wordPhoto": {
            "originalTitle": "welcome",
            "updatedAt": "2024-01-29T15:32:38+00:00",
            "description": "",
            "urlId": "welcome",
            "webTitle": "استقبال کردن",
            "photo": "https://cdn.langeek.co/photo/47522/original/welcome",
            "photoThumbnail": "https://cdn.langeek.co/photo/47522/thumb/welcome"
          },
          "position": 0,
          "translation": "a word that we use to greet someone when they arrive",
          "alternativeTranslation": "welcome here",
          "otherTranslations": "",
          "pronunciation": "ˈwɛɫkəm",
          "descriptionTitle": "",
          "description": "",
          "synonyms": [],
          "antonyms": [],
          "tags": [],
          "level": "",
          "hideNLPExamples": false,
          "visibility": "default",
          "wiki": null,
          "updatedAt": "2023-12-25T16:14:20+00:00",
          "localizedProperties": {
            "fr": {"otherTranslations": "bienvenue", "translation": "bienvenu"},
            "es": {"translation": "bienvenido"},
            "fa": {"translation": "خوش آمدید"},
            "it": {"translation": "benvenuto"},
            "ru": {"translation": "добро пожаловать"},
            "tr": {"translation": "hoş geldiniz"},
            "uk": {"translation": "ласкаво просимо"}
          },
          "automatedTranslatorDefinition": "welcome here",
          "title": "welcome",
          "type": "interjection",
          "hashedFields": {
            "title":
                "f7b5e2f4c3ad2b8b591b831414708e7565de826d1f12317795503f66601fe3aa"
          },
          "titleVoice":
              "https://tts.langeek.co/read?text=d2VsY29tZQ&hash=c1011837b07177a9500356a9cd14a94655e3860f&lang=en&cache-only=0"
        },
        "type": "interjection",
        "description": "",
        "position": 15,
        "updatedAt": "2023-02-08T08:22:14+00:00",
        "title": "welcome",
        "phonetic": "ˈwɛɫkəm"
      }
    ],
    "description":
        "Here you will learn some basic English words to say hello or goodbye to someone, to thank someone, or to say you are sorry, prepared for A1 learners.",
    "urlId": "lesson-1",
    "webTitle": "English Words for \"Hello and Goodbye\" | A1 Vocabulary",
    "localizedProperties": {
      "es": {
        "description":
            "Aquí aprenderás algunas palabras básicas en inglés para saludar o despedirse de alguien, para agradecer a alguien o para decir que lo siente, preparado para estudiantes de A1.",
        "title": "Hola y Adiós",
        "webTitle": "Palabras en Inglés para \"Hola y Adiós\" | Vocabulario A1"
      },
      "fa": {"title": "سلام و خداحافظ"},
      "fr": {
        "title": "Bonjour et Au revoir",
        "webTitle":
            "Les Mots Anglais pour « Bonjour et Au revoir » | Vocabulaire A1"
      },
      "it": {"title": "Salutare"},
      "ru": {"title": "приветствие"},
      "tr": {
        "title": "Selamlaşma ve Ayrılma",
        "webTitle": "İngilizce A1 kelime listesi ders 1"
      },
      "uk": {"title": "Привіт і до побачення"}
    },
    "wordsCount": 16,
    "estimatedLearningTime": 480,
    "categoryId": 1,
    "photo": null,
    "photoThumbnail": null,
    "hashedFields": {
      "title":
          "83e39a1e1543743c2f70e2af3783f8bcc355919bfa8d89b041ddbbd247f90096"
    }
  };

  late LessonEntity lessonEntity;

  List<CardEntity> getCards() {
    return lessonEntity.cards;
  }

  ReviewBloc() : super(const ReviewStates.loading()) {
    on<ReviewEvent>((event, emit) async {
      if (event is ReviewLoadCardsEvent) {
        emit(const ReviewStates.loading());
        Response? response;
        try {
          response = await locator
              .get<ReviewRepository>()
              .getLessonData(UrlUtils.lessonApiUrl);
          lessonEntity = LessonEntity.fromJson(jsonDecode(response.data));
          emit(ReviewStates.complete(lessonEntity: lessonEntity));
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
          emit(ReviewStates.error(e.toString(), response?.statusCode));
        }
      }
      if (event is ReviewMoveToNextCardEvent) {
        emit(const ReviewStates.idle());
        emit(const ReviewStates.moveToNextCard());
      }
      if (event is ReviewMoveToPreviousCardEvent) {
        emit(const ReviewStates.idle());
        emit(const ReviewStates.moveToPreviousCard());
      }
      if (event is ReviewRestartCardsEvent) {
        emit(const ReviewStates.idle());
        emit(const ReviewStates.restartReview());
      }
    });
  }
}
