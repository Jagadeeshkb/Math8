#added Title
# Generate a sine wave signal
x <- seq(0, 2*pi, length.out = 100)
y <- sin(5*x)

# Compute the Fourier transform
y_fft <- fft(y)

# Plot the amplitude spectrum
plot(Mod(y_fft), type = "l", xlab = "Frequency", ylab = "Amplitude")
