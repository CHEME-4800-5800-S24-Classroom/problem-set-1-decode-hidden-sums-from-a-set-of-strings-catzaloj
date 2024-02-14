# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

    TODO: Add documentation
    What it does: takes in MyPuzzleRecordModel and parses each line in the model to produce a number Int64 where the first 
        digit is the first digit in the line and the second digit is the last digit in the line
    Arguments: MyPuzzleRecordModel from models
    Returns: a tuple with the first entry being the hidden sum (total) and the second entry being a dictionary storing
        the key as the model line number of type Int64 and the value being the parsed number from the model line of type Int64
    """
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    
    # TODO: Add the logic for part 1 here
    for j in 1:length(models)
        dictSearch=models[j]
        numString=filter.(isdigit,dictSearch.record)
        two_pair=numString[1]*numString[end]
        codes[j]=parse(Int64,two_pair)
        total=total+codes[j]
    end
    # return the total -
    return (total, codes);
end

"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
What it does: takes in MyPuzzleRecordModel and parses each line in the model to produce a number Int64 where the first 
    digit is the first digit in the line and the second digit is the last digit in the line after replacing all number words with
    their respective digits
Arguments: MyPuzzleRecordModel from models
Returns:a tuple with the first entry being the hidden sum (total) and the second entry being a dictionary storing
    the key as the model line number of type Int64 and the value being the parsed number from the model line of type Int64
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    for j in 1:length(models)
        dictSearch=models[j]
        strung=dictSearch.record
        strung=replace(strung,"zerone"=>"zeroone","oneight"=>"oneeight","twone"=>"twoone","threeight"=>"threeeight",
        "fiveight"=>"fiveeight","sevenine"=>"sevennine","eightwo"=>"eighttwo","eighthree"=>"eightthree","nineight"=>"nineeight")
        strung=replace(strung,"zerone"=>"zeroone","oneight"=>"oneeight","twone"=>"twoone","threeight"=>"threeeight",
        "fiveight"=>"fiveeight","sevenine"=>"sevennine","eightwo"=>"eighttwo","eighthree"=>"eightthree","nineight"=>"nineeight")
        strung=replace(strung,"zero"=>"0","one"=>"1","two"=>"2","three"=>"3","four"=>"4","five"=>"5",
        "six"=>"6","seven"=>"7","eight"=>"8","nine"=>"9")
        

        numString=filter.(isdigit,strung)
        two_pair=numString[1]*numString[end]
        codes[j]=parse(Int64,two_pair)
        total=total+codes[j]

    end

     # TODO: Add the logic for part 2 here
    
     # return the total -
     return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #
