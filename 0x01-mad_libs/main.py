def get_input(prompt: str):
    user_input = input(prompt)
    return user_input

name = get_input("Enter your bug bounty hunter alias: ")
activity = get_input("Describe an activity you enjoy when not hacking (e.g., sipping coffee, listening to music): ")
website = get_input("Enter the name of a fictional website: ")
vulnerability = get_input("Specify a technical vulnerability (e.g., SQL injection, Cross-Site Scripting): ")
payment = get_input("Mention an extravagant item you'd buy with the bug bounty reward: ")
fun_activity = get_input("Share a fun activity you'd do to celebrate your successful bug report: ")

# Mad Libs Story
mad_libs_story = f"""
Greetings fellow hackers! I am {name}, the bug bounty hunter extraordinaire. When I'm not tirelessly hunting for vulnerabilities, you can find me {activity}.
One day, I stumbled upon {website}, a website that seemed impervious to the common eye. Little did they know, their fortress had a chink in the armor — a {vulnerability}.
Excitement coursed through my veins as I responsibly disclosed the vulnerability to the website's owner, who, to my surprise, turned out to be a tech-savvy entrepreneur.
Acknowledging my prowess, they not only patched the issue promptly but also rewarded me handsomely with a bag of digital gold. With the bounty, I splurged on a fancy {payment},
a trophy of my triumph in the digital realm.

To celebrate my success, I gathered my hacker comrades for a night of revelry. We engaged in {fun_activity}, sharing tales of exploits and relishing the thrill of outsmarting the digital world.
A toast to the bug bounty life — where every vulnerability discovered is a step closer to making the internet a safer place.
"""

print(mad_libs_story)

