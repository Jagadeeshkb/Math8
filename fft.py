import numpy as np

singal = np.array([00,0.1,0.0,0.1])

fft_results = np.fft.fft(singal)

#print the FFT 
print("FFT Result: ",fft_results)