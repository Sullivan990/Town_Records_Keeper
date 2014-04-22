class DeathRecordsController < ApplicationController
  def new
    @deathrecord = DeathRecord.new
  end

  def create
    @deathrecord = DeathRecord.new(params.require(:death_record)
        .permit(:month, :year, :day, :first_name, :middle_name,
          :second_name, :last_name, :maiden_name))

    if @deathrecord.save
      redirect_to new_death_record_path, notice: 'Record successfully added.'
    else
      render :new
    end
  end

  def index
    @deathrecord = DeathRecord.all
  end
end
