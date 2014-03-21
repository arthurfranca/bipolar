class HomeController < ApplicationController
  def index
    @test_subject_a = TestSubject.new
    @test_subject_b = TestSubject.new
  end
end
