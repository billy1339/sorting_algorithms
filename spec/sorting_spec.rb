require_relative 'spec_helper'
require_relative '../sorting'

describe "Sorting Algorithm Results" do

  arr = [3,4,9,15,34,12,1,99,14]

  it "returns a valid soting with bubble_sort" do
    expect(arr.bubble_sort).to eq([1,3,4,9,12,14,15,34,99])
  end

  it "returns a valid soting with selection_sort" do
    expect(arr.selection_sort).to eq([1,3,4,9,12,14,15,34,99])
  end

  it "does not return the origininal array with bubble_sort" do
    expect(arr.bubble_sort).not_to eq([3,4,9,15,34,12,1,99,14])
  end

  it "does not return the origininal array with selection_sort" do
    expect(arr.selection_sort).not_to eq([3,4,9,15,34,12,1,99,14])
  end

  it "returns the original array, not with swaped values" do
    expect(arr.swap(0, 1)).not_to eq([3,4,9,15,34,12,1,99,14])
  end

  it "returns the array with swaped values" do
    expect(arr.swap(0, 1)).to eq([4,3,9,15,34,12,1,99,14])
  end

  it "returns the array with swaped values" do
    expect(arr.swap(2, 6)).to eq([3,4,1,15,34,12,9,99,14])
  end

end
