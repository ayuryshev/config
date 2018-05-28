#!/bin/python3
import os
import glob
import click
import random

THEME_PATH = f'{os.environ["HOME"]}/.config/wlp'
CURRENT_THEME = f'{THEME_PATH}/current_theme'
RUN_PATH = '/tmp/wlp'


@click.command()
@click.option('--new', 'action', flag_value='new', default=True)
@click.option('--save', 'action', flag_value='save')
@click.option('--load', 'action', flag_value='load')
@click.option('--shuffle', 'action', flag_value='shuffle')
@click.option('--theme', default='', help='Theme number')
def wlp_theme(action, theme):
    """
        Theme saver
    """
    themes = glob.glob(f'{THEME_PATH}/[0-9][0-9][0-9]')
    # if os.path.exists(CURRENT_THEME):
    #     current_theme = os.readlink(CURRENT_THEME)
    theme_content = [
        os.readlink(lname) for lname in glob.glob("/tmp/wlp/wlp[0-9][0-9]")
    ]

    if action == "load":
        theme_name = f'{THEME_PATH}/{theme}'
        if os.path.exists(theme_name):
            with open(theme_name) as f:
                theme_content = f.read().split('\n')
                for idx, fname in zip(range(1, 11), theme_content):
                    wlp_link = f'{RUN_PATH}/wlp{idx:02d}'
                    os.remove(wlp_link)
                    os.symlink(fname, wlp_link)
                if theme_name != "current_theme":
                    if os.path.exists(CURRENT_THEME):
                        os.remove(CURRENT_THEME)
                    os.symlink(theme_name, CURRENT_THEME)
        return

    if action == 'new':
        last_number = 1
        print(themes)
        if themes:
            last_number = int(os.path.basename(sorted(themes)[-1])) + 1
        theme_name = f'{THEME_PATH}/{last_number:03d}'
        with open(theme_name, 'w') as f:
            f.write("\n".join(theme_content))
        if os.path.exists(CURRENT_THEME):
            os.remove(CURRENT_THEME)
        os.symlink(theme_name, CURRENT_THEME)
        return

    if action == "save":
        with open(CURRENT_THEME, 'w') as f:
            f.write("\n".join(theme_content))
        return

    if action == "shuffle":
        random.shuffle(theme_content)
        with open(CURRENT_THEME, 'w') as f:
            f.write("\n".join(theme_content))
        for idx, fname in zip(range(1, 11), theme_content):
            wlp_link = f'{RUN_PATH}/wlp{idx:02d}'
            os.remove(wlp_link)
            os.symlink(fname, wlp_link)
        return


if __name__ == "__main__":
    wlp_theme()
