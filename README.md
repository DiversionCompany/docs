# Diversion documentation

This is our user-facing documentation site, powered by `mintlify`. Be sure to check out [Mintlify's documentation](https://mintlify.com/docs/quickstart).

## Development

Working on a documentation site invites using very long-lived feature branches, which will result in bad merges conflicts.

We'll be avoiding that by practicing `trunk based development` with `dark releases` - we'll all be working on the `main` branch, constantly pushing our changes to avoid merge conflicts, but we will also be hiding our uncompleted work. Essentially, we'll be decoupling deployment from release.

Read more at [Dark release](#dark-release) below.

### Running locally

To run this site locally, make sure you have the [Mintlify CLI](https://www.npmjs.com/package/mintlify) installed. Run the following command:
```bash
npm i -g mintlify
```

And then:
```bash
npm run dev
```

The site should run on http://localhost:3000.

### Adding pages

To add a new page, create a new `.mdx` file with a `title` and a `description`. The project's folder structure represents the site's URL structure.

### Dark release
Creating an `.mdx` file also creates a page in the website, but doesn't add it to the navigation bar. This means that you can access your page directly by typing in its URL explicitly. The URL will be determined by the project's folder structure. For example, the file `./basic/create-repo.mdx` will be under `[base url]/basic/create-repo`.

This will allow us to do two things:
1. Easily share the documentation with each other to get feedback before making it public.
2. Avoid merge conflicts, especially in the `mint.json` file which configures not only the navigation, but the entire site.

### Releasing

Once you're happy with your new page, add it to the `mint.json` file under `navigation`. This will tell `mintlify` to add the page to the navigation sidebar.

Then, just push your changes. The website updates automatically after pushing.