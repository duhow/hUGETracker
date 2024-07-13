# Instruments

![Screenshot of the instruments tab, editing a square instrument](../../img/square_inst_tab.png)
![Screenshot of the instruments tab, editing a wave instrument](../../img/wave_inst_tab.png)
![Screenshot of the instruments tab, editing a noise instrument](../../img/noise_inst_tab.png)

*  **Channel**: Selects which "type" of instrument this is. Can be **square**, for instruments to be played on the pulse channels; **wave**, for instruments to be played on the wave channel; and **noise**, for instruments to be played on the noise channel.
*  **Instrument number**: This selects which instrument of its type to edit. Ranges from 1 to 15 (inclusive).
*  **Instrument name**: This is the name for the instrument. It is shows in the instrument combobox in the [toolbar](../toolbar.md) and in the [song components](../song-components.md).
*  **Length**: When enabled, a playing note will be cut off immediately after a certain amount of time elapses.
*  **Test octave**: Plays a test note for a few seconds, to test what the instrument will sound like.
* **Enable subpattern**: Use the subpattern when playing the instrument.
*  **Import/Export buttons**: Used to import or export an instrument's settings to/from a file.
*  **Sweep time**: Selects the "sweep time" for the note to take. The greater the value, the slower the sweep.
*  **Sweep direction**: Selects the direction of the sweep the note should take. "Up" portamentos the note up, "Down" portamentos it down.
*  **Sweep size**: Selects the magnitude of sweep for the note to take per "tick" as specified by sweep time.
* **Duty**: Selects the timbre of note to play. Each setting sounds different, and they are useful when you don't want both of the duty channels to clash with one another.
* **Start vol**: Selects the starting volume for the envelope. When there's no change on the envelope, this functions simple as the volume for the note, unless overridden by a [volume effect command](../effect-reference.md).
* **Direction**: This specifies which direction for the envelope to go.
* **Change**: This specifies for how long the envelope goes. The higher the value, the more the note will fade in or out.
* **Wave volume**: Specifies at what volume a wave instrument shall play, unless overridden by a [volume effect command](../effect-reference.md).
* **Waveform**: Specifies which waveform should play as part of this instrument. See [waves](./waves.md).
* **7-bit counter**: When checked, the instrument will sound more like a musical tone rather than noise.
