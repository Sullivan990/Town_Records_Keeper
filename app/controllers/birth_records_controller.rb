class BirthRecordsController < ApplicationController
  def new
    @birthrecord = BirthRecord.new
  end

  def create
    @birthrecord = BirthRecord.new(params.require(:birth_record)
        .permit(:birth_month, :birth_year, :birth_day, :first_name,
         :middle_name, :second_name, :last_name, :name_suffix, :code))

    if @birthrecord.save
      redirect_to new_birth_record_path, notice: 'Record successfully added.'
    else
      render :new
    end
  end

  def index
    @birthrecord = BirthRecord.all
  end
end
