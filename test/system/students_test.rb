require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Aadhar number", with: @student.aadhar_number
    fill_in "Bank account number", with: @student.bank_account_number
    fill_in "Dob", with: @student.dob
    fill_in "Father name", with: @student.father_name
    fill_in "Mobile number", with: @student.mobile_number
    fill_in "Mother name", with: @student.mother_name
    fill_in "Name", with: @student.name
    fill_in "Samagra", with: @student.samagra_id
    fill_in "Scholar", with: @student.scholar_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Aadhar number", with: @student.aadhar_number
    fill_in "Bank account number", with: @student.bank_account_number
    fill_in "Dob", with: @student.dob
    fill_in "Father name", with: @student.father_name
    fill_in "Mobile number", with: @student.mobile_number
    fill_in "Mother name", with: @student.mother_name
    fill_in "Name", with: @student.name
    fill_in "Samagra", with: @student.samagra_id
    fill_in "Scholar", with: @student.scholar_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
