if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Wizan05/aftb.git /aftb
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /aftb
fi
cd /aftb
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
