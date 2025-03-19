import whisper
import os
import sys
from pathlib import Path

model = whisper.load_model("small")

def get_most_recent_video(directory: str):
    files = [f for f in Path(directory).iterdir() if f.name.startswith("IMG_") and f.suffix in [".MOV"]]
    if not files:
        raise FileNotFoundError(f"No video files found in {directory}")
    
    sorted_files = sorted(files, key=lambda x: int(x.stem.split('_')[1]), reverse=True)
    return sorted_files[0]

def transcribe_video(video_path, output_file):
    print(f"Transcribing video: {video_path}")
    
    video_path_str = str(video_path)
    result = model.transcribe(video_path_str)
    transcription = result["text"]
    
    with open(output_file, "a") as file:
        file.write(transcription)
    
    print(f"Transcription appended to {output_file}")
    
if __name__ == "__main__":
    video_directory = os.path.expanduser("~/Videos/vocal-training/")
    output_file = os.path.expanduser("~/personal/brain/1-workspace/Vocal training.md")
    
    try:
        recent_video = get_most_recent_video(video_directory)
        transcribe_video(recent_video, output_file)
    except FileNotFoundError as e:
        print(e)
