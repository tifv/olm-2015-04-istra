from jeolm.driver.training import Driver as TrainingDriver

class Driver(TrainingDriver):
    def select_outname(self, target, metarecord, date=None):
        return super().select_outname(target, metarecord, date=None)

