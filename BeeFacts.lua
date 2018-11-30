local _, BeeFacts = ...
BeeFacts = LibStub('AceAddon-3.0'):NewAddon(BeeFacts, 'BeeFacts', 'AceConsole-3.0')

local facts = {
	'The honey bee has been around for millions of years.',
	'Honey bees, scientifically also known as Apis mellifera, which mean "honey-carrying bee", are environmentally friendly and are vital as pollinators.',
	'Bees are the only insect that produces food eaten by man.',
	'Honey is the only food that includes all the substances necessary to sustain life, including enzymes, vitamins, minerals, and water',
	'Honey is the only food that contains "pinocembrin", an antioxidant associated with improved brain functioning.',
	'Honey bees have 6 legs',
	'Honey bees have 2 compound eyes made up of thousands of tiny lenses (one on each side of the head)',
	'Honey bees have 3 simple eyes on the top of the head',
	'Honey bees have 2 pairs of wings, a nectar pouch, and a stomach.',
	'Honey bees have 170 odorant receptors, compared with only 62 in fruit flies and 79 in mosquitoes.',
	'Honey bees exceptional olfactory abilities include kin recognition signals, social communication within the hive, and odor recognition for finding food.',
	'Honey bees sense of smell is so precise that it could differentiate hundreds of different floral varieties and tell whether a flower carried pollen or nectar from metres away.',
	"The honey bee's wings stroke incredibly fast, about 200 beats per second, thus making their famous, distinctive buzz.",
	'A honey bee can fly for up to six miles, and as fast as 15 miles per hour.',
	"The average worker bee produces only about 1/12th teaspoon of honey in her lifetime. Doesn't this fact make you love every drop of honey?",
	'A hive of bees will fly 90,000 miles, the equivalent of three orbits around the earth to collect 1 kg of honey.',
	"It takes one ounce of honey to fuel a bee's flight around the world (National Honey Board).",
	'A honey bee visits 50 to 100 flowers during a collection trip.',
	"The bee's brain is oval in shape and only about the size of a sesame seed, yet it has remarkable capacity to learn and remember things and is able to make complex calculations on distance travelled and foraging efficiency.",
	'A colony of bees consists of 20,000-60,000 honeybees and one queen. Worker honey bees are female, live for about 6 weeks and do all the work.',
	"The queen bee can live up to 5 years and it's role is to fill the hive with eggs.",
	'The queen bee is the busiest in the summer months, when the hive needs to be at its maximum strength, she lays up to 2500 eggs per day.',
	'The queen bee has control over whether she lays male or female eggs. If she uses stored sperm to fertilize the egg, the larva that hatches is female.',
	'If the egg is left unfertilized, the larva that hatches is male.',
	'Female bees inherit genes from their mothers and their fathers while male bees inherit only genes from their mothers.',
	'Larger than the worker bees, the male honey bees (also called drones), have no stinger and do no work at all. All they do is mating.',
	'In fact, before winter or when food becomes scarce, female honeybees usually force surviving males out of the nest.',
	'Each honey bee colony has a unique odour for members identification.',
	'Only worker bees sting, and only if they feel threatened and they die once they sting.',
	'Queens have a stinger, but they dont leave the hive to help defend it.',
	'It is estimated that 1100 honey bee stings are required to be fatal.',
	'The worker bees produce honeycomb which ceigomprises hexagon shaped cells through the consumption of honey produced from the collected flower nectar.',
	'To produce one pound of beeswax, six to ht pounds of honey are ingested',
	'Honey bees communicate with one another by dancing. More on their awesome sense of time, communication of distance and direction in "The Awesome Honeybee Dance".',
	'During winter, honey bees feed on the honey they collected during the warmer months. They form a tight cluster in their hive to keep the queen and themselves warm.',
	"A toxin in bee venom called melittin may prevent HIV. Melittin can kill HIV by poking holes into the virus's protective envelope.",
	'During chillier seasons, worker bees can live for nine months. But in the summer, they rarely last longer than six weeks—they literally work themselves to death.',
	'Bees are hardwired to do certain jobs.',
	'Scout bees, which search for new sources of food, are wired for adventure.',
	'Soldier bees, discovered in 2012, work as security guards their whole life.',
	'One percent of all middle-aged bees become undertakers—a genetic brain pattern compels them to remove dead bees from the hive.',
	'Regular honeybees—which perform multiple jobs in their lifetime—will change their brain chemistry before taking up a new gig.',
	'When aging bees do jobs usually reserved for younger members, their brain stops aging. In fact, their brain ages in reverse.',
	'To reinforce their hives, bees use a resin from poplar and evergreen trees called propolis. It’s basically beehive glue. Although bees use it as caulk, humans use it to fight off bacteria, viruses, and fungi.',
	'Honeybees make out faces the same way we do. They take parts—like eyebrows, lips, and ears—and cobble them together to make out the whole face. It’s called "configular processing," and it might help computer scientists improve face recognition technology'
}

function BeeFacts:OnEnable()
	self:RegisterChatCommand('beefact', 'ChatCommand')
end

function BeeFacts:ChatCommand(input)
	local msg = facts[math.random(0, #facts - 1)]
	SendChatMessage('BeeFacts: ' .. msg, 'GUILD', nil)
end
