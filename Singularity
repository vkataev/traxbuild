Bootstrap: docker
From: ubuntu:latest
#From: tensorflow/tensorflow:latest

%runscript
 
    exec python "$@"

%post

    echo "S: Update and install pip + virtualenv packages"
    apt update
    apt install python3-dev python3-pip
    pip3 install -U virtualenv

    echo "S: Create a virtual environment"
    virtualenv --system-site-packages -p python3 ./venv

    echo "S: Enter virtualenv"
    source ./venv/bin/activate
    pip install --upgrade pip

    echo "S: Install tensorflow package"
    pip install --upgrade tensorflow

    echo "S: Verify tensorflow"
    python -c "import tensorflow as tf;print(tf.reduce_sum(tf.random.normal([100, 100])))"

    echo "S: Install trax"
    pip install --upgrade trax

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
