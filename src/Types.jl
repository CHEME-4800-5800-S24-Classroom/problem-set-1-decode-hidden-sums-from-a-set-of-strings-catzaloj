"""
 MyPuzzleRecordModel

    record::String- a single encoded line of text
    characters::Array{Char,1}- an array that holds the characters of record
    len::Int64- an integer that describes the number of characters in record
"""
# TODO: Finish the MyPuzzleRecordModel type
mutable struct MyPuzzleRecordModel
    # data
    record::String
    characters::Array{Char,1}
    len::Int64
    # constructor
    MyPuzzleRecordModel()=new()
end