import 'package:js_bindings/js_bindings.dart';

void main() {
  // create some div
  final div = document.createElement('div')
    ..innerHTML = 'This div was created on the fly';
  final btnMedia = document.getElementById('askMedia')!;
  MediaStream? mstream;

  // add the div and bind a listener to the HTML changer button
  document
    ..body!.appendChild(div)
    ..getElementById('changeHtml')!.addEventListener('click', (e) {
      print('Changing the HTML');
      document.getElementById('someDiv')!.innerHTML = 'Oh yeah!';
    });

  // listen to the click of the media button
  btnMedia.addEventListener('click', (e) async {
    final ms = mstream;

    // if we already have the stream, stop it and change the HTML of the button
    if (ms != null) {
      // forEach is not working: https://github.com/dart-lang/sdk/issues/48260
      // ms.getTracks().forEach((track) => track.stop());

      for (final track in ms.getTracks()) {
        track.stop();
      }

      mstream = null;
      btnMedia.innerHTML = 'Ask for camera access';
      print('Media stopped.');
      return;
    }

    print('Asking for camera capture');

    final media = mstream = await window.navigator.mediaDevices
        .getUserMedia(MediaStreamConstraints(video: true));

    print('asked: ${media.id}, ${media.active}');

    // here the media stream is on,
    // lets set it to the source of the video element
    (document.getElementById('someVideo')! as HTMLVideoElement)
      ..autoplay = true
      ..srcObject = media;

    if (media.active) {
      // change the label of the button so user
      // can know he can stop the camera stream.
      // to test, lets use textContent instead of innerHTML
      btnMedia.textContent = 'Stop camera capture';
    }
  });

  document.body!.className += 'ready';
}
