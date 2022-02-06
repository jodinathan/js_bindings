import 'package:js_bindings/js_bindings.dart';

void main() {
  document.title = 'JS Bindings example';

  // create the buttons to use in the example
  final div = (document.createElement('div') as HTMLDivElement)
    ..id = 'someDiv'
    ..innerHTML = 'This div was created on the fly. '
        'Node.elementNode: ${Node.elementNode}'
    ..style.setProperty('border', '1px solid black')
    ..style.setProperty('margin', '10px');
  final btnChanger = (document.createElement('button') as HTMLButtonElement)
    ..id = 'changeHtml'
    ..innerText = 'Change the above div HTML';
  final btnMedia = (document.createElement('button') as HTMLButtonElement)
    ..innerText = 'Ask for camera access';
  final video = (document.createElement('video') as HTMLVideoElement)
    ..autoplay = true
    ..style.setProperty('border', '1px solid purple')
    ..style.setProperty('margin', '10px')
    ..style.setProperty('height', '300px')
    ..style.setProperty('width', '500px')
    ..style.setProperty('background', 'black');

  MediaStream? mstream;
  final body = document.body!;

  // add the div and bind a listener to the HTML changer button
  body
    ..appendChild(div)
    ..appendChild(btnChanger)
    ..appendChild(btnMedia)
    ..appendChild(document.createElement('hr'))
    ..appendChild(video);

  document.getElementById('changeHtml')!.addEventListener('click', (e) {
      window.console.log('Changing the HTML');
      document.getElementById('someDiv')!.innerHTML =
      'New stuff oh yeah! ${div.childNodes[0]}';
    });

  // listen to the click of the media button
  btnMedia.addEventListener('click', (e) async {
    final ms = mstream;

    // if we already have the stream, stop it and change the HTML of the button
    if (ms != null) {
      // forEach is not working in Dart2JS:
      // https://github.com/dart-lang/sdk/issues/48260
      // ms.getTracks().forEach((track) => track.stop());

      for (final track in ms.getTracks()) {
        track.stop();
      }

      mstream = null;
      btnMedia.innerHTML = 'Ask for camera access';
      window.console.log('Media stopped.');
      return;
    }

    window.console.log('Asking for camera capture');

    final media = mstream = await window.navigator.mediaDevices
        .getUserMedia(MediaStreamConstraints(video: true));

    window.console.log('asked: ${media.id}, ${media.active}');

    // here the media stream is on,
    // lets set it to the source of the video element
    video.srcObject = media;

    if (media.active) {
      // change the label of the button so user
      // can know he can stop the camera stream.
      // to test, lets use textContent instead of innerHTML
      btnMedia.textContent = 'Stop camera capture';
    }
  });
}
