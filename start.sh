if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tysonmovierulz/TYSON-AUTO-FILTER-BOT-EXTRA-FEATURES.git /DARK
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ajax
fi
cd /Ajax
pip3 install -U -r requirements.txt
echo "Starting 𝐃𝐀𝐑𝐊....🔥"
python3 bot.py
