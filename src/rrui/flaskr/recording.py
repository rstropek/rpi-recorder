from flask import (Blueprint, render_template)

bp = Blueprint('recording', __name__)

@bp.route('/', methods=['GET'])
def index():
    return render_template('recording.html')
