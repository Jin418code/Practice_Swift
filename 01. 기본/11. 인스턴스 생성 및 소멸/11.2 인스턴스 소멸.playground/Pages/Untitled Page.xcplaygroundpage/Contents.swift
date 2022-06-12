class SomeClass {
    deinit {
        print("Instance will be deallocted immediately")
    }
}

var instance: SomeClass? = SomeClass()
instance = nil
// Instance will be deallocted immediately
