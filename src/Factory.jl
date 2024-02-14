
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
"""
_build_record_model(; record::String = "abc123")::MyPuzzleRecordModel
What it does: creates a model using the MyPuzzleRecordModel struct which returns 3 datafields: record, characters, 
    and length of types String, Array{Char,1}, and Int64 
Arguments: keyword argument record assigned a String
Returns: MyPuzzleRecordModel
"""

function _build_record_model(; record::String = "abc123")::MyPuzzleRecordModel


    # create -
    puzzle = MyPuzzleRecordModel();
    puzzle.record = record;
    puzzle.len=length(record);
    puzzle.characters=collect(record);
    # return -
    return puzzle;
end

# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #


# ===== PUBLIC METHODS BELOW HERE =================================================================================== #
# TODO: Make a build method to construct MyPuzzleRecordModel types
# ===== PUBLIC METHODS ABOVE HERE =================================================================================== #