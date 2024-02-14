
# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    puzzleparse(filename::String) -> Dict{Int64, MyPuzzleRecordModel}

    What it does: Creates a dictionary from a file where the key is the line number in the file and the value is the String
        associated with that line
    Arguments: File name of type String
    Returns: records with key of file line number and value of line contents stored in MyPuzzleRecordModel 
"""
function puzzleparse(filename::String)::Dict{Int64, MyPuzzleRecordModel}
    
    # initialize -
    records = Dict{Int64, MyPuzzleRecordModel}()
    linecounter = 1;
    
    # main -
    open(filename, "r") do io
        for line ∈ eachline(io)
            # TODO: do something with this line of text
            records[linecounter]=_build_record_model(record=line)
            linecounter+=1
        end
    end

    # return the header and the records -
    return records;
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #