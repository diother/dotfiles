#!/usr/bin/env python3

import os
from datetime import datetime, timedelta

def time_left():
    """
    Calculate the time left until 9:00 PM today. If the current time is past 9:00 PM,
    calculate the time left until 9:00 PM the next day.
    """
    now = datetime.now()
    end_of_day = now.replace(hour=20, minute=30, second=0, microsecond=0)
    if now > end_of_day:
        end_of_day += timedelta(days=1)
    diff = end_of_day - now
    hours, remainder = divmod(diff.seconds, 3600)
    minutes, seconds = divmod(remainder, 60)
    return f"{hours:02d}:{minutes:02d}:{seconds:02d}"

def active_quest():
    """
    Fetch the 8th line from the file "~/personal/brain/1-workspace/Quests.md".
    If the file or line is missing, provide a fallback message.
    """
    file_path = "~/personal/brain/1-workspace/Quests.md"
    try:
        expanded_path = os.path.expanduser(file_path)
        with open(expanded_path, "r") as file:
            lines = file.readlines()
            if len(lines) >= 8:
                return lines[7].strip()
            else:
                return "No active quest found."
    except FileNotFoundError:
        return "Quest file not found."
    except Exception as e:
        return f"Error: {e}"

if __name__ == "__main__":
    # Combine both outputs
    quest = active_quest()
    timer = time_left()
    print(f"Quest: {quest} | Tick: {timer}")

