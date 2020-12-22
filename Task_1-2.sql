CREATE TABLE ����������(
	���_�����������  INTEGER NOT NULL,
	ֳ�� MONEY NOT NULL,
	����� CHAR(225) NOT NULL,
	��� CHAR(20) NOT NULL,
	�����_䳿 DATE NOT NULL,
	�����_��������� CHAR(225) NOT NULL,
	��������� VARCHAR NOT NULL,
	PRIMARY KEY (���_����������� )
);
CREATE TABLE ���������(
	���_��������  INTEGER NOT NULL,
	��� CHAR(15) NOT NULL,
	������� CHAR(30) NOT NULL,
	�����_�������� INTEGER,
	������ CHAR(15) NOT NULL,
	̳���_���������� CHAR(20) NOT NULL,
	������ CHAR(30) NOT NULL,
	�����_������� CHAR(6),
	����������_������ VARCHAR(30) NOT NULL,
	����_���������� DATE NOT NULL,
	PRIMARY KEY (���_�������� )
);
CREATE TABLE �볺��(
	���_�볺���   INTEGER NOT NULL,
	��� CHAR(15) NOT NULL,
	������� CHAR(30) NOT NULL,
	̳���_���������� CHAR(20) NOT NULL,
	������ CHAR(30) NOT NULL,
	�����_������� CHAR(6),
	��������_������ INTEGER NOT NULL,
	�����_�������� INTEGER,
	����������_������ VARCHAR(30) NOT NULL,
	����_���������� DATE NOT NULL,
	PRIMARY KEY (���_�볺���  )
); 
CREATE TABLE ������(
	���_������ INTEGER NOT NULL,
	����� CHAR(20) NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(30) NOT NULL,
	�����_������� CHAR(6),
	����������_������ VARCHAR(30) NOT NULL,
	����_��������� DATE NOT NULL,
	�����_�������� INTEGER,
	���_������ TIME NOT NULL,
	PRIMARY KEY (���_������),
);

CREATE TABLE Գ���_��������(
	���_����� INTEGER NOT NULL,
	����� CHAR(30) NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(30) NOT NULL,
	�����_������� CHAR(6),
	�����_�������� INTEGER,
	����������_������ VARCHAR(30) NOT NULL,
	PRIMARY KEY (���_�����),
);
CREATE TABLE ������(
	���_��������  INTEGER NOT NULL,
       ���_������ INTEGER NOT NULL,
	���_����� INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	PRIMARY KEY (���_�������� ),
	CONSTRAINT ��������
	FOREIGN KEY (���_������  )
	REFERENCES ������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT �������_��������
	FOREIGN KEY (���_�����  )
	REFERENCES Գ���_��������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
);
CREATE TABLE ���(
	���_����  INTEGER NOT NULL,
          ���_������ INTEGER NOT NULL,
	���_�������� INTEGER NOT NULL,
	���_�볺��� INTEGER NOT NULL,
	���_����������� INTEGER NOT NULL,
	����_������� DATE NOT NULL,
	���_������� TIME NOT NULL,
	PRIMARY KEY (���_���� ),
	CONSTRAINT ��_������
	FOREIGN KEY (���_������  )
	REFERENCES ������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT �����������
	FOREIGN KEY (���_��������  )
	REFERENCES ���������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ���볺��
	FOREIGN KEY (���_�볺���  )
	REFERENCES �볺��
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_����������
	FOREIGN KEY (���_�����������  )
	REFERENCES ����������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
);
