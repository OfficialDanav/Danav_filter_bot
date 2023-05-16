if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/OfficialDanav/Danav_filter_bot.git /Danav_filter_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Danav_filter_bot
fi
cd /Danav_filter_bot
pip3 install -U -r requirements.txt
echo "Starting Danav_filter_bot...."
python3 bot.py
