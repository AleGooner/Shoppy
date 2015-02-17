# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# encoding: utf-8
Product.delete_all

#  Parrot Jumping Sumo
Product.create!(title: 'Parrot Jumping Sumo',
    description:
    %{<p>
        Parrot Jumping Sumo is a responsive bot with a strong personality which rolls, rushes,
        zig-zags, circles, takes turns at 90°. In a flash, it leaps up to 80 cm in height!.
        Jumping Sumo has 3 control modes:
        1. Jumper: Jumps up to 80 cm in height and length, and always lands on its wheels.
        2. Kicker: Its spring enables it to push objects in its path!
        3. Auto-Balance: Balancing a fashion, as a "Segway". Acrobatic tricks are available from the
        free app FreeFlight3©. Thanks to its embedded camera, it plunges you into the heart of the
        MiniDrones action.
        </p>},
    image_url: 'sumo.jpg',
    price: 160.00
    )

# Parrot Rolling Spider
Product.create!(title: 'Parrot Rolling Spider',
    description:
    %{<p>
        Parrot Rolling Spider is an ultra-compact drone controlled by smartphone. It flies indoors
        and outdoors with surprising speed and stability. Acrobatic tricks are available from the free
        app for MiniDrones FreeFlight3©.

        1. Ultra-light, Rolling Spider performs half- and u-turns in one swipe.
        2. He does front and rear loops in one click.
        3. With its removable wheels, it runs from floor to ceiling and walls.
        4. Equipped with a propellers cutout in case of a collision, it is designed to fly without
            harming living-room's luminaire.

        The Parrot Rolling Spider is six times lighter than AR.Drone and the same flight stability
        thanks to an autopilot based on a 3-axis gyroscope and 3-axis accelerometer.
        </p>},
    image_url: 'spider.jpg',
    price: 99.00
    )

# Parrot AR Drone
Product.create!(title: 'Parrot AR.Drone',
    description:
    %{<p>
        The cutting edge EPP design of the AR.Drone 2.0 ensures it has a robust structure. Capture
        amazing footage streamed and recorded directly to your smartphone using the built-in 720p
        HD camera. AR.FreeFlight3© is the primary application used to fly and pilot the AR.Drone. Pilot
        with or without the accelerometer and switch from the frontal camera to te vertical camera.
        </p>
        <ul>
            <li> Record pictures, nav data & videos and upload them instantly right from the application. </li>
            <li> New user friendly interface. </li>
            <li> Compatible with AR.Drone and AR.Drone 2.0</li>
        </ul>},
    image_url: 'ardrone.png',
    price: 380.00
    )

# Parrot  Bebop Drone
Product.create!(title: 'Parrot Bebop Drone',
    description:
    %{<p>
        Lightweight and built with safety in mind. Fitted with a Full HD Fishwyw camera, digitally stabilized on
        3 axes. Ready First Person View piloting thanks to its accessories. and its compatibility with many
        glasses. Its feather-weight ABS reinforced structure (400g) makes the Bebop Drone robust and safe.
        Thanks to a GPS system, a Return Home function brings the Bebop drone easily back to its take-off
        point. Finally, EPP hulls included in the pack makes indoor flight safer.
        </p>},
    image_url: 'bebop.png',
    price: 470.00
    )


