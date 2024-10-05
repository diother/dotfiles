#!/usr/bin/env python3

import time
from datetime import datetime, timedelta

def time_left():
    now = datetime.now()
    end_of_day = now.replace(hour=21, minute=0, second=0, microsecond=0)
    if now > end_of_day:
        end_of_day += timedelta(days=1)
    diff = end_of_day - now
    hours, remainder = divmod(diff.seconds, 3600)
    minutes, seconds = divmod(remainder, 60)
    return f"Time is ticking: {hours:02d}:{minutes:02d}:{seconds:02d}"

if __name__ == "__main__":
    print(time_left())

