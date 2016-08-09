# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end
welcome = Welcome.create([{
  title: 'Nashville Orthopedic Massage',
  headline: "Hands on Health Care",
  notes: "
    <p>
      <i>
          Listening to and understanding YOU is what allows for the most effective treatment.
        I practice a proactive and preventative approach to wellness while also initiating
        the power of touch to rehabilitate and heal.
      </i>
    </p>
    <p>
        Find freedom in gravity through thepractice of manual therapy assessment, Myofascial
      techniques, and Orthopedic & Sports massage. An integral blend of Western and Eastern
      science are combined and tailored to the needs of each individual.  Healing is an art that
      we all possess based on our willingness to accept responsibility for and educate ourselves
      about our health in all forms.  Finding health by defining balance...
    </p>",
  role: 'main'}])
welcome = Welcome.create([{
  title: "Find Freedom From:",
  headline:
    "<ul class='list-group col-md-4'>
      <li class='text-center list-group-item list-group-item-action'>Musculoskeletal Pain</li>
      <li class='text-center list-group-item list-group-item-action'>Headaches</li>
      <li class='text-center list-group-item list-group-item-action'>TMJ</li>
      <li class='text-center list-group-item list-group-item-action'>Sciatica</li>
      <li class='text-center list-group-item list-group-item-action'>Plantar Fascitis/Foot Pain</li>
      <li class='text-center list-group-item list-group-item-action'>Scar Tissue</li>
      <li class='text-center list-group-item list-group-item-action'>Sprains/Strains</li>
      <li class='text-center list-group-item list-group-item-action'>Anxiety</li>
      <li class='text-center list-group-item list-group-item-action'>Mental/Emotional imbalances</li>
      <li class='text-center list-group-item list-group-item-action'>Sleep Disorders</li>
      <li class='text-center list-group-item list-group-item-action'> General Discomfort </li>
      <li class='text-center list-group-item list-group-item-action'>And more...</li>
    </ul>",
  notes:
  "<p>
      Our main system of support in gravity is our Myofascial system.  This system consists of a
    continuous web of layered collagen fibers that extend in planes from head to toe.  Stress,
    illness, physical and emotional trauma can cause this connective tissue matrix to compress and
    restrict the body's inner space thus creating misalignment, pain and pathology of the whole Human
    organism.
  </p>
  <p>
      Connective Tissue Massage, Structural Bodywork, Isolated Stretching Techniques and Corrective
    Movements release repetitive strain patterns and reprogram the neurological functions of the
    musculofasical system.  This provides the opportunity to restore function, resilience,
    awareness and HEALTH!
  </p>",
  role: '1'}])
user_admin = User.create!(email: 'nashvilleOM@gmail.com', password: 'nomnomnom', admin: true)
