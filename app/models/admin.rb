class Admin < Neo4j::Model
  devise :database_authenticatable, :registerable, :timeoutable, :validatable,
         :timeout_in => 20.minutes

  property :name
  property :email
  property :password

  index :email, :type => :exact
  index :name


end
