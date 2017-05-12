# hackerseven

automate trying for hacker_one bounties

technologies to be used
    python
        sellenium web drivers
        lxml scraper
            Rotate IPs of bots (via TOR browser?)
            Set User-Agent
            Redis (to cache pages already viewed and not double requests)
        orm (SQLObject or Orator)
    rails (as endpoint to be hit by logged attacks and breach)
        endpoints to be hit by scrapers (to log an attack), and for breach
        heroku
        aws

major phases
    scrape HackerOne and add urls to db
    iterate through db urls and kick off sellenium attack bots 🤖
    iterate through db to find successful attacks (breaches), notify me so i can contact hackerone
    bonus: automate contacting HackerOne about successes


what would the script need to accomplish?
    *time estimates based on 3hrs/day overall: about 2 months
    0) setup remote rails server that script tag can hit, and database stuff (1 week)
    1) scrape HackerOne for targets (1 week)
        - go to Directories
        - Ensure they reward xss or whatevv type of attack
        - get target url
    2) make bot to make accounts on targets (1.5 weeks)
        - email validation?
        - go to credentials
    3) search for input fields, input the script tag, and enter (2 weeks)
            - continually click through links, looking for more input fields
            - need blacklisted links like "checkout" or "order" so i dont spend money
            - need to make sure i dont get stuck infinitely going through a page
            - need to make sure i dont get stuck clicking on categories forever on a site like groupon
            - ideally, i want a form. maybe thats what i should look for?
                - also, maybe only try inputs with unique css ids/classes to prevent from infinitely going through
            - need defaults for certain form fields (phone number, email, ect)
                - automate email verification?
            - maybe instead of trying EVERY input field, i just try certain types?
                    - like comment fields, review field, anything where users can easily post content to site
            - after each script is placed/entered, make call to rails api to log attempt
    4) check success (2 days)
            - find matching attack_id and label successes
            - as scripts get pinged (meaning it was a successful attack), log the captured_info and attack_id to db
