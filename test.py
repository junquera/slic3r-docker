import subprocess
import sys
import os
import uuid
import shutil

base_dest = 'files'
dest_name = str(uuid.uuid4())

result_name = 'result.gcode'

dest = 'files/%s' % dest_name

os.makedirs(dest)

files = sys.argv[1:]
for f in files:
    file_name = os.path.basename(f)
    shutil.copy(f, '%s/%s' % (dest, file_name))

subprocess.call('./run.sh $(pwd)/%s %s' % (base_dest, dest_name), shell=True)
shutil.move('%s/%s' % (dest, result_name), '%s.gcode' %(dest_name))

shutil.rmtree('%s' % dest)
