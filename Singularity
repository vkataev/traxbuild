Bootstrap: docker
From: ubuntu:latest
#From: tensorflow/tensorflow:latest

%runscript
 
    exec /venv/bin/python "$@"

%post

    export LC_ALL=C
    export PATH=/bin:/sbin:/usr/bin:/usr/sbin:$PATH

    echo "S: Update and install pip + virtualenv packages"
    apt update -y
    apt install -y python3-dev python3-pip
    pip3 install -U virtualenv

    echo "S: Create a virtual environment"
    virtualenv --system-site-packages -p python3 /venv

#    echo "S: Enter virtualenv"
#    source ./venv/bin/activate

    echo "S: Upgrade pip"
    /venv/bin/pip install --upgrade pip

    echo "S: Install tensorflow package"
    /venv/bin/pip install --upgrade tensorflow

    echo "S: Verify tensorflow"
    /venv/bin/python -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([100, 100])))"

    echo "S: Install trax"
    /venv/bin/pip install --upgrade trax

%post

    echo "S: Install matplotlib"
    /venv/bin/pip install --upgrade matplotlib

#   echo "S: Install dev env"
#   apt-get install -y build-essential libssl-dev libffi-dev python3-dev python3-pip
#   echo "S: Install dependencies"
#   pip3 install -U pip six numpy wheel setuptools mock 'future>=0.17.1'
#   pip3 install keras_applications --no-deps
#   pip3 install keras_preprocessing --no-deps
#   echo "S: Install tensorflow"
#   pip3 install tensorflow:latest
#   echo "S: Install tensorflow"

%labels

AUTHOR Vadim Kataev
