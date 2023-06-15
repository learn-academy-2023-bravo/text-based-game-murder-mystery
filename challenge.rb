# Text-based Game Challenge
def type_text(text, delay = 0.09)
    text.each_char do |char|
        print char
        STDOUT.flush
        sleep(delay)
    end
end

$has_knife = false
$has_card = false
$has_brandy = false
def user_exit 
    type_text ( 'You decided to quit snooping and call the police!!!
    _________  ___  ___  _______           _______   ________   ________     
    |\___   ___\\  \|\  \|\  ___ \         |\  ___ \ |\   ___  \|\   ___ \    
    \|___ \  \_\ \  \\\  \ \   __/|        \ \   __/|\ \  \\ \  \ \  \_|\ \   
         \ \  \ \ \   __  \ \  \_|/__       \ \  \_|/_\ \  \\ \  \ \  \ \\ \  
          \ \  \ \ \  \ \  \ \  \_|\ \       \ \  \_|\ \ \  \\ \  \ \  \_\\ \ 
           \ \__\ \ \__\ \__\ \_______\       \ \_______\ \__\\ \__\ \_______\
            \|__|  \|__|\|__|\|_______|        \|_______|\|__| \|__|\|_______|')
end

def closet_scene 
    type_text ( "You open the closet and a large man jumps out and tackles you to the ground. You catch a glimpse of his hat, it says 'Tweeter' in big bold letters. ")
    if $has_knife
        p 'You have a knife on you,'
    end
    if $has_brandy
        p 'You have bottle of Brandy,'
    end
    if $has_card
        p 'You have a card on you,'
    end
    if $has_knife == false && $has_brandy == false && $has_card == false
        type_text ( 'You have nothing to defend yourself with. You are dead 💀💀💀 
        _________  ___  ___  _______           _______   ________   ________     
        |\___   ___\\  \|\  \|\  ___ \         |\  ___ \ |\   ___  \|\   ___ \    
        \|___ \  \_\ \  \\\  \ \   __/|        \ \   __/|\ \  \\ \  \ \  \_|\ \   
             \ \  \ \ \   __  \ \  \_|/__       \ \  \_|/_\ \  \\ \  \ \  \ \\ \  
              \ \  \ \ \  \ \  \ \  \_|\ \       \ \  \_|\ \ \  \\ \  \ \  \_\\ \ 
               \ \__\ \ \__\ \__\ \_______\       \ \_______\ \__\\ \__\ \_______\
                \|__|  \|__|\|__|\|_______|        \|_______|\|__| \|__|\|_______|'  )
    else 
        p 'What will you use to defend yourself? Enter the name of the item'
        user_choice = gets.chomp 
        if user_choice == "knife" && $has_knife == true
            type_text ( 'You use the knife to stab your attacker, and you strike a deadly blow to the side of his head. His dead now... The police arrive shortly there after. You are arrested for the murder of both individuals. You spend the rest of your life in prison.
             _________  ___  ___  _______           _______   ________   ________     
            |\___   ___\\  \|\  \|\  ___ \         |\  ___ \ |\   ___  \|\   ___ \    
            \|___ \  \_\ \  \\\  \ \   __/|        \ \   __/|\ \  \\ \  \ \  \_|\ \   
                 \ \  \ \ \   __  \ \  \_|/__       \ \  \_|/_\ \  \\ \  \ \  \ \\ \  
                  \ \  \ \ \  \ \  \ \  \_|\ \       \ \  \_|\ \ \  \\ \  \ \  \_\\ \ 
                   \ \__\ \ \__\ \__\ \_______\       \ \_______\ \__\\ \__\ \_______\
                    \|__|  \|__|\|__|\|_______|        \|_______|\|__| \|__|\|_______|
                                                                                      ')
            abort 
        elsif user_choice == "brandy" && $has_brandy == true
            type_text ( 'You smash the bottle on the attackers head and knock him out. He lies on the floor uncouncious. You run out of the house, not looking back. As you get outside of the house you find that the police have just arrive on scence. They arrest the Tweeter employee for the murder of Elan Misk. You live the rest of you happy life and decide to never snoop around again.  
            _________  ___  ___  _______           _______   ________   ________     
            |\___   ___\\  \|\  \|\  ___ \         |\  ___ \ |\   ___  \|\   ___ \    
            \|___ \  \_\ \  \\\  \ \   __/|        \ \   __/|\ \  \\ \  \ \  \_|\ \   
                 \ \  \ \ \   __  \ \  \_|/__       \ \  \_|/_\ \  \\ \  \ \  \ \\ \  
                  \ \  \ \ \  \ \  \ \  \_|\ \       \ \  \_|\ \ \  \\ \  \ \  \_\\ \ 
                   \ \__\ \ \__\ \__\ \_______\       \ \_______\ \__\\ \__\ \_______\
                    \|__|  \|__|\|__|\|_______|        \|_______|\|__| \|__|\|_______|
                                                                                      ')
        elsif user_choice == "card" && $has_card == true
            type_text ( 'You pull out the card and you tell the man that you know who he is. You agree not to call the police as long as he lets you go. He agrees. The two of you walk away and Elans murder never gets solved. You live the rest of you life filled with guilt. 
            _________  ___  ___  _______           _______   ________   ________     
            |\___   ___\\  \|\  \|\  ___ \         |\  ___ \ |\   ___  \|\   ___ \    
            \|___ \  \_\ \  \\\  \ \   __/|        \ \   __/|\ \  \\ \  \ \  \_|\ \   
                 \ \  \ \ \   __  \ \  \_|/__       \ \  \_|/_\ \  \\ \  \ \  \ \\ \  
                  \ \  \ \ \  \ \  \ \  \_|\ \       \ \  \_|\ \ \  \\ \  \ \  \_\\ \ 
                   \ \__\ \ \__\ \__\ \_______\       \ \_______\ \__\\ \__\ \_______\
                    \|__|  \|__|\|__|\|_______|        \|_______|\|__| \|__|\|_______| ')
        else 
            type_text ( 'That is not a valid response, try again')
            closet_scene
        end
    end    
end    

# living_room object
def living_room
    user_choice = ''
    type_text ( 'You are in the living room, what do you do now?')
    user_choice = gets.chomp
    if user_choice == 'walk north'
        bed_room
    elsif user_choice == 'walk east'
        kitchen_room
    elsif user_choice == 'walk south'
        upstairs_room
    elsif user_choice == 'walk west'
        user_exit
    elsif user_choice == 'examine room'
        type_text ( 'The living room seems to be in disarray. There is a shattered vase on the ground, a fireplace on the north wall, a knocked over coffee table, and a laptop sitting open on the couch. You see a kitchen to the east, a bedroom to the north, stairs to the south, and the exit to the west.')
        living_room
    elsif user_choice == 'examine vase'
        # Describe Vase
        type_text ( 'The shattered remains of an antique vase lay scattered. It looks like someone knocked it over. Underneath some shards is a key card with Tweetter stamped on the front and just a barcode on the back, no name though!')
        living_room()
    elsif user_choice == 'take card'
        if $has_card == true
            type_text ( 'You already have the card on you')
        else
            type_text ( 'You grabbed the card and placed it in your pocket.')
            $has_card = true
        end
        living_room    
    elsif user_choice == 'examine laptop'
        # Describe laptop
        type_text ( 'Seems to be unlocked...An open web browser takes up the screen...BREAKING NEWS... DOGECOIN HITS $10,0000')
        living_room()
    elsif user_choice == 'examine fireplace'
        # Describe fireplace
        type_text ( 'Still warm with smoldering embers. Looks like its been used recently.')
        living_room()
    elsif user_choice == 'examine coffee table' or user_choice == 'examine table'
        # Describe table
        type_text ( 'A sole drink sits on the table on top of a Ruby coaster. There also seems to be a dark red like fluid splattered across the coffee table')
        living_room()
    elsif user_choice == 'help'
        # Describe commands
        p 'Available verbs are: walk, examine, take, open.'
        living_room()
    elsif user_choice == 'EXIT'
        abort
    else
        p 'That is not a recognized verb, try again'
        living_room()
    end
end

def bed_room
    user_choice = ''
    type_text ( 'You are in the downstairs bedroom, what do you do now?')
    user_choice = gets.chomp
    if user_choice == 'walk south'
        living_room()
    elsif user_choice == 'examine room'
        type_text ( 'Upon entering the bedroom, you see a bed with messed up sheets, an open window looking out to the street, and a dresser on the wall (closed). The living room is to the south.')
        bed_room()
    elsif user_choice == 'examine bed'
        type_text ( "A 1970's waterbed with Sferra Capri Honey Egyptian Cotton Sateen 1020 Thread Count sheets. Make a note of that for later. Im sure it will come in handy!")
        bed_room()
    elsif user_choice == 'examine window'
        type_text ('The window lays open overlooking the neighborhood. A small fragment of light blue cloth rests on the window sill. ')
        bed_room()
    elsif user_choice == 'open dresser'
        type_text ( 'Seems like a normal dresser...')
        bed_room()
    elsif user_choice == 'help'
        # Describe commands
        type_text ( 'Available verbs are: walk, examine, take, open.')
        bed_room()
    elsif user_choice == 'EXIT'
        abort
    else
        type_text ( 'That is not a recognized verb, try again')
        bed_room()
    end
end

def kitchen_room
    user_choice = ''
    type_text ( 'You are in the kitchen, what do you do now?')
    user_choice = gets.chomp
    if user_choice == 'walk west'
        living_room()
    elsif user_choice == 'examine room'
        type_text ( 'You walk into the kitchen and you see a fridge (closed), pantries (closed), a countertop, and a note on the table.')
        kitchen_room()
    elsif user_choice == 'open fridge'
        # Describe fridge
        type_text ( 'Blood spill all over the kitchen floor. There a contorted body shoved inside. You managed to recognize the body. IS THAT ELAN???')
        kitchen_room()
    elsif user_choice == 'open pantries'
        # Describe laptop
        type_text ("Thank goodness there are no dead bodies in here, just some really expensive brandy'
        
              #
             :#:
             : :
            /   \
           :_____: 
           |     | 
           |     | 
           |     | 
           |_____| 
           :_____: ")
        kitchen_room()
    elsif user_choice == 'take brandy'
        if $has_brandy == true
            type_text ( 'You already have the bottle on you')
        else
            type_text ( 'You grabbed the bottle and started sipping on it.')
            $has_brandy = true
        end
        kitchen_room
    elsif user_choice == 'examine note'
        # Describe note
        type_text ( "'Dear: Elan Misk
              I dont think its a good idea to keep firing employees from Tweetter! It might come back to you and bite you in the behind'
            There's no signature")
        kitchen_room()
    elsif user_choice == 'examine countertop'
        # Describe counter
        puts '___________________________________ ______________________'
        puts '\                                  | (_)     (_)    (_)   \ '
        puts ' `.                                |  __________________   }'
        puts '   `-..........................____|_(                  )_/ '
        puts 'There are a few knives laying on the countertop. One of them seems to be covered in blood'
        kitchen_room()
    elsif user_choice == 'take knife'
        if $has_knife == true
            type_text ( 'You already have a knife')
        else
            type_text ('You grabbed the knife to hold on to.')
            $has_knife = true
        end
        kitchen_room()
    elsif user_choice == 'help'
        p 'Available verbs are: walk, examine, take, open.'
        kitchen_room()
    elsif user_choice == 'EXIT'
        abort
    else
        type_text ( 'That is not a recognized verb, try again')
        kitchen_room()
    end
end

def upstairs_room
    user_choice = ''
    type_text ('You are in the upstairs bedroom, what do you do now?')
    user_choice = gets.chomp
    if user_choice == 'walk north'
        living_room()
    elsif user_choice == 'examine room'
        type_text ('In the upstairs bedroom, you see a tidy bed, a suitcase, and a closet(closed). The air is still and you get an ominous feeling.')
        upstairs_room()
    elsif user_choice == 'examine bed'
        type_text ( 'This bed is cleanly made, nothing weird going on here.')
        upstairs_room()
    elsif user_choice == 'examine suitcase'
        type_text( 'The suitcase is open, and seems to be packed in a hurry')
        upstairs_room()
    elsif user_choice == 'open closet'
        closet_scene
    
    elsif user_choice == 'help'
        # Describe commands
        p 'Available verbs are: walk, examine, take, open.'
        upstairs_room()
    elsif user_choice == 'EXIT'
        abort
    else
        type_text ( 'That is not a recognized verb, try again')
        upstairs_room()
    end
end

type_text( 'What is your name?')
user_name = gets.chomp

type_text( "Welcome, #{user_name}. You have been invited to a party at your friend Elan's house. Along with you, Elan Misk invited a bunch of other friends, none of which you have ever met. Upon arrival to Elan's home, you notice that the front door is ajar with no noise coming from inside. As you enter you are met with a strange scene. The living room seems to be in disarray. There is a shattered vase on the ground, a fireplace on the north wall, a knocked over coffee table, and a laptop sitting open on the couch. You see a kitchen to the east, a bedroom to the north, stairs to the south, and the exit to the west.")

type_text( "You can use the following commands: walk, examine, take, open, and help to get this list again. 
            Use examine room to get a description.")

living_room()