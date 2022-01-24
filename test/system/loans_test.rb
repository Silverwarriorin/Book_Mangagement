require "application_system_test_case"

class LoansTest < ApplicationSystemTestCase
  setup do
    @loan = loans(:one)
  end

  test "visiting the index" do
    visit loans_url
    assert_selector "h1", text: "Loans"
  end

  test "should create loan" do
    visit loans_url
    click_on "New loan"

    fill_in "Book", with: @loan.book_id
    fill_in "Date in", with: @loan.date_in
    fill_in "Date out", with: @loan.date_out
    fill_in "Student", with: @loan.student_id
    fill_in "Student name", with: @loan.student_name
    click_on "Create Loan"

    assert_text "Loan was successfully created"
    click_on "Back"
  end

  test "should update Loan" do
    visit loan_url(@loan)
    click_on "Edit this loan", match: :first

    fill_in "Book", with: @loan.book_id
    fill_in "Date in", with: @loan.date_in
    fill_in "Date out", with: @loan.date_out
    fill_in "Student", with: @loan.student_id
    fill_in "Student name", with: @loan.student_name
    click_on "Update Loan"

    assert_text "Loan was successfully updated"
    click_on "Back"
  end

  test "should destroy Loan" do
    visit loan_url(@loan)
    click_on "Destroy this loan", match: :first

    assert_text "Loan was successfully destroyed"
  end
end
