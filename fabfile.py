from fabric.api import run, sudo


def run_test():
        run('uname -s')
        sudo('ps aux')
