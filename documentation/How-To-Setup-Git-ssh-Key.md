# Git SSH

[Source](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

## Generate a new SSH Key

- Open a terminal and past command:

```
ssh-keygen -t ed25519 -C "TODO:-Fill-in-email" -f ~/.ssh/id_ed25519_github
```

- Press enter (3 times) to bypass the directory and passphrase inputs

## Adding your SSH key to the ssh-agent

- Start the ssh-agent in the background

```
eval "$(ssh-agent -s)"
```

- Add your SSH private key to the ssh-agent.

```
ssh-add ~/.ssh/id_ed25519_github
```

## Add SSH key to your GitHub account

- Show the SSH key info

```
cat ~/.ssh/id_ed25519_github.pub
```

- Select and copy the contents of the `id_ed25519_github.pub` file displayed in the terminal to your clipboard

- In the upper-right corner of any page on GitHub, click your profile photo, then click  **Settings**.
- In the "Access" section of the sidebar, click  **SSH and GPG keys**.
- Click **New SSH key** or **Add SSH key**.
- In the "Title" field, add a descriptive label for the new key. For example, if you're using a personal laptop, you might call this key "Personal laptop".
- Select the type of key, either authentication or signing.
- In the "Key" field, paste your public key.
- Click **Add SSH key**.

Note: The reason for the `_github` suffix on the filename is to allow using ssh keys for both GitHub and GitLab from the same system.