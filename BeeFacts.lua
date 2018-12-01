local _, BeeFacts = ...
BeeFacts = LibStub('AceAddon-3.0'):NewAddon(BeeFacts, 'BeeFacts', 'AceConsole-3.0')
local StdUi = LibStub('StdUi'):NewInstance()

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
	'Honeybees make out faces the same way we do. They take parts—like eyebrows, lips, and ears—and cobble them together to make out the whole face. It’s called "configular processing," and it might help computer scientists improve face recognition technology',
	'Cats are not bees. Infact cats can be just as alergic to bee stings as humans.',
	'It is said that Beeyonce is the queen bee.',
	'The practice of beekeeping dates back at least 4,500 years',
	'Approximately one third of the food we eat is the result of honey bee pollination',
	'Mead, which is made from fermented honey, is the world’s oldest fermented beverage.',
	'The perfect hexagons that form honeycomb hold the most amount of honey with the smallest amount of material (wax).',
	'Honey was found in King Tut’s tomb, and, because it never spoils, it was still good!',
	'Honey is 25% sweeter than table sugar.',
	'Honey is the only foodstuff that contains all of the necessary nutrients to sustain life.',
	'Bee venom is used as a treatment for several ailments, including arthritis and high blood pressure.',
	'Drones die after mating with a queen.',
	'A single hive can produce anywhere from 60 to 100 pounds of honey every year.',
	'The ancient Greeks and Romans viewed honey as a symbol of love, beauty, and fertility.',
	'There are people in Africa that keep elephants out of their fields by keeping honey bee hives around the fields in what is called a “bee fence.”',
	'In Greek mythology, Apollo is credited as being the first beekeeper.',
	'Ancient peoples used to believe that bees were created from the carcasses of dead animals.',
	' In ancient Egypt, people paid their taxes with honey.',
	'The ancient Greeks minted coins with bees on them.',
	'Beeswax is found in many of our everyday products, including furniture polishes, cosmetics, and medicines.',
	'The name ‘Melissa’ is derived from the Greek word for honey bee.',
	'Beekeeping is said to be the second oldest professions.',
	'Every species of bee performs their communication dances differently.',
	'The darker the honey, the greater amount of antioxidant properties it has.',
	'Bees can be trained to locate buried land mines.',
	'Ounce for ounce, honey bee venom is more deadly than cobra venom. Don’t worry, though – it takes 19 stings for every kilogram of a person’s body weight to be lethal.',
	'The first Anglo-Saxons drank beer made from water and honeycomb, with herbs for flavoring.',
	'The word “honeymoon” is derived from the ancient tradition of supplying a newlywed couple with a month’s supply of mead in order to ensure happiness and fertility.',
	'Humans sometimes use the Greater Honeyguide to find bee hives in the wild.',
	'While a worker bee will die after it stings, a queen can survive stinging.',
	'Worker bees have barbed stingers, while a queen has a smooth stinger, which she mostly uses to kill other queens.',
	'In the Hittite Empire (modern-day Turkey and Syria), a swarm’s value was equal to that of a sheep, and the penalty for bee thieving was a fine of 6 shekels of silver.',
	'The Magna Carta legalized the harvesting of wild honey by common folk.',
	'A hive will collect approximately 66 pounds of pollen per year.',
	'A worker bee can carry a load of nectar or pollen equal to 80% of her own body weight.',
	'Up until the mid-1700’s in England, it was common practice to kill all of the bees in a hive during honey collection.',
	'For every pound of honey produced, a hive must collect 10 pounds of pollen.',
	'In the United States, more than 300 different kinds of honey are produced every year. The variety in color and flavor is determined by the types of flowers from which the bees collect nectar.',
	'The European honey bee was brought over to North America by the Shakers. Because of this, Native Americans referred to honey bees as the “White Man’s Fly”.',
	'Honey bees did not spread to Alaska until 1927.',
	'During the American Revolution, George Washington said “It was the cackling geese that saved Rome, but it was the bees that saved America.” Read the full story here.',
	'Honey bees have 170 odorant receptors, and have a sense of smell 50 times more powerful than a dog.',
	'Every bee colony has its own distinct scent so that members can identify each other.',
	'Bes have 2 stomachs – one for eating, and one for storing nectar.',
	'Bees have existed for around 30 million years.',
	'Hives produce 5 distinct substances: honey, beeswax, propolis, pollen, and royal jelly.',
	'Newborn bees ask for food by sticking out their tongues at passing worker bees.',
	'While bears do enjoy honey, they prefer to eat bee larvae.',
	'Bees have long, straw-like tongues called a proboscis which they use to suck liquid nectar out of flowers.',
	'During the winter, some worker bees take on the job of “heater bees,” where they vibrate their bodies in order to keep the hive at the optimal temperature of 95ºF.',
	'Bees make honey by regurgitating digested nectar into honeycomb cells and then fanning it with their wings.',
	'Honeycomb cells have many uses other than storing honey. They are also used to store nectar, pollen, and water, as well as a nursery for larvae!',
	'Bees have 5 eyes – 3 simple eyes, and 2 compound eyes.',
	'Only female bees have stingers.',
	'The females do all of the work in the hive. The drones’ only job is to mate with a queen.',
	'Bees have 4 life stages: egg, larvae, pupae, and adult.',
	'Honey has antibacterial properties and can be used as a dressing for wounds.',
	'The top-bar hive originated in Africa.',
	'The queen bee (and only the queen) eats royal jelly for the duration of her life. This milky substance is produced in a special gland located in a worker bee’s head.',
	'Bees use propolis, a sticky substance gathered from the buds of trees, to fill in cracks and weatherproof their hives.',
	'Bees create wax in a special gland on their stomach, which they then chew to form honeycomb.',
	'Bees communicate in 2 ways: the waggle dance, and through the use of pheromones.',
	'Due to the rise in popularity of urban beekeeping, it is estimated that honey bees outnumber the residents of London 30-1 in the summer months.',
	'Ever wonder why a beekeeper’s suit is always white? It’s because bees react strongly to dark colors!',
	'Honey bees usually travel about 3 miles away from the hive in search of nectar and pollen.',
	'Honey is composed of 80% sugars and 20% water.',
	'During the winter, worker bees will take short “cleansing flights” in order to defecate and remove debris from the hive.',
	'Some worker bees have the job of being an “undertaker bee” and are in charge of removing dead bees from the hive.',
	'Due to colony collapse disorder, bees have been dying off at a rate of approximately 30% per year.',
	'In Wisconsin, beekeepers can apply to have their honey certified as pure and use “Wisconsin certified honey” on their packaging.',
	'Bees hate human breath.'
}
local DBdefaults = {
	profile = {
		Output = 'GUILD',
		Channel = ''
	}
}

function BeeFacts:isInTable(tab, frameName)
	if tab == nil or frameName == nil then
		return false
	end
	for _, v in ipairs(tab) do
		if v ~= nil and frameName ~= nil then
			if (strlower(v) == strlower(frameName)) then
				return true
			end
		end
	end
	return false
end

function BeeFacts:OnInitialize()
	BeeFacts.BfDB = LibStub('AceDB-3.0'):New('BeeFactsDB', DBdefaults)
	BeeFacts.DB = BeeFacts.BfDB.profile
end

function BeeFacts:OnEnable()
	self:RegisterChatCommand('beefact', 'ChatCommand')
	self:RegisterChatCommand('beefacts', 'ChatCommand')

	local window = StdUi:Window(nil, 'Bee facts!', 200, 200)
	window:SetPoint('CENTER', 0, 0)
	window:SetFrameStrata('DIALOG')

	local items = {
		{text = 'Instance chat', value = 'INSTANCE_CHAT'},
		{text = 'RAID', value = 'RAID'},
		{text = 'PARTY', value = 'PARTY'},
		{text = 'SAY', value = 'SAY'},
		{text = 'GUILD', value = 'GUILD'},
		{text = 'Custom channel', value = 'CHANNEL'}
	}

	window.FACT = StdUi:Button(window, 190, 20, 'FACT!')
	window.FACT:SetPoint('BOTTOM', window, 'BOTTOM', 0, 2)
	window.FACT:SetScript(
		'OnClick',
		function(this)
			if BeeFacts.DB.Output == 'CHANNEL' and BeeFacts.DB.Channel ~= '' then
				SendChatMessage('BeeFacts! ' .. facts[math.random(0, #facts - 1)], BeeFacts.DB.Output, nil, BeeFacts.DB.Channel)
			elseif BeeFacts.DB.Output ~= 'CHANNEL' then
				local announceChannel = BeeFacts.DB.Output

				-- Do some group checking logic
				if not IsInGroup(2) then
					if IsInRaid() then
						if announceChannel == 'INSTANCE_CHAT' then
							announceChannel = 'RAID'
						end
					elseif IsInGroup(1) then
						if announceChannel == 'INSTANCE_CHAT' then
							announceChannel = 'PARTY'
						end
					end
				elseif IsInGroup(2) then
					if announceChannel == 'RAID' then
						announceChannel = 'INSTANCE_CHAT'
					end
					if announceChannel == 'PARTY' then
						announceChannel = 'INSTANCE_CHAT'
					end
				end

				--Send it!
				SendChatMessage('BeeFacts! ' .. facts[math.random(0, #facts - 1)], announceChannel, nil)
			else
				print('Beefacts! Has encountered and error on sending your factoid.')
			end
		end
	)

	local Outputlbl = StdUi:Label(window, 'Who should we inform?', nil, nil, 180, 20)
	local Output = StdUi:Dropdown(window, 190, 20, items, BeeFacts.DB.Output)
	local Channellbl = StdUi:Label(window, 'Channel name:', nil, nil, 180, 20)
	local Channel = StdUi:EditBox(window, 190, 20, BeeFacts.DB.Channel)
	if value == 'CHANNEL' then
		Channel:Enable()
	else
		Channel:Disable()
	end

	Output.OnValueChanged = function(self, value)
		BeeFacts.DB.Output = value
		if value == 'CHANNEL' then
			Channel:Enable()
		else
			Channel:Disable()
		end
	end
	Channel.OnValueChanged = function(self, value)
		BeeFacts.DB.Channel = value
	end

	StdUi:GlueTop(Outputlbl, window, 0, -45)
	StdUi:GlueBelow(Output, Outputlbl, 0, -2)
	StdUi:GlueBelow(Channellbl, Output, 0, -20)
	StdUi:GlueBelow(Channel, Channellbl, 0, -2)

	window:Hide()
	BeeFacts.window = window
end

function BeeFacts:ChatCommand(input)
	if input and input ~= '' then
		local AllowedChannels = {
			'RAID',
			'PARTY',
			'SAY',
			'GUILD'
		}
		input = input:upper()
		if not BeeFacts:isInTable(AllowedChannels, input) then
			print('BeeFacts Error! You specified "' .. input .. '" you can only specify RAID, PARTY, SAY, and GUILD')
			return
		end

		SendChatMessage('BeeFacts! ' .. facts[math.random(0, #facts - 1)], input, nil)
	else
		BeeFacts.window:Show()
	end
end
