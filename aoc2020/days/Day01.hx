package days;

import openfl.Assets;

class Day01 extends Day
{
    override public function start():Void
    {
        var answer:Int = getAnswer();
        var answerb:Int = getAnswerB();

        PlayState.addOutput("Day 1a Answer: " + Std.string(answer));
        PlayState.addOutput("Day 1b Answer: " + Std.string(answerb));
    }

    private function getAnswer():Int
    {
        var lines:String = Assets.getText("assets/data/day01_input.txt");
        var inputs:Array<Null<Int>> = lines.split("\r\n").map(Std.parseInt);

        for (i in 0...inputs.length - 1)
        {
            for (j in 0...inputs.length)
            {
                if (i != j)
                {
                    if (inputs[i] + inputs[j] == 2020)
                        return inputs[i] * inputs[j];
                }
            }
        }
        return -1;
    }

    private function getAnswerB():Int
    {
        var lines:String = Assets.getText("assets/data/day01_input.txt");
        var inputs:Array<Null<Int>> = lines.split("\r\n").map(Std.parseInt);

        for (i in 0...inputs.length - 1)
        {
            for (j in 0...inputs.length)
            {
                for (k in 0...inputs.length)
                {
                    if (i != j && i != k && j != k)
                    {
                        if (inputs[i] + inputs[j] + inputs[k] == 2020)
                            return inputs[i] * inputs[j] * inputs[k];
                    }
                }
            }
        }
        return -1;
    }
}
