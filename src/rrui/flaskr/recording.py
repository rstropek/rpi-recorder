from flask import (Blueprint, render_template, redirect, url_for)
from picamera import (PiCamera)

bp = Blueprint('recording', __name__)
camera = PiCamera()

@bp.route('/', methods=['GET'])
def index():
    return render_template('recording.html', recording=camera.recording)

@bp.route('/start-recording', methods=['GET'])
def start():
    camera.resolution=(1920, 1080)
    camera.start_recording('my_video.h264')
    return redirect(url_for('recording.index'))

@bp.route('/stop-recording', methods=['GET'])
def stop():
    camera.stop_recording()
    return redirect(url_for('recording.index'))
