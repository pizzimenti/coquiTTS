# coquiConsoleTest.py
import sys
import sounddevice as sd
from TTS.api import TTS

def main():
    # Get user input from console
    text = input("Enter the text you want to convert to speech: ")
    
    # Initialize the Coqui TTS model
    tts = TTS(model_name="tts_models/en/ljspeech/tacotron2-DDC", progress_bar=False, gpu=False)
    
    # Generate audio from text
    print("Generating audio...")
    audio = tts.tts(text)
    
    # Play the generated audio
    print("Playing audio...")
    sd.play(audio)
    sd.wait()
    
    print("Done.")

if __name__ == "__main__":
    main()
