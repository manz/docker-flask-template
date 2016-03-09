# coding: utf8

import os


class Config(object):
    def get(self, key, default=None):
        return os.getenv(key, default)

config = Config()
