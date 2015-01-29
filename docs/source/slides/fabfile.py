from fabric.api import env, run, local
from fabric.contrib.project import rsync_project

def make():
    """
    generate slides
    """
    local("compass compile")
    local("hovercraft docker_presentation.rst -s -t ./openwide/ ./output/")

def all():
    make()
