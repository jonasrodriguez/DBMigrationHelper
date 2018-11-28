#include "Dashboard.h"

#include <QDebug>
#include <QThread>

Dashboard::Dashboard(QObject *parent, std::shared_ptr<BusinessLogic> &business_logic)
    : QObject(parent), business_logic_(business_logic) {

    QObject::connect(business_logic_.get(), &BusinessLogic::SendTimeoutInfo,
                     this, &Dashboard::ProcesTimerTimeout);
}

void Dashboard::ProcesTimerTimeout() {
    qDebug() << "Dashboard::onTimeout get called from?: "<<QThread::currentThreadId();
}
