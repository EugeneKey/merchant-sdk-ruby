require 'spec_helper'

describe "MerchantSamples" do

  before :each do
    visit merchant_samples_path
  end

  describe "Settlements" do
    before do
      check_sample "Do direct payment"
      @transaction_id = get_response_value("TransactionID")
    end

    it_check_sample "Refund" do
      fill_in "Transaction", :with => @transaction_id
    end

    it_check_sample "Reverse transaction" do
      fill_in "Transaction", :with => @transaction_id
    end

    it_check_sample "Get transaction details" do
      fill_in "Transaction", :with => @transaction_id
    end
  end

  describe "Reporting" do
    it_check_sample "Get balance" do
      select "Return only the balance for the primary currency holding", :from => "Return all currencies"
    end

    it_check_sample "Get pal details"

    it_check_sample "Transaction search" do
      fill_in "Start date", :with => Time.now.to_s
    end
  end

  describe "Account Authentication" do
    it_check_sample "Set auth flow param"
  end

  describe "Recurring Payments" do
    it_check_sample "Create recurring payments profile" do
      fill_in "Billing start date", :with => Time.now
    end

    describe "With profileID" do
      before do
        check_sample "Create recurring payments profile" do
          fill_in "Billing start date", :with => Time.now
        end
        @profile_id = get_response_value("ProfileID")
      end

      it_check_sample "Get recurring payments profile details" do
        fill_in "Profile", :with => @profile_id
      end

      it_check_sample "Manage recurring payments profile status" do
        fill_in "Profile", :with => @profile_id
      end
    end
  end

  describe "Reference Transactions and Billing Agreemen" do
  end

  it_check_sample "Do direct payment"

  it_check_sample "Mass pay"

end