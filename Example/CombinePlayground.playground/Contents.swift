import Combine

let subject = PassthroughSubject<Int, Never>()

let publisher = subject.eraseToAnyPublisher()

var set = Set<AnyCancellable>()

publisher.sink { _ in
    print("First completion received")
} receiveValue: { val in
    print("First \(val) received")
}

publisher.sink { _ in
    print("Second completion received")
} receiveValue: { val in
    print("Second \(val) received")
}



subject.send(1)
subject.send(2)

subject.send(completion: .finished)

publisher.sink { _ in
    print("Third completion received")
} receiveValue: { val in
    print("Third \(val) received")
}

subject.send(3)

//subject.send(completion: .finished)
