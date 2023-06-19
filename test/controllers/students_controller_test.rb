require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { aadhar_number: @student.aadhar_number, bank_account_number: @student.bank_account_number, dob: @student.dob, father_name: @student.father_name, mobile_number: @student.mobile_number, mother_name: @student.mother_name, name: @student.name, samagra_id: @student.samagra_id, scholar_id: @student.scholar_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { aadhar_number: @student.aadhar_number, bank_account_number: @student.bank_account_number, dob: @student.dob, father_name: @student.father_name, mobile_number: @student.mobile_number, mother_name: @student.mother_name, name: @student.name, samagra_id: @student.samagra_id, scholar_id: @student.scholar_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
