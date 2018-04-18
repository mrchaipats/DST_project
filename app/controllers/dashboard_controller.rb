class DashboardController < ApplicationController
  #before_action :authenticate_user!

  def index
    # age1 represents count number of records that has age <= 20
    @age1 = Dataset.age1
    # age2 represents count number of records that has 20 < age <= 30
    @age2 = Dataset.age2
    # age3 represents count number of records that has 30 < age <= 40
    @age3 = Dataset.age3
    # age4 represents count number of records that has 40 < age <= 50
    @age4 = Dataset.age4
    # age5 represents count number of records that has 50 < age <= 60
    @age5 = Dataset.age5
    # age6 represents count number of records that has 60 < age <= 70
    @age6 = Dataset.age6

    @ageData = [["age <= 20", @age1],
                ["20 < age <= 30", @age2],
                ["30 < age <= 40", @age3],
                ["40 < age <= 50", @age4],
                ["50 < age <= 60", @age5],
                ["60 < age <= 70", @age6]]

    @job = Dataset.job
    @education = Dataset.education
    @marital = Dataset.marital
    @default = Dataset.default
    @housing = Dataset.housing
    @loan = Dataset.loan
    @contact = Dataset.contact
    @month = Dataset.month
    @day_of_week = Dataset.day_of_week
    @duration = Dataset.duration
    @campaign = Dataset.campaign
    @pdays = Dataset.pdays
    @previous = Dataset.previous

  end

  def query
    @data = Logistic.getData(params[:query][:lower_bound], params[:query][:upper_bound])
    redirect_to :controller => "dashboard", :action => "enquiry", :data => @data
  end

  def enquiry

  end

  def logistic_regression

    # age1 represents count number of records that has age <= 20
    @age1 = Logistic.age1
    # age2 represents count number of records that has 20 < age <= 30
    @age2 = Logistic.age2
    # age3 represents count number of records that has 30 < age <= 40
    @age3 = Logistic.age3
    # age4 represents count number of records that has 40 < age <= 50
    @age4 = Logistic.age4
    # age5 represents count number of records that has 50 < age <= 60
    @age5 = Logistic.age5
    # age6 represents count number of records that has 60 < age <= 70
    @age6 = Logistic.age6

    @ageData = [["age <= 20", @age1],
                ["20 < age <= 30", @age2],
                ["30 < age <= 40", @age3],
                ["40 < age <= 50", @age4],
                ["50 < age <= 60", @age5],
                ["60 < age <= 70", @age6]]

    @job = Logistic.job
    @education = Logistic.education
    @marital = Logistic.marital
    @default = Logistic.default
    @housing = Logistic.housing
    @loan = Logistic.loan
    @contact = Logistic.contact
    @month = Logistic.month
    @day_of_week = Logistic.day_of_week
    @campaign = Logistic.campaign
    @pdays = Logistic.pdays
    @previous = Logistic.previous
  end

  def non_potential
    # age1 represents count number of records that has age <= 20
    @age1 = Logistic.age1Non
    # age2 represents count number of records that has 20 < age <= 30
    @age2 = Logistic.age2Non
    # age3 represents count number of records that has 30 < age <= 40
    @age3 = Logistic.age3Non
    # age4 represents count number of records that has 40 < age <= 50
    @age4 = Logistic.age4Non
    # age5 represents count number of records that has 50 < age <= 60
    @age5 = Logistic.age5Non
    # age6 represents count number of records that has 60 < age <= 70
    @age6 = Logistic.age6Non

    @ageData = [["age <= 20", @age1],
                ["20 < age <= 30", @age2],
                ["30 < age <= 40", @age3],
                ["40 < age <= 50", @age4],
                ["50 < age <= 60", @age5],
                ["60 < age <= 70", @age6]]

    @job = Logistic.jobNon
    @education = Logistic.educationNon
    @marital = Logistic.maritalNon
    @default = Logistic.defaultNon
    @housing = Logistic.housingNon
    @loan = Logistic.loanNon
    @contact = Logistic.contactNon
    @month = Logistic.monthNon
    @day_of_week = Logistic.day_of_weekNon
    @campaign = Logistic.campaignNon
    @pdays = Logistic.pdaysNon
    @previous = Logistic.previousNon
  end
end
