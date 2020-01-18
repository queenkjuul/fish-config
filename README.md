# fish-config

As I am making my first foray into the land of development, I have been setting up a couple servers for myself. So far, they've all been Ubuntu Server DigitalOcean droplets. I have been using Ubuntu off-and-on for almost 15 years, so I tend to stick with it for everything I do outside of Windows. I've tried other distros, and been intrigued, but always found that using the biggest most popular distro just made life easier for someone who's entirely self-taught and reliant on documentation and forums to figure anything out. 

When I can't use Ubuntu (such as when I'm at work using macOS or when I'm on my main destkop rig at home on win10) I will do my best to recreate my familiar Ubuntu setup--which is running fish, with pretty colors and a friendly prompt. I have been lucky that my current job has allowed me to set up fish to my liking, and I am using msys2 at home on win10 to get me as much Linuxy feel without going through WSL (which, like, I just am not fully understanding the appeal of, yet)

Anyway, the point here being that having set up a whopping 2 VPS for myself now, I find that the more 'silly' stuff that I love about using UNIX-like setups is kind of tiresome to set up every time I reinstall Windows or spin up a new VPS or have to wipe my work machine or something. 

And like any Real Programmer^TM like I totally am, a repetitive task such as this needs to be implemented with a script, rather than having me do it all over again. 

So this started off as the briliant thought of "OK so I should totally have my fish_config stuff on github so I can just download it to wherever I am instead of manually transferring it from one computer to another" and then turned into "well yeah so what if I just had a script I could run from github that did all of the setup for me" and, so, here I am writing about it. 

