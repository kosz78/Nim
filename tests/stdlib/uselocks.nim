import locks

type MyType* [T] = object
  lock: Lock

proc createMyType*[T]: MyType[T] =
  initLock(result.lock)

proc use* (m: var MyType): int =
  withLock m.lock:
    result = 3
