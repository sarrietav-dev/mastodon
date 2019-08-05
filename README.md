# mastodon.technology [![Docker Repository on Quay](https://quay.io/repository/ashfurrow/mastodon/status "Docker Repository on Quay")](https://quay.io/repository/ashfurrow/mastodon) <a href="https://www.statuscake.com" title="Website Uptime Monitoring"><img src="https://app.statuscake.com/button/index.php?Track=GPxZc1jKYG&Days=1&Design=7" /></a>

This is my fork of [Mastodon](https://github.com/tootsuite/mastodon), a
federated social network. It's hosted on DigitalOcean [(referral link)](https://m.do.co/c/4a83a8a7aedf)
at [mastodon.technology](https://mastodon.technology), paid for by [my
wonderful Patreon sponsors](https://www.patreon.com/user?u=3581610).

The instance adopts the [TootCat Code of Conduct](https://github.com/TootCat/mastodon/wiki/Code-of-Conduct/41432d2c42ba9be52f2710b8b5c7b77f41271c0b).
Reports are dealt with regularly.

We block the [instances listed here](https://github.com/tootcafe/blocked-instances)
for the reasons stated there. [Contact me](mailto:ash@ashfurrow.com) if you
think your instance is blocked incorrectly.

Colour scheme available [here](http://www.colourlovers.com/palette/298957/Paris_mon_Amour).

## Moderation

Our moderators are:

- [Me](https://mastodon.technology/@ashfurrow)
- [Fuzzface](https://mastodon.technology/@fuzzface)
- [Brian!](https://mastodon.technology/@bclindner)
- [Daniel Glus](https://mastodon.technology/@danielhglus)

When we get a report, we evaluate the problematic user or post against our [Code of Conduct](https://mastodon.technology/about/more). Mods make a call, discussing with each other to come to a consensus when necessary. Rather than prescribe a comprehensice moderation strategy, what follows is a list of scenarios and actions we take. In any case, we privately contact reporting users and let them know what actions we took (only if they're a local user; remote reports are anonymous).

### A user is excessively promoting themselves

Advertising and excessibe promotion is prohibited by our CoC. 

- If it's a spam bot, we will suspend them.
- If it's a company/conference/something else that is promoting themselves appropriately, but excessively, we talk to them to make sure they follow the CoC. They only get one warning, though, before we silence them

### A user is posting prohibited context

For example: pornography, untagged NSFW content, racism, impersonation, doxing etc.

- For clearly malicious users, we suspend them.
- For users with good past behaviour or for borderline content, we silence them until we can discuss next steps with them.

## Blocked Instances

Here are the instances that m.t has blocked. This list is not meant to be authoritative for other administrators. We reserve the right to silence or suspend any instance for any reason. If you are an administrator of an instance on this list, feel that you shouldn't be blocked, and have [checked our Code of Conduct](https://mastodon.technology/about/more), you can [contact Ash Furrow through email](mailto:ash@ashfurrow.com) to discuss getting unblocked.

<details><summary>List of silenced and suspended instances</summary>

| Instance URL | Severity | Notes |
|---|---|---|
| rainbowdash.net | Silenced |  |
| shitposter.club | Silenced |  |
| freezepeach.xyz | Silenced |  |
| social.headsca.la | Silenced |  |
| woofer.alfter.us | Silenced |  |
| social.au2pb.net | Silenced |  |
| gorf.club | Silenced |  |
| sealion.club | Silenced |  |
| gs.smuglo.li | Silenced |  |
| unsafe.space | Silenced |  |
| wrongthink.net | Silenced |  |
| noagendasocial.com |  |   |
| porntoot.com | Suspended |  |
| pawoo.net | Suspended |  |
| ediot.social | Silenced  |  |
| admins.town | Silenced |  |
| social.targaryen.house | Silenced |  |
| sunshinegardens.org | Silenced | Rejecting media files |
| preteengirls.biz | Suspended |  |
| ika.moe | Silenced |  |
| anitwitter.moe | Silenced |  |
| baraag.net | Suspended |  |
| social.allthefallen.ninja | Suspended |  |
| social.homunyan.com | Silenced |  |
| social.hidamari.blue | Silenced |  |
| libertarianism.club | Silenced |  |
| toot.love | Silenced |  |
| pl.smuglo.li | Suspended |  |
| pleroma.cucked.me | Suspended |  |
| voluntaryism.club | Silenced |  |
| social.heldscal.la | Silenced |  |
| gay.nsfw.onl | Suspended |  |
| switter.at | Silenced |  |
| pleroma.rareome.ga | Suspended |  |
| wxw.moe | Silenced |  |
| kinkyelephant.com | Silenced |  |
| thechad.zone | Suspended |  |
| bofa.lol | Suspended |  |
| raki.social | Suspended |  |
| albin.social | Suspended |  |
| newjack.city | Suspended |  |
| artritelacy.jp | Suspended |  |
| gameliberty.club | Silenced |  |
| humblr.social | Suspended |  |
| sinblr.com | Silenced | Rejecting media files |
| feminism.lgbt | Silenced | Rejecting media files |
| rubber.social | Silenced | Rejecting media files |
| gasthe.lgbt | Suspended |  |
| neckbeard.xyz | Suspended |  |
| freespeech.firedragonstudios.com | Suspended |  |
| anime.website | Suspended |  |
| nomoresha.me | Suspended |  |
| social.quodverum.com | Suspended |  |
| xn--6r8h.tk | Suspended |  |
| freespeechextremist.com | Suspended |  |
| librem.one | Silenced |  |
| relay.selfhosting.rocks | Suspended |  |
| gab.com | Suspended |  |
| gab.ai | Suspended |  |
| gab.io | Suspended |  |
| develop.gab.com | Suspended |  |
| mu.zaitcev.nu | Suspended |  |
| weedis.life | Suspended |  |
| kiwifarms.net | Suspended |  |
| kiwifarms.is | Suspended |  |
| kiwifarms.cc | Suspended |  |
| gabfed.com | Suspended |  |
| speakfree.world | Suspended |  |
| spinster.xyz | Suspended | Gab instance |
| liberdon.com | Suspended | |

</details>

## Handling the Bus Factor

In an effort to reduce the [bus factor](https://en.wikipedia.org/wiki/Bus_factor) and make mastodon.technology resilient to the single point of failure of its admin, me, we have the following emergency protocol in place. It's not perfect, and it's not final, but we will refine it over time.

If the worst happens to me, eventually DigitalOcean/AWS/Mailgun/Hover billing failures will cause the instance to collapse. The plan mitigates the sudden loss of the instance and user data; its goal is to give users the chance to export their data and migrate to another instance.

In the event that I disappear and am not contactable for over a week, our mods will contact a designated person who knows me in the real world and who can confirm if I'm permanently unable to administer the instance. After 7 days of being unable to contact me, they can reach out to this person (whose identity is a secret for security reasons) and confirm the situation.

If I'm confirmed to no longer be able to administer mastodon.technology, the instance mods have the following responsibility:

- Log into the [@announcements](https://mastodon.technology/@announcements) account and alert users of imminent instance closure and instruct them to export their data and migrate to another instance.
- Continue moderating the instance as long as its accessible.

## Upgrading

Fetch upstream, merge with tag, test locally if necessary, push to git with tag to test on staging.

```sh
git checkout master && git pull origin master
git fetch upstream
git merge $TAGNAME
# Resolve any merge conflicts, then test locally if it feels necessary.
git commit -a # Use auto-generated commit message.
# Copy commit hash and update `MASTO_HAS` in Dockerfile.
git commit -am "Releasing Docker image for $TAGNAME."
git tag $RELEASE_TAG_NAME
git push origin $RELEASE_TAG_NAME
# Verify release is building on Quay.io. Take a break, it'll be a while.
```

## Deploying

Deploying **must always** be done to the staging server first.

New tags and branches on the repo are [built on Quay.io](https://quay.io/repository/ashfurrow/mastodon). Once built, edit `docker-compose.yml`. The Docker tags are the same as the git tags, so the compose file should be changed to point to that new tag name.

There's something I don't yet understand with the relationship between the `/public` folder in the _source repo_ and the folder in the Docker container, which `docker-compose.yml` maps to be the same folder. That's okay, I just don't get it yet, so when deploying, check out the same source that the Docker image was built from, and try to figure it out.

```sh
# ssh'd into a server in the `mastodon` folder.
git pull
git stash # If necessary for local docker-compose.yml changes.
git checkout $RELEASE_TAG_NAME
git stash pop
vim docker-compose.yml # edit `image:` values to point to $RELEASE_TAG_NAME.
docker-compose up -d
# Test, verify things work (see preflight checklist).
```

## Preflight Checklist

Before deploying to production, test on staging. Here's a list:

- [ ] Test that you can toot.
- [ ] Test that you can upload media with a toot.

If you ever run into anything that breaks on production, after fixing it make sure to add it to this list.
