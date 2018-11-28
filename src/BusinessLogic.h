#pragma once

#include <QObject>

class BusinessLogic : public QObject
{
    Q_OBJECT

 signals:
    void SendTimeoutInfo();

 public slots:
    void onTimeout();

};
