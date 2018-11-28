#include <QObject>
#include <memory>
#include "BusinessLogic.h"

class Dashboard : public QObject {
  Q_OBJECT

 public:
    Dashboard(QObject *parent, std::shared_ptr<BusinessLogic> &business_logic);

 public slots:
    void ProcesTimerTimeout();

 private:
    std::shared_ptr<BusinessLogic> business_logic_;
};
