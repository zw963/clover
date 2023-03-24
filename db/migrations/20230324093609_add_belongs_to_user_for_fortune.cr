class AddBelongsToUserForFortune::V20230324093609 < Avram::Migrator::Migration::V1
  def migrate
    # FYI: We will run in to an error. Be sure to keep reading before running any code
    alter table_for(Fortune) do
      add_belongs_to user : User, on_delete: :cascade, fill_existing_with: :nothing
    end
  end

  def rollback
    alter table_for(Fortune) do
      remove_belongs_to :user
    end
  end
end
