class Micropost < ActiveRecord::Base
  attr_accessor :short_content, :formated_date
  before_create :change_content
  before_update :change_content
  belongs_to :category
  belongs_to :user
  has_many :comments
  validates :content, length: { maximum: 1024 }, presence: true
  validates :name, presence: true
  def change_content
    contenido=" "+self.content+" "
    contenido=contenido.gsub(/(.*)(<br\/>)(.*)/, '\1\3')
    #sustitutions={"Yo"=>"Cabron", "Tu"=>"Wey", "El"=>"Culero", "Nosotros"=>"Bola de weyes", "Ustedes"=>"Ato de culeros", "Ellos"=>"Esos weyes", "Ellas"=>"Perras"}
    contenido_tokens=contenido.split
    contenido_tokens.map!{ |word|
      just_the_word=word.gsub(/[^[:word:]\s]/, '')
      if just_the_word.start_with?(word.upcase)
        starts_with_upper=true
      end
      sub_type_e_word=SubstitutionType.find_by name: "ExactWord"
      subs=Substitution.find_by replace_what:just_the_word, user_id: user.id, substitution_type_id: sub_type_e_word.id
      #subs ? (starts_with_upper ? (subs.replace_with.slice(0,1).capitalize + ( just_the_word.upcase ? subs.replace_with.slice(1..-1).capitalize : subs.replace_with.slice(1..-1)))  : (subs.replace_with.slice(0,1).downcase + ( just_the_word.upcase ? subs.replace_with.slice(1..-1).capitalize : subs.replace_with.slice(1..-1)))) :  word
      #subs ? word["#{just_the_word}"]=subs.replace_with : word
      if subs
        word["#{just_the_word}"]=subs.replace_with
      end
      word
    }
    self.content=contenido_tokens.join(" ") +"<br/>"
  end
  def short_content
    @short_content=self.content[0..140]+"..."
  end  
  def formated_date
    @formated_date=self.created_at.strftime("%d/%m/%Y")
  end  
end
