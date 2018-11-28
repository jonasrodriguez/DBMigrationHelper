#include "BusinessLogic.h"

#include <QThread>
#include <QDebug>

void BusinessLogic::onTimeout()
{
    qDebug() << "BusinessLogic::onTimeout get called from?: "<<QThread::currentThreadId();
    emit SendTimeoutInfo();
}
