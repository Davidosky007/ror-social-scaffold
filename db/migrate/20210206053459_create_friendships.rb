class CreateFriendships < ActiveRecord::Migration[5.2]
  def change
    create_table :friendships do |_t|
      def change
        create_table :friendships do |t|
          t.references :user, index: true, foreign_key: true
          t.references :friend, foreign_key: { to_table: :users }, index: true
          t.boolean :confirmed

          t.timestamps null: false
        end
      end
    end
  end
end