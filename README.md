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
