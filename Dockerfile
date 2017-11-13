FROM mottosso/maya:2016sp1

RUN wget https://bootstrap.pypa.io/get-pip.py && \
	mayapy get-pip.py && \
	mayapy -m pip install \
		nose \
		nose-exclude \
		coverage \
		sphinx \
		six \
		sphinxcontrib-napoleon \
		python-coveralls

# Support building of Maya plug-ins
RUN yum groupinstall -y 'Development Tools' && \
	yum install -y scons

RUN git clone https://github.com/autodesk-adn/Maya-devkit.git /devkit && \
	rm -rf /usr/autodesk/maya/devkit \
		   /usr/autodesk/maya/mkspecs \
		   /usr/autodesk/maya/include && \
	ln -s /devkit/linux/devkit /usr/autodesk/maya/devkit && \
	ln -s /devkit/linux/mkspecs /usr/autodesk/maya/mkspecs && \
	ln -s /devkit/linux/include /usr/autodesk/maya/include

# Avoid creation of auxilliary files
ENV PYTHONDONTWRITEBYTECODE=1

WORKDIR /workspace

ENTRYPOINT \
	scons no-cache=1 with-maya=2016 with-mayadevkit=/usr/autodesk/maya/devkit && \
	mayapy -u run_tests.py
