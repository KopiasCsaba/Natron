# TL; DR
https://youtube.com/watch?v=vDPiEtO9IVY

# Natron subtitle skeleton

This is a natron project, that is prepared to be reused and scripted for generating multiple subtitles.

The white_cool_subtitle.ntp is a [Natron](https://natron.fr/) project.

This project is preconfigured, that it reads three parameters from the input_parameters.txt
 * First line: The base name for the output.<br>
   "foo" will translate to sub_long_foo_in_####.png, sub_long_foo_mid.png, sub_long_out_####.png
 * Second line: Main title
 * Thrid line: Sub row under the main title
 
There is a gen.sh included that has the above mentioned three parameters, and it executes the rendering, for example:

`
./gen.sh "foo" "I'am foo" "CEO at FOO Inc" 
`

# Using the output

The output frames will be showing up nicely in import, this is an example from lightworks:

<img src="https://raw.githubusercontent.com/KopiasCsaba/Natron/master/SubtitleSkeleton/docs/import.png">

You can insert those easily to the timeline too:
<img src="https://raw.githubusercontent.com/KopiasCsaba/Natron/master/SubtitleSkeleton/docs/timeline.png">

The first and the last parts are image sequences, but the middle one is one single image, for this reason you can resize them easily,
therefore making the subtitle appear as long as you want, without any hassle or manual cutting and freezing of a single frame.

See this in action here:
https://youtube.com/watch?v=vDPiEtO9IVY


# Natron project

<img src="https://raw.githubusercontent.com/KopiasCsaba/Natron/master/SubtitleSkeleton/docs/overview.png">
 * The project has three writers for the in, mid, out frames
 * The renderer's output path is scripted
 * There is two Text nodes that's input text is scripted to read the file's corresponding lines
