class ConvertCollaboratorNickNamesToUser < ActiveRecord::Migration
  def up
    execute("UPDATE collaborators SET user_id = (SELECT id FROM users WHERE users.nickname = collaborators.login)")
  end

  def down
  end
end
