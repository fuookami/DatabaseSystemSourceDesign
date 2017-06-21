#pragma once

#include "Basic.h"
#include "LoaderWidget.h"
#include <QtCore/QVector>

class AddressApplication
{
public:
	static AddressApplication &getReference(void);

	~AddressApplication();

	inline bool isOpen() const { return opened; }
	void run();
	void close();

private:
	AddressApplication();

	bool loadSettingDatas();
	static QString generateLoadErrorMsg(const QString &filePath, const quint64 line, const QString &msg);
	bool connectToDatabase();

private:
	LoaderWidget *pLoader;
	// main window
	bool opened;
	QString lastErrorMsg;

private:
	static QVector<AddressApp::MobileMac> mobileMacs;
	static QVector<AddressApp::TelephoneMac> telephoneMacs;
	static AddressApp::Setting setting;

	static const QString MobileMacFilePath;
	static const QString TelephoneMacFilePath;
	static const QString SettingFilePath;
	static const QString DBName;
};