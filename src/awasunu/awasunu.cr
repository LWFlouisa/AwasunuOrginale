#######################################################################################
#                                      Awasunu                                        #
#######################################################################################
# This handles basic string generation for the scripting language.                    #
#######################################################################################
macro define_method(method_name, content)
  def {{method_name}}
    {{content}}
  end
end
      
define_method viola, system("clear")

define_method ast(label, value), [ label, value ]
define_method       atom(value), ast(value, "#{value}")

define_method   encrire(input), puts input
define_method encrireln(input), print input

## Name of interactive terminal.
define_method documentation(title, description), encrireln("#{title} #{description}")

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method self.osv(o, s, v), "#{o} #{s} #{v}"
define_method self.sov(s, o, v), "#{s} #{o} #{v}"
define_method self.vos(v, o, s), "#{v} #{o} #{s}"

def self.wodesa(*args)
  o1, s1, v1, s2, o2, v2,
  v3, o3, s3, s4, o4, v4 = args

  a = osv(o1, s1, v1)
  b = sov(s2, o2, v2)
  c = vos(v3, o3, s3)
  d = sov(s4, o4, v4)

  %Q(#{a}, #{b}. #{c}, #{d})
end
      
def self.grammaire_clustre(*args)
  v1, o1, s1, s2, o2, v2,
  o3, s3, v3, s4, o4, v4 = args

  a = vos(v1, o1, s1)
  b = sov(s2, o2, v2)
  c = osv(o3, s3, v3)
  d = sov(s4, o4, v4)

  %Q(#{a}, #{b}. #{c}, #{d})
end

define_method expression(phrase_one, phrase_two), encrire(%Q(["#{phrase_one}", "#{phrase_two}"]\n))

define_method parle_grammaire(v, o, s), encrireln("['#{v}', '#{o}','#{s}']")
define_method nihongotupelo(v, o, s), puts "['#{v}', '#{o}', '#{s}']"

## Grammar
define_method ne(first_noun, second_noun), encrireln("Ne #{first_noun} ou #{second_noun}, ")
define_method            mais(third_noun), encrireln("mais c'est #{third_noun}. ")

define_method         cette(noun, adjective), "Cette #{noun} est #{adjective}."
define_method      maisette(noun, adjective), "Maisette #{noun} est #{adjective}."
define_method  sinon(noun, adj1, adj2, adj3), "Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}."

define_method parle(phrase), encrireln(phrase)
